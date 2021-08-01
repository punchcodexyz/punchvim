# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/.local/bin
export PS1='\n\[\033[01;32m\]\u@\H\[\033[00m\] [ \[\033[01;45m\]\w\[\033[00m\] ] <`date +"%F(%a) %H:%M"`>\n\! \$ '
export EDITOR=vim


alias cvs2='export CVSROOT=":pserver:$LOGNAME@ddcvs.dasannetworks.com:/home/ddcvs/ddSource"'


alias en='export LANG=en_US.UTF-8'


set -o vi


hname=`hostname`
echo ""
echo ""
echo "<< $hname >>"
echo ""
echo ""
echo -e "Kernel Details: " `uname -smr`
echo -e "`bash --version`"
echo ""
echo -ne "Uptime: "; uptime
echo -ne "Server time : "; date
echo ""
lastlog | grep $LOGNAME | awk {'print "Last login from : "$3; print "Last Login Date & Time: ",$4,$5,$6,$7,$8,$9;}'
echo ""
df -h

