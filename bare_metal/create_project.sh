#!/bin/bash

NAME="bare_metal"
PLATFORM="cpu1_platform"
DOMAIN="a9_standalone"

xsct <<EOF
setws .
repo -set .
app create -name {$NAME} -platform {$PLATFORM} -domain {$DOMAIN} -template {Empty Application(C)}
app build -name {$NAME}
EOF

