# whenever you want to convert multiple files in a folder into another format then you need this!
# created by Mahsa Golchian
##!/bin/sh — Execute the file using sh, the Bourne shell, or a compatible shell
#chmod 755 or chmod +x just like the #!/bin/sh at the begining of the script.
counter=1
for i in *.m4a; do
  new=$(printf "%03d.mp3" "$counter") #03 pad to length of 3
  ffmpeg -i "$i" "$new"
  let counter=counter+1
done
