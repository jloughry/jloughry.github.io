#!/bin/sh

message="commit_message.txt"

rm -f $message
touch $message

/bin/echo "Ready to commit; give me a message (it can be multiple lines); end with '.'"
/bin/echo -n "> "

read line
while [ "$line" != "." ]
do
    echo $line >> $message
    read line
done

