# 宣告使用 /bin/bash

# 檢查可用終端
cat /etc/shells
chsh -s /bin/bash

# 下載 home brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 下載 jenkins
brew install jenkins-lts