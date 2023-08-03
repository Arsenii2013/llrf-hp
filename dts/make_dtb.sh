#!/bin/bash 

XSA="../fpga/top.xsa"
DTG="/opt/xilinx/DTG/device-tree-xlnx/"

if [ ! -f $XSA ]; then
    echo "$XSA file dont exist"
    echo "First, generate the bitstream and export Hardware Platform"
    exit 1 
fi

xsct <<EOF
hsi open_hw_design $XSA
hsi set_repo_path $DTG
set procs [hsi get_cells -hier -filter {IP_TYPE==PROCESSOR}]
puts "List of processors found in XSA is $procs"
hsi create_sw_design device-tree -os device_tree -proc ps7_cortexa9_0
hsi generate_target -dir .
hsi close_hw_design [hsi current_hw_design]
exit 
EOF

gcc -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o system.dts system-top.dts
dtc -O dtb -o system.dtb system.dts
