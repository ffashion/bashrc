./build_main.sh
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -initrd ./main.cpio -append "nokaslr console=ttyS0 root=/dev/ram rdinit=/main.elf" -device rtl8139 -S -s -nographic
# qemu-system-x86_64 -kernel arch/x86/boot/bzImage -initrd ./main.cpio -append "nokaslr console=ttyS0 root=/dev/ram rdinit=/main.elf" -device rtl8139 -nographic