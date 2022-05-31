#! /bin/sh
for file in $(find /user_scripts/ -type f);
do
   cat $file > $socket
done;
