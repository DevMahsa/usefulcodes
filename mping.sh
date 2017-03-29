#When you want multiple ip address via ping, seeing the output you should run $ cat /path/to/log.txt. 
#write your ip addresses in a file just like list.txt 
#created by Mahsa Golchian
#!/bin/bash
# Program name: mping.sh
date
cat /path/to/list.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up" 
    else
    echo "node $output is down"
    fi
done
