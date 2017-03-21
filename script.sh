a=1
for i in *.ogg; do
  new=$(printf "%03d.ogg" "$a") #03 pad to length of 3
  mv -- "$i" "$new"
  let a=a+1
done
