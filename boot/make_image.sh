cp ../fsbl/zynq_fsbl/fsbl.elf .
cp ../fpga/top.bit .
cp ../u-boot-xlnx/u-boot.elf .
cp ../bare_metal/Debug/bare_metal.elf .

cat <<EOF > output.bif
//arch = zynq; split = false; format = BIN

the_image:
{
    [bootloader]fsbl.elf
    top.bit
    u-boot.elf
    bare_metal.elf
}
EOF

bootgen -image output.bif -arch zynq -o BOOT.bin -w on
