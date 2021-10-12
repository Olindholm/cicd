#!/bin/bash

argnum_equals() {
    # If not equals, throw error
    if [[ ! $1 -eq $(($#-1)) ]]; then
        echo "Error!" >&2
        exit 1
    fi
}
