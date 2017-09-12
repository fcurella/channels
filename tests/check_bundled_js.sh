#!/bin/bash

file1=js_client/src/index.js
git diff --name-only HEAD~1 HEAD | grep $file1 > /dev/null
status1=$?
file2=channels/static/channels/js/websocketbridge.js
git diff --name-only HEAD~1 HEAD | grep $file2 > /dev/null
status2=$?

test $status1 -eq $status2