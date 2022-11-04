#!/bin/bash
user=siou
ip=220.133.178.104



set timeout 600
cd Downloads/code/workApp
git status

read -p "選擇要加入的檔案" files
git add $files

read -p "提交文字" commit
git commit -m $commit

git push origin master

cd
expect << EOF
set timeout 600
spawn ssh $user@$ip
expect {
    "*\$*" {
        send "cd workApplication\r"
        send "git status\r"
        send "git pull origin master\r"
        send "cd frontend_web\r"
        send "npm run build\r"
        send "cd ..\r"
        send "docker compose kill\r"
        send "docker system prune --all --force\r"
        send "docker compose up -d --build\r"
        send "docker container ls\r"
        send "docker compose up -d\r"
    }
}
expect eof
EOF