counter=1
for i in *.ogg; do
  new=$(printf "%03d.ogg" "$counter") #03 pad to length of 3
  mv -- "$i" "$new"
  let counter=counter+1
done
