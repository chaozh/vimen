#!bin/bash
WORKPATH=`pwd`
if [ ! -f ~/.vimrc ]; then
    cp vimrc ~/.vimrc
#ln -s $WORKPATH/.vimrc ~/.vimrc
else
    echo "vimrc already exists"
fi

if [ ! -f ~/.git-completion.sh ]; then
    cp .git-completion.sh ~/
    cp .git-prompt.sh ~/
else
    echo "git scripts already exists"
fi
#enable git status in bash
if ! grep .git-completion ~/.bashrc > /dev/null 2>&1; then
cat >> ~/.bashrc <<EOF
source ~/.git-completion.sh
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose git svn"
PS1='\[\033[1;31m\]\u@\h \[\033[1;34m\]\W\[\033[1;31m\]$(__git_ps1 " (%s)")\[\033[1;35m\] -> \[\033[0m\]'
EOF
else
    echo "git path already sets!"
fi

#git related
cd ~/.vim && git submodule update --init 
vim -c ':BundleInstall'
