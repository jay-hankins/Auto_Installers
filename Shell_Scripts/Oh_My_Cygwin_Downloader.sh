wget --no-check-certificate https://raw.github.com/haithembelhaj/oh-my-cygwin/master/oh-my-cygwin.sh -O - | sh

compaudit | xargs chown -R :Users
compaudit | xargs chmod g-w
rm ~/.zcompdump*