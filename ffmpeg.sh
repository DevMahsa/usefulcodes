# whenever you want to convert multiple files in a folder into another format you need this!
# created by Mahsa Golchian
# 
counter=1
for i in *.m4a; do
  new=$(printf "%03d.mp3" "$counter") #03 pad to length of 3
  ffmpeg -i "$i" "$new"
  let counter=counter+1
done
