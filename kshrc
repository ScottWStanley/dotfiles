# ANSI aliases                  LSCOLORS equivalent 
BLACK='\e[0;30m'                # a
RED='\e[0;31m'                  # b
GREEN='\e[0;32m'                # c
BROWN='\e[0;33m'                # d
BLUE='\e[0;34m'                 # e
PURPLE='\e[0;35m'               # f
CYAN='\e[0;36m'                 # g
LIGHT_GREY='\e[0;37m'           # h
DARK_GREY='\e[1;30m'            # A
LIGHT_RED='\e[1;31m'            # B
LIGHT_GREEN='\e[1;32m'          # C
YELLOW='\e[1;33m'               # D
LIGHT_BLUE='\e[1;34m'           # E
PINK='\e[1;35m'                 # F
LIGHT_CYAN='\e[1;36m'           # G
WHITE='\e[1;37m'                # H
PLAIN='\e[1;0m'                 # x

# The order of the attributes are as follows:
#
#       1.   directory
#       2.   symbolic link
#       3.   socket
#       4.   pipe
#       5.   executable
#       6.   block special
#       7.   character special
#       8.   executable with setuid bit set
#       9.   executable with setgid bit set
#       10.  directory writable to others, with sticky bit
#       11.  directory writable to others, without sticky bit
#
# The default is "exfxcxdxbxegedabagacad", i.e. blue foreground and default background for regular directories, black foreground and red background for setuid executables, etc.

CLICOLOR="YES"
LSCOLORS="exfxcxdxbxegedabagacad"

THIS_BOX=$(hostname -s)

if [ $THIS_BOX == 'crocodile' ] || [ $THIS_BOX == 'law' ]; then
    print $THIS_BOX
    PS1='['$RED`hostname -s`' '$YELLOW`logname`' '$RED'\w'$PLAIN']\n\$ '
    EDITOR=/usr/bin/vi
    PKG_PATH=/mnt/cdrom/`uname -r`/packages/`machine -a`/:http://ftp.openbsd.org/pub/OpenBSD/`uname -r`/packages/`machine -a`/
    alias off="echo 'You are on a remote box!'"
    alias reboot="echo 'You are on a remote box!'"

  elif
    [ $THIS_BOX == 'hancock' ]; then
  PS1="[`hostname -s` `logname` \${PWD##*/}]\$ "

else
  PS1='['$BROWN`hostname -s`' '$BLUE`logname`' '$BROWN'\w'$PLAIN']\n\$ '
    EDITOR=/usr/local/bin/vim
    PKG_PATH=/mnt/cdrom/`uname -r`/packages/`machine -a`/:http://ftp.openbsd.org/pub/OpenBSD/`uname -r`/packages/`machine -a`/
    alias croc="ssh scott@crocodile"
    alias kuro="ssh scott@kurohige"
    alias law="ssh scott@law"
    alias off="sudo /sbin/shutdown -hp now"
    alias vi='vim'
fi

# ENVIRONMENT
CALENDAR_DIR=$HOME/.calendar
GPG_TTY=`tty`
GREP_COLOR="1;33"
HISTCONTROL="ignoredups" # Don't put duplicate lines in the history.
HISTIGNORE="&:ls:ls *:[bf]g:exit"
HISTFILE=~/.sh_history
HOME=/home/scott
INPUTRC=~/.inputrc
LOCATE_PATH=$HOME/.locate.db
LYNX_CFG=~/.lynx.cfg
LYNX_LSS=$HOME/.lynx.lss
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:
PAGER=/usr/bin/less
PROMPT_COMMAND="history -a"
RELEASEPATH=/usr/rel
TERM="screen-256color"
VISUAL=/usr/bin/vi

export \
CALENDAR_DIR CLICOLOR EDITOR GPG_TTY GREP_COLOR HISTCONTROL HISTIGNORE HOME INPUTRC \
LOCATE_PATH LSCOLORS LYNX_CFG LYNX_LSS PATH PAGER PKG_PATH PROMPT_COMMAND PS1 RELEASEPATH TERM VISUAL

set -o vi

# Aliases - to override the alias instruction use \
# i.e. \rm will call the real rm not the alias.
alias cl='clear'
#alias shutdown='unison -batch;sudo shutdown -hp now'
alias mkdir='mkdir -p'
alias h='history'
alias X='startx'
alias pingu='ping google.com'
alias du='du -sh'
alias cdrom='disc_load -m /mnt/cdrom/ [ENTER]'
alias ucdrom='disc_load -u /mnt/cdrom/ [ENTER]'   
alias week='calendar -A 7 | sed "s/^.*--- //"'
alias today='calendar -A 0 | sed "s/^.*--- //"; /usr/games/pom'
alias df="df -h"
alias ping="ping -c 3"
alias ..="cd .." 
alias ls='colorls -1FG'
alias ll="colorls -lh"                       # long list
alias la='colorls -AFG'
alias lm="la | more"
alias lr="ls -R"                        # recursive ls
alias lt="ll -rt"                       # sort by date

# Dvorak/qwerty 
alias asdf="setxkbmap dvorak; echo 'Dvorak'"
#alias asdf="setxkbmap -layout us -variant dvp; echo 'Dvorak'"
alias aoeu="setxkbmap us; echo 'QWERTY'"

alias grep='grep -I' # ignore binary files
alias cal="cal -wym"
alias youtube-dl='youtube-dl -o "%(title)s.%(ext)s"'
alias head="sed 11q"
alias ms2pdf="libreoffice --headless --invisible --convert-to pdf"
#alias xombrero="xombrero -St"
alias pkg_find='pkg_info -Q'
alias reboot="/sbin/reboot"
alias mount='/sbin/mount'
alias mutt='env LC_ALL=en_US.UTF-8 mutt'
alias pdfcat='gs -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -s'
alias ddg='elinks duckduckgo.com'
alias 531='531 .531.conf'
alias mplayer='mplayer -vo gl:yuv=2:rectangle=2'
alias tmux="tmux -2"
#alias xev='xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }''

# Calculator Function
calc(){ awk "BEGIN{ print $* }" ;}

cd
