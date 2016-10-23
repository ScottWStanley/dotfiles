# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

OS=`uname`
if [ "$OS" = OpenBSD ];then
    export ENV=~/.kshrc
    ulimit -c 0
fi
