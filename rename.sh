#This code has been used by me to rename multiples files in a folder into sequential numbers. 
#Created by Mahsa Golchian
##!/bin/sh — Execute the file using sh, the Bourne shell, or a compatible shell
#chmod 755 or chmod +x just like the #!/bin/sh at the begining of the script.
counter=1
for i in *.ogg; do
  new=$(printf "%03d.ogg" "$counter") #03 pad to length of 3
  mv -- "$i" "$new"
  let counter=counter+1
done
