#!/bin/sh — Execute the file using sh, the Bourne shell, or a compatible shell
#chmod 755 or chmod +x just like the #!/bin/sh at the begining of the script.
counter=1
date
cat pgs.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    chromium-broswer $output        
 sleep 30
  let counter=counter+1
done
