#This code has been used by me to find multiples files in a folder with specific extension. 
#Created by Mahsa Golchian
##!/bin/sh — Execute the file using sh
#chmod 755 or chmod +x just like the #!/bin/sh at the begining of the script.
find . -name '*.webm' -print0 |
    while IFS= read -r -d $'\0' line; do
        echo $line
    done
