#!/bin/bash

mv fpga/fpga.srcs fpga/tmp
sed -i 's/fpga\.srcs/tmp/g' fpga/fpga.tcl

vivado -mode tcl -source fpga/fpga.tcl -tclargs --origin_dir fpga --project_name fpga

rm -rf fpga/tmp
