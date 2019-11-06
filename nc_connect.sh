#!/bin/bash
#echo $1 $2 1>&2

H1=$(bash -c "read t1; echo \"\$t1\"")
echo $H1 > h1.log

echo -en "SSH-2.0-OpenSSH_8.0p1 Ubuntu-6build1\r\n"

rm cookie;
python cookie_extract.py

(tee i.log | (python template_request.py; cat -) | tee i2.log | nc $1 $2 | (bash -c "read"; cat -) | tee o.log )



