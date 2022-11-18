
abc.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <malloc@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <malloc@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <putchar@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <putchar@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401050 <_start>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	31 ed                	xor    %ebp,%ebp
  401056:	49 89 d1             	mov    %rdx,%r9
  401059:	5e                   	pop    %rsi
  40105a:	48 89 e2             	mov    %rsp,%rdx
  40105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401061:	50                   	push   %rax
  401062:	54                   	push   %rsp
  401063:	49 c7 c0 b0 13 40 00 	mov    $0x4013b0,%r8
  40106a:	48 c7 c1 40 13 40 00 	mov    $0x401340,%rcx
  401071:	48 c7 c7 40 11 40 00 	mov    $0x401140,%rdi
  401078:	ff 15 72 2f 00 00    	callq  *0x2f72(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	retq   
  401085:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 40 40 00       	mov    $0x404038,%eax
  401095:	48 3d 38 40 40 00    	cmp    $0x404038,%rax
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a2:	48 85 c0             	test   %rax,%rax
  4010a5:	74 09                	je     4010b0 <deregister_tm_clones+0x20>
  4010a7:	bf 38 40 40 00       	mov    $0x404038,%edi
  4010ac:	ff e0                	jmpq   *%rax
  4010ae:	66 90                	xchg   %ax,%ax
  4010b0:	c3                   	retq   
  4010b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 40 40 00       	mov    $0x404038,%esi
  4010c5:	48 81 ee 38 40 40 00 	sub    $0x404038,%rsi
  4010cc:	48 89 f0             	mov    %rsi,%rax
  4010cf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010d3:	48 c1 f8 03          	sar    $0x3,%rax
  4010d7:	48 01 c6             	add    %rax,%rsi
  4010da:	48 d1 fe             	sar    %rsi
  4010dd:	74 11                	je     4010f0 <register_tm_clones+0x30>
  4010df:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e4:	48 85 c0             	test   %rax,%rax
  4010e7:	74 07                	je     4010f0 <register_tm_clones+0x30>
  4010e9:	bf 38 40 40 00       	mov    $0x404038,%edi
  4010ee:	ff e0                	jmpq   *%rax
  4010f0:	c3                   	retq   
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 2d 2f 00 00 00 	cmpb   $0x0,0x2f2d(%rip)        # 404038 <__TMC_END__>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   %rbp
  40110e:	48 89 e5             	mov    %rsp,%rbp
  401111:	e8 7a ff ff ff       	callq  401090 <deregister_tm_clones>
  401116:	c6 05 1b 2f 00 00 01 	movb   $0x1,0x2f1b(%rip)        # 404038 <__TMC_END__>
  40111d:	5d                   	pop    %rbp
  40111e:	c3                   	retq   
  40111f:	90                   	nop
  401120:	c3                   	retq   
  401121:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <frame_dummy>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	eb 8a                	jmp    4010c0 <register_tm_clones>
  401136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40113d:	00 00 00 

0000000000401140 <main>:
  401140:	53                   	push   %rbx
  401141:	bf 00 00 01 00       	mov    $0x10000,%edi
  401146:	e8 e5 fe ff ff       	callq  401030 <malloc@plt>
  40114b:	8b 48 28             	mov    0x28(%rax),%ecx
  40114e:	83 40 2c 02          	addl   $0x2,0x2c(%rax)
  401152:	ff c1                	inc    %ecx
  401154:	89 48 28             	mov    %ecx,0x28(%rax)
  401157:	75 04                	jne    40115d <main+0x1d>
  401159:	31 c0                	xor    %eax,%eax
  40115b:	5b                   	pop    %rbx
  40115c:	c3                   	retq   
  40115d:	48 83 c0 28          	add    $0x28,%rax
  401161:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401168:	00 00 00 
  40116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401170:	48 89 c3             	mov    %rax,%rbx
  401173:	01 48 f8             	add    %ecx,-0x8(%rax)
  401176:	8b 40 fc             	mov    -0x4(%rax),%eax
  401179:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
  40117f:	8d 7c 01 2f          	lea    0x2f(%rcx,%rax,1),%edi
  401183:	89 7b fc             	mov    %edi,-0x4(%rbx)
  401186:	e8 b5 fe ff ff       	callq  401040 <putchar@plt>
  40118b:	c7 43 fc 00 00 00 00 	movl   $0x0,-0x4(%rbx)
  401192:	48 8d 43 f0          	lea    -0x10(%rbx),%rax
  401196:	8b 4b f0             	mov    -0x10(%rbx),%ecx
  401199:	85 c9                	test   %ecx,%ecx
  40119b:	75 d3                	jne    401170 <main+0x30>
  40119d:	c7 43 f0 0a 00 00 00 	movl   $0xa,-0x10(%rbx)
  4011a4:	bf 0a 00 00 00       	mov    $0xa,%edi
  4011a9:	e8 92 fe ff ff       	callq  401040 <putchar@plt>
  4011ae:	c7 43 f0 00 00 00 00 	movl   $0x0,-0x10(%rbx)
  4011b5:	48 8d 4b e4          	lea    -0x1c(%rbx),%rcx
  4011b9:	48 83 c3 04          	add    $0x4,%rbx
  4011bd:	0f 1f 00             	nopl   (%rax)
  4011c0:	48 89 d8             	mov    %rbx,%rax
  4011c3:	83 79 20 00          	cmpl   $0x0,0x20(%rcx)
  4011c7:	48 8d 49 10          	lea    0x10(%rcx),%rcx
  4011cb:	48 8d 5b 10          	lea    0x10(%rbx),%rbx
  4011cf:	75 ef                	jne    4011c0 <main+0x80>
  4011d1:	8b 11                	mov    (%rcx),%edx
  4011d3:	85 d2                	test   %edx,%edx
  4011d5:	0f 84 44 01 00 00    	je     40131f <main+0x1df>
  4011db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e0:	48 8d 48 f0          	lea    -0x10(%rax),%rcx
  4011e4:	8b 70 e0             	mov    -0x20(%rax),%esi
  4011e7:	8b 78 e4             	mov    -0x1c(%rax),%edi
  4011ea:	01 50 e8             	add    %edx,-0x18(%rax)
  4011ed:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%rax)
  4011f4:	8d 54 3a ff          	lea    -0x1(%rdx,%rdi,1),%edx
  4011f8:	89 50 e4             	mov    %edx,-0x1c(%rax)
  4011fb:	85 f6                	test   %esi,%esi
  4011fd:	48 89 c8             	mov    %rcx,%rax
  401200:	89 f2                	mov    %esi,%edx
  401202:	75 dc                	jne    4011e0 <main+0xa0>
  401204:	48 8d 41 f8          	lea    -0x8(%rcx),%rax
  401208:	83 41 f8 02          	addl   $0x2,-0x8(%rcx)
  40120c:	0f 84 e1 00 00 00    	je     4012f3 <main+0x1b3>
  401212:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401219:	00 00 00 
  40121c:	0f 1f 40 00          	nopl   0x0(%rax)
  401220:	48 8d 48 f4          	lea    -0xc(%rax),%rcx
  401224:	83 40 f4 0a          	addl   $0xa,-0xc(%rax)
  401228:	74 44                	je     40126e <main+0x12e>
  40122a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401230:	8b 41 0c             	mov    0xc(%rcx),%eax
  401233:	48 83 c1 0c          	add    $0xc,%rcx
  401237:	85 c0                	test   %eax,%eax
  401239:	74 17                	je     401252 <main+0x112>
  40123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401240:	ff c8                	dec    %eax
  401242:	89 01                	mov    %eax,(%rcx)
  401244:	ff 41 08             	incl   0x8(%rcx)
  401247:	8b 41 04             	mov    0x4(%rcx),%eax
  40124a:	48 83 c1 04          	add    $0x4,%rcx
  40124e:	85 c0                	test   %eax,%eax
  401250:	75 ee                	jne    401240 <main+0x100>
  401252:	48 83 c1 f8          	add    $0xfffffffffffffff8,%rcx
  401256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40125d:	00 00 00 
  401260:	83 79 0c 00          	cmpl   $0x0,0xc(%rcx)
  401264:	48 8d 49 fc          	lea    -0x4(%rcx),%rcx
  401268:	75 f6                	jne    401260 <main+0x120>
  40126a:	ff 09                	decl   (%rcx)
  40126c:	75 c2                	jne    401230 <main+0xf0>
  40126e:	8b 41 0c             	mov    0xc(%rcx),%eax
  401271:	85 c0                	test   %eax,%eax
  401273:	74 2b                	je     4012a0 <main+0x160>
  401275:	8b 51 1c             	mov    0x1c(%rcx),%edx
  401278:	ff c2                	inc    %edx
  40127a:	89 41 14             	mov    %eax,0x14(%rcx)
  40127d:	89 51 1c             	mov    %edx,0x1c(%rcx)
  401280:	c7 41 0c 00 00 00 00 	movl   $0x0,0xc(%rcx)
  401287:	48 8d 41 1c          	lea    0x1c(%rcx),%rax
  40128b:	85 d2                	test   %edx,%edx
  40128d:	75 91                	jne    401220 <main+0xe0>
  40128f:	eb 1e                	jmp    4012af <main+0x16f>
  401291:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012a0:	8b 51 1c             	mov    0x1c(%rcx),%edx
  4012a3:	48 8d 41 1c          	lea    0x1c(%rcx),%rax
  4012a7:	85 d2                	test   %edx,%edx
  4012a9:	0f 85 71 ff ff ff    	jne    401220 <main+0xe0>
  4012af:	48 8d 41 14          	lea    0x14(%rcx),%rax
  4012b3:	8b 51 14             	mov    0x14(%rcx),%edx
  4012b6:	ff ca                	dec    %edx
  4012b8:	89 51 14             	mov    %edx,0x14(%rcx)
  4012bb:	74 12                	je     4012cf <main+0x18f>
  4012bd:	0f 1f 00             	nopl   (%rax)
  4012c0:	ff c2                	inc    %edx
  4012c2:	89 10                	mov    %edx,(%rax)
  4012c4:	8b 50 10             	mov    0x10(%rax),%edx
  4012c7:	48 83 c0 10          	add    $0x10,%rax
  4012cb:	85 d2                	test   %edx,%edx
  4012cd:	75 f1                	jne    4012c0 <main+0x180>
  4012cf:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4012d5:	48 83 c0 04          	add    $0x4,%rax
  4012d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012e0:	83 78 ec 00          	cmpl   $0x0,-0x14(%rax)
  4012e4:	48 8d 40 f0          	lea    -0x10(%rax),%rax
  4012e8:	75 f6                	jne    4012e0 <main+0x1a0>
  4012ea:	83 38 00             	cmpl   $0x0,(%rax)
  4012ed:	0f 85 2d ff ff ff    	jne    401220 <main+0xe0>
  4012f3:	48 83 c0 dc          	add    $0xffffffffffffffdc,%rax
  4012f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4012fe:	00 00 
  401300:	83 78 30 00          	cmpl   $0x0,0x30(%rax)
  401304:	48 8d 40 10          	lea    0x10(%rax),%rax
  401308:	75 f6                	jne    401300 <main+0x1c0>
  40130a:	ff 48 10             	decl   0x10(%rax)
  40130d:	ff 40 08             	incl   0x8(%rax)
  401310:	8b 08                	mov    (%rax),%ecx
  401312:	85 c9                	test   %ecx,%ecx
  401314:	0f 85 56 fe ff ff    	jne    401170 <main+0x30>
  40131a:	e9 3a fe ff ff       	jmpq   401159 <main+0x19>
  40131f:	48 83 c1 10          	add    $0x10,%rcx
  401323:	48 8d 41 f8          	lea    -0x8(%rcx),%rax
  401327:	83 41 f8 02          	addl   $0x2,-0x8(%rcx)
  40132b:	0f 85 ef fe ff ff    	jne    401220 <main+0xe0>
  401331:	eb c0                	jmp    4012f3 <main+0x1b3>
  401333:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40133a:	00 00 00 
  40133d:	0f 1f 00             	nopl   (%rax)

