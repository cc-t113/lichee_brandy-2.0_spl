OUTPUT_FORMAT("elf64-littleriscv", "elf64-littleriscv", "elf64-littleriscv")
OUTPUT_ARCH(riscv)
SECTIONS
{
 . = 0x28000;
 . = ALIGN(4);
 .head :
 {
  main/fes1_head.o (.rodata)
 }
 .text :
 {
  /home/cc/work2/mangopi/repo/lichee/brandy-2.0/spl/arch/riscv/cpu/riscv64/fes1_entry.o (.text)
  *(.text)
 }
 . = ALIGN(16);
   .rodata : { *(.rodata) }
 . = ALIGN(16);
   .data : { *(.data) }
 . = ALIGN(4);
 .bss :
 {
 fes1_res_addr = .;
 __bss_start = .;
  *(.bss)
 }
 . = ALIGN(4);
 __bss_end = .;
 _end = .;
}
