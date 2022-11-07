#!/bin/bash

# bash_profile
echo '#HomeBrew => path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/siou/.profile
    eval "$(/opt/homebrew/bin/brew shellenv)"

#pyenv => path
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#nvm => path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#android simulator => path
export ANDROID_SDK_ROOT=/Users/siou/Library/Android/sdk
export ANDROID_HOME=/Users/siou/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/29.0


#jdk =>path
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

#jenv => path
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


#react native editor
REACT_EDITOR=atom

#go protoBuf
#export GOPATH=$HOME/go PATH=$PATH:$GOPATH/bin

# rabbit mq
export PATH=$PATH:/usr/local/sbin' > dd

# 檢查可用終端
echo "可用的終端機 => "
cat /etc/shells

read -p "請輸入密碼:" pass

# 下載 expect
sudo apt-get install expect

# 下載 home brew
expect <<EOF
spawn /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
expect "password: "
send "$pass\r"
EOF

# 下載 jenkins
brew install jenkins-lts
brew services start jenkins-lts

# 下載 nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
echo "下載node 18.4版"
nvm install 18.0.0

echo "下載node 18.0版"
nvm install 18.4.0

echo "下載node 17.0版"
nvm install 17.0.0

echo "下載node 16.0版"
nvm install 16.0.0

echo "下載node 15.14版"
nvm install 15.14.0

# 下載 pyenv
brew install pyenv
pyenv install 3.9.0
pyenv install 3.8.0

# 下載 go
brew install go

# 下載 docker
brew install --cask --appdir=/Applications docker