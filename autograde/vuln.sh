#!/bin/bash
/usr/sbin/sshd -D &
rm /tmp/pwned

for ITERATION in {1..100}
do
sleep 1
if test -f "/tmp/pwned"
then
    exit 0
fi

done
exit 1