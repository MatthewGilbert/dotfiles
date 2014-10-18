export PATH=/home/matthew/anaconda/bin:$PATH
export PATH=/home/matthew/mongo/bin:$PATH
export PATH=/home/matthew/Applications/sbt/bin:$PATH
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias q='rlwrap /home/matthew/q/l32/q'

# Lines added by the Vim-R-plugin command :RpluginConfig (2014-Oct-17 20:02):
# Change the TERM environment variable (to get 256 colors) and make Vim
# connecting to X Server even if running in a terminal emulator (to get
# dynamic update of syntax highlight and Object Browser):
if [ "$TERM" = "xterm" ] || [ "$TERM" = "xterm-256color" ]
then
    export TERM=xterm-256color
    export HAS_256_COLORS=yes
fi
if [ "$TERM" = "screen" ] && [ "$HAS_256_COLORS" = "yes" ]
then
    export TERM=screen-256color
fi
if [ "x$DISPLAY" != "x" ]
then
    alias vim="vim --servername VIM"
    if [ "$HAS_256_COLORS" = "yes" ]
    then
        function tvim(){ tmux new-session "TERM=screen-256color vim --servername VIM $@" ; }
    else
        function tvim(){ tmux new-session "vim --servername VIM $@" ; }
    fi
else
    if [ "$HAS_256_COLORS" = "yes" ]
    then
        function tvim(){ tmux new-session "TERM=screen-256color vim $@" ; }
    else
        function tvim(){ tmux new-session "vim $@" ; }
    fi
fi