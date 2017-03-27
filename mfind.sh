find . -name '*.webm' -print0 |
    while IFS= read -r -d $'\0' line; do
        echo $line
    done
