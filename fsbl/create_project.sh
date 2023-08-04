#!/bin/bash

XSA="fpga/top.xsa"

xsct <<EOF
setws .
platform create -name {fsbl} -hw {$XSA} -proc {ps7_cortexa9_0} -os {standalone} -out {.}
platform write
platform read {platform.spr}
platform active {fsbl}
domain create -name a9_standalone -os standalone -proc {ps7_cortexa9_0}
platform generate
EOF
