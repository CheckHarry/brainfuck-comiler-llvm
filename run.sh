./a.out prg  2> a.ll
opt -O3 -S a.ll -o a.ll
opt -O3 -S a.ll -o a.ll
#opt -O1 -S a.ll -o a.ll
llvm-as a.ll -o k.bc
llc -filetype=obj -O=3 -o a.obj k.bc
clang++ a.obj -O3 -o abc.out
objdump -S abc.out > bf.S
