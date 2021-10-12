#!/bin/bash

# Import library
dir="$(dirname "$BASH_SOURCE")"
source "$dir/arglib.sh"

get_containerids() {
    # Ensure we got one and exactly one input
    argnum_equals 1 $@

    # Get container id(s)
    echo $(docker ps -aqf "name=$1")
}

docker_bash() {
    # Ensure only one container was recieved
    argnum_equals 1 $1

    docker exec -it $1 bash
}
