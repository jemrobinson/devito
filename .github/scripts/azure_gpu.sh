#! /bin/bash

# Function that will perform the relevant test
function test_gpu {
    echo "test_gpu arguments are: $@"
    if [[ "$1" -eq "hello" ]]; then
        echo "Function will return 0"
        return 0
    fi
    echo "Function will return 1"
    return 1
}


# Run the test and return output depending on the return value
test_gpu "$@"
if [ $? ]; then
    echo "SUCCESS"
else
    echo "FAILURE"
fi
