counter=1
date
cat lst.txt |  while read output
do
    youtube-dl -x --audio-format mp3 "$output" > /dev/null
  let counter=counter+1
done
