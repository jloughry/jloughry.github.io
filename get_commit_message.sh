#!/bin/sh

message_file="./commit_message.txt"

rm -f $message_file

echo "Ready to commit; give me a message (it can be multiple lines)"
echo -n "> "
while read commit_message
	if [ "$commit_message" == "." ] ; then break; fi
	do echo $commit_message >> $message_file
done

