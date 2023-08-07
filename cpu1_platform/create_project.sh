#!/bin/bash

NAME="cpu1_platform"
XSA="fpga/top.xsa"

xsct <<EOF
setws .
platform create -name {$NAME} -hw {$XSA} -proc {ps7_cortexa9_1} -os {standalone} -out {.}
platform write
platform read {platform.spr}
platform active {$NAME}
domain create -name a9_standalone -os standalone -proc {ps7_cortexa9_1}
platform generate
EOF
