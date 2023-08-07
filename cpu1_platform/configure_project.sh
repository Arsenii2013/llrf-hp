#!/bin/bash

NAME="cpu1_platform"

xsct <<EOF
setws .
platform active {$NAME}
bsp config -append extra_compiler_flags "-DUSE_AMP=1"
bsp regenerate
platform generate
EOF
