#this code is creating by me to play multiple .ogg files sequentially without any trouble via clicking, since I am very lazy.
# sleep time can be changed by every single needs
# created by Mahsa Golchian 
# this code is running in mac terminal 
counter=1
for i in *.ogg; do
  open  "$i"
  sleep 120
let counter=counter+1
done
