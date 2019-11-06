
ssh -vvv -o ProxyCommand="./nc_connect.sh %h %p" $1 -p $2


