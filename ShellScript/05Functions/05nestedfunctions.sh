#!/bin/sh
#Define a functions
function_one() {
        echo "Hello world!"
        function_two
}
function_two() {
        echo "Hello Devops!"
}

# invoke function
function_one
