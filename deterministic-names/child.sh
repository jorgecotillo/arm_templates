#!/bin/bash

{ custom_script=$( { { az account list --query '[0].name' ; } 1>&$tmpd ; } 2>&1); } {tmpd}>&1

result=$?

if [ $result -ne 0 ]; then
    echo "$custom_script" 1>&2;
    exit 1;
fi

echo &1

exit 0;
