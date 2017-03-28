#find files with specific extension in a dir 
#created by Mahsa Golchian
#chmod +x search.sh or 
#!/bin/bash
counter=1
for i in *.webm; do
  echo "$i"
  let counter=counter+1
done
