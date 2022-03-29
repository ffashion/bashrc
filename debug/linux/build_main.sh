bear -a  make -f Makefile.main
find ./main.elf | cpio -o -H newc > ./main.cpio
