#!/bin/bash

gitacp() {
    if [ "$#" -eq 0 ]; then
    message="Update changes"
    else
        message="$1"
    fi
    git add .
    git commit -m "$message" || return
    echo "commit message: $message"
    git push
}

gitacp "$@"

