#!/bin/bash

clear
echo "Please wait a little bit, the tutorial is loading..."
gp await-port 3000
cat .tutorial/banner.txt
gp open src/index.js

ttyecho /dev/pts/1 "curl http://localhost:3000/version"&
