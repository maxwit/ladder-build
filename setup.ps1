choco install -y git

if (![System.IO.File]::Exists("~/.gitconfig")) {
    $fullname = $env:username
    $username = $fullname

    git config --global user.name "$fullname"
    git config --global user.email $username@gmail.com
}


# editors
# choco install -y Atom
# choco install -y VisualStudioCode
choco install -y vscode
# choco install -y SublimeText3


# c/c++
# recommend install visual studio first!
choco install -y llvm
choco install -y cmake
# choco install -y conan
# choco install -y clion-ide


# go
choco install -y golang
# gogland


# java
choco install -y jdk8
choco install -y groovy
# choco install -y scala
choco install -y kotlinc

choco install -y maven
choco install -y gradle

# choco install -y intellijidea-ultimate


# javascript
# choco install -y nodejs
choco install -y nvm

# FIXME
# nvm install 6.11
# nvm install 8.6
# nvm use 8.6
# npm install -g cnpm --registry=https://registry.npm.taobao.org

# cnpm install -g react-cli
# cnpm install -g create-react-app

# choco install -y WebStorm


# php
# choco install -y php
# composer
# choco install -y phpstorm


# python
choco install -y python
# choco install -y anaconda3
# choco install -y pycharm-professional

code --install-extension ms-python.python

# ruby
# choco install -y ruby
# choco install -y RubyMine


# rust
choco install -y rust


echo
echo "Done."
echo "please exit current terminal and re-open a new one!"
echo
