#!/bin/bash
IFS=$(echo -en "\n\b")

function getdir(){
    local indent="$2"
    for element in "$1"/*
    do
        if [ -d "$element" ]; then
            dir_name=$(basename "$element")
            readme_file="$element/README.md"
            if [ -f "$readme_file" ]; then
                echo "${indent}- \"$dir_name\": \"$readme_file\""
                getdir "$element" "  $indent"
            else
                if [ "$dir_name" != "img" ]; then
                    echo "${indent}- \"$dir_name\":"
                    getdir "$element" "  $indent"
                fi
            fi
        elif [[ "${element##*.}" == "md" && $(basename "$element") != "README.md" ]]; then
            file_name=$(basename "$element" ".md")
            echo "${indent}- \"$file_name\": \"$element\""
        fi
    done
}

echo "nav:"
for dir in "Notebook" "Tools" "blog"
do
    echo "- $dir:"
    getdir "$dir" "  "
done
