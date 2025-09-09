#!/bin/bash

gitacp() {
    # Default commit message
    message="Update changes"

    # If last argument looks like a commit message (in quotes), capture it
    if [ "$#" -gt 0 ]; then
        # Last argument is commit message
        message="${!#}"
        # All but last argument are files
        files=("${@:1:$#-1}")
    else
        files=()
    fi

    if [ ${#files[@]} -eq 0 ]; then
        git add .
    else
        git add "${files[@]}"
    fi

    git commit -m "$message" || return
    echo "commit message: $message"
    git push
}

gitacp "$@"