0000000000401340 <__libc_csu_init>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	41 57                	push   %r15
  401346:	4c 8d 3d 93 2a 00 00 	lea    0x2a93(%rip),%r15        # 403de0 <__frame_dummy_init_array_entry>
  40134d:	41 56                	push   %r14
  40134f:	49 89 d6             	mov    %rdx,%r14
  401352:	41 55                	push   %r13
  401354:	49 89 f5             	mov    %rsi,%r13
  401357:	41 54                	push   %r12
  401359:	41 89 fc             	mov    %edi,%r12d
  40135c:	55                   	push   %rbp
  40135d:	48 8d 2d 84 2a 00 00 	lea    0x2a84(%rip),%rbp        # 403de8 <__do_global_dtors_aux_fini_array_entry>
  401364:	53                   	push   %rbx
  401365:	4c 29 fd             	sub    %r15,%rbp
  401368:	48 83 ec 08          	sub    $0x8,%rsp
  40136c:	e8 8f fc ff ff       	callq  401000 <_init>
  401371:	48 c1 fd 03          	sar    $0x3,%rbp
  401375:	74 1f                	je     401396 <__libc_csu_init+0x56>
  401377:	31 db                	xor    %ebx,%ebx
  401379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401380:	4c 89 f2             	mov    %r14,%rdx
  401383:	4c 89 ee             	mov    %r13,%rsi
  401386:	44 89 e7             	mov    %r12d,%edi
  401389:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40138d:	48 83 c3 01          	add    $0x1,%rbx
  401391:	48 39 dd             	cmp    %rbx,%rbp
  401394:	75 ea                	jne    401380 <__libc_csu_init+0x40>
  401396:	48 83 c4 08          	add    $0x8,%rsp
  40139a:	5b                   	pop    %rbx
  40139b:	5d                   	pop    %rbp
  40139c:	41 5c                	pop    %r12
  40139e:	41 5d                	pop    %r13
  4013a0:	41 5e                	pop    %r14
  4013a2:	41 5f                	pop    %r15
  4013a4:	c3                   	retq   
  4013a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013ac:	00 00 00 00 

00000000004013b0 <__libc_csu_fini>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	c3                   	retq   

Disassembly of section .fini:

00000000004013b8 <_fini>:
  4013b8:	f3 0f 1e fa          	endbr64 
  4013bc:	48 83 ec 08          	sub    $0x8,%rsp
  4013c0:	48 83 c4 08          	add    $0x8,%rsp
  4013c4:	c3                   	retq   
