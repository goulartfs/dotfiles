#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.vimrc ]]; then
    
    echo -e "${bakgrn}[installed][vim-bootstrap]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[common][vim-bootstrap] Start Install ${txtrst}";

    cp ./sh/common/vim-bootstrap/generate.vim /home/$DOTFILE_DEFAULT_USER/.vimrc;
    chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.vimrc;
    su - $DOTFILE_DEFAULT_USER -c "vim +PlugInstall +qall";

    echo -e "${bakcyn}[common][vim-bootstrap] Finish Install ${txtrst}";

fi