#this code is creating by me to play multiple .ogg files sequentially without any trouble via clicking, since I am very lazy.
# sleep time can be changed by every single needs
# created by Mahsa Golchian 
# this code is running in mac terminal 
##!/bin/sh — Execute the file using sh, the Bourne shell, or a compatible shell
#chmod 755 or chmod +x just like the #!/bin/sh at the begining of the script.
counter=1
for i in *.ogg; do
  open  "$i"
  sleep 120
let counter=counter+1
done
