#!/bin/bash
IFS=$(echo -en "\n\b")

function getdir(){
    for element in $(ls -1 "$1")
    do
        dir_or_file="$1/$element"
        counter=$(echo $dir_or_file | grep -o / | wc -l)
        let counter-=2
        if [ -d "$dir_or_file" ] && [[ "$dir_or_file" != *"img"* && "$dir_or_file" != *"/img/"* ]]; then
            printf '%0.s  ' $(seq 0 $counter) >> nav.md
            echo "- [$element]($dir_or_file/README.md)" >> nav.md
            getdir "$dir_or_file"
        else
            if [[ "$dir_or_file" != *"img"* && "${dir_or_file##*.}" == "md" && "$element" != "README.md" ]]; then
                echo $dir_or_file
                printf '%0.s  ' $(seq 0 $counter) >> nav.md
                path=$(echo $dir_or_file| sed "s/[ ]/%20/g" | sed "s/[+]/%2B/g")
                title=$(echo $element | sed "s/.md//")
                echo "- [$title]($path)" >> nav.md
            fi
        fi
    done
}

root_dir=$(ls -d ./*/)
:> nav.md
for dir in $root_dir
do
    if [ "$dir" != "." ] && [ "$dir" != "./image/" ]; then
        C1=$(echo $dir | cut -f2 -d '/')
        echo "- $C1" | cut -f2 -d '/' >> nav.md
        getdir $(echo $dir | sed 's/.$//')
    fi
done
