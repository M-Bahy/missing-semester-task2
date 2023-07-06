#!/usr/bin/env bash
i=1
c=0
while [ $i -ne 0 ] ; do
~/tmp/CustomScripts/ts.sh > ~/tmp/CustomScripts/result.txt 2>~/tmp/CustomScripts/error.txt
if [ $? -eq 0 ]; then
((c++))
else
i=0
fi
done
echo "It took $c iterations to  break the program"
echo "The output stream : $(cat ~/tmp/CustomScripts/result.txt)"
echo "The error stream : $(cat ~/tmp/CustomScripts/error.txt)"
