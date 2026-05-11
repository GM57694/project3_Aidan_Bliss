# project3_Aidan_Bliss
Hex dump of binary file in C

O0 is the largest of the 3 assembly files while 01 is the smallest, this is surprising because the 02 file is the most optimized of the 3.
The differences in the assembly files are mostly within the main section, although in the 02 file the start section comes after the main whereas in O0 and O1 it comes before.
The major differences in the main sections between the 3 assembly files are as follows:
In O0 every variable call is a call to the stack, while in O1 and O2 there is a register that holds onto some variables. (Specifically for looping)
Observe the differences in these lines from O0, O1, and O2:
O0: sub    $0x50,%rsp
O1: sub    $0x28,%rsp
O2: sub    $0x18,%rsp
This shows us the difference in the amount of allocated stack space for each of the different optimizations, showing that O2 uses the least and O0 uses the most.
The use of xor %~~~ in O2 vs mov %~~~ in O0 and O1 for zeroing the registers.
