#find files with specific extension in a dir 
#created by Mahsa Golchian
counter=1
for i in *.webm; do
  echo "$i"
  let counter=counter+1
done
