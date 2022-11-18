
./abc.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 4f 00 00    	pushq  0x4f92(%rip)        # 5fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 94 4f 00 00    	jmpq   *0x4f94(%rip)        # 5fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <putchar@plt>:
    1030:	ff 25 92 4f 00 00    	jmpq   *0x4f92(%rip)        # 5fc8 <putchar@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <getchar@plt>:
    1040:	ff 25 8a 4f 00 00    	jmpq   *0x4f8a(%rip)        # 5fd0 <getchar@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	ff 25 a2 4f 00 00    	jmpq   *0x4fa2(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1056:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	4c 8d 05 76 1f 00 00 	lea    0x1f76(%rip),%r8        # 2ff0 <__libc_csu_fini>
    107a:	48 8d 0d ff 1e 00 00 	lea    0x1eff(%rip),%rcx        # 2f80 <__libc_csu_init>
    1081:	48 8d 3d c8 00 00 00 	lea    0xc8(%rip),%rdi        # 1150 <main>
    1088:	ff 15 52 4f 00 00    	callq  *0x4f52(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    108e:	f4                   	hlt    
    108f:	90                   	nop

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 4f 00 00 	lea    0x4f79(%rip),%rdi        # 6010 <__TMC_END__>
    1097:	48 8d 05 72 4f 00 00 	lea    0x4f72(%rip),%rax        # 6010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 2e 4f 00 00 	mov    0x4f2e(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmpq   *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	retq   
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 4f 00 00 	lea    0x4f49(%rip),%rdi        # 6010 <__TMC_END__>
    10c7:	48 8d 35 42 4f 00 00 	lea    0x4f42(%rip),%rsi        # 6010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 4f 00 00 	mov    0x4f05(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmpq   *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 4f 00 00 00 	cmpb   $0x0,0x4f05(%rip)        # 6010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 4e 00 00 	cmpq   $0x0,0x4ee2(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 4e 00 00 	mov    0x4ee6(%rip),%rdi        # 6008 <__dso_handle>
    1122:	e8 29 ff ff ff       	callq  1050 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	callq  1090 <deregister_tm_clones>
    112c:	c6 05 dd 4e 00 00 01 	movb   $0x1,0x4edd(%rip)        # 6010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	retq   
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmpq   10c0 <register_tm_clones>
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <main>:
    1150:	48 81 ec 08 00 04 00 	sub    $0x40008,%rsp
    1157:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
    115c:	48 89 04 24          	mov    %rax,(%rsp)
    1160:	48 8b 04 24          	mov    (%rsp),%rax
    1164:	48 83 c0 04          	add    $0x4,%rax
    1168:	48 89 04 24          	mov    %rax,(%rsp)
    116c:	48 8b 04 24          	mov    (%rsp),%rax
    1170:	48 83 c0 04          	add    $0x4,%rax
    1174:	48 89 04 24          	mov    %rax,(%rsp)
    1178:	48 8b 04 24          	mov    (%rsp),%rax
    117c:	48 83 c0 04          	add    $0x4,%rax
    1180:	48 89 04 24          	mov    %rax,(%rsp)
    1184:	48 8b 04 24          	mov    (%rsp),%rax
    1188:	8b 08                	mov    (%rax),%ecx
    118a:	83 c1 ff             	add    $0xffffffff,%ecx
    118d:	89 08                	mov    %ecx,(%rax)
    118f:	48 8b 04 24          	mov    (%rsp),%rax
    1193:	48 83 c0 04          	add    $0x4,%rax
    1197:	48 89 04 24          	mov    %rax,(%rsp)
    119b:	48 8b 04 24          	mov    (%rsp),%rax
    119f:	8b 08                	mov    (%rax),%ecx
    11a1:	83 c1 01             	add    $0x1,%ecx
    11a4:	89 08                	mov    %ecx,(%rax)
    11a6:	48 8b 04 24          	mov    (%rsp),%rax
    11aa:	48 83 c0 04          	add    $0x4,%rax
    11ae:	48 89 04 24          	mov    %rax,(%rsp)
    11b2:	48 8b 04 24          	mov    (%rsp),%rax
    11b6:	8b 08                	mov    (%rax),%ecx
    11b8:	83 c1 01             	add    $0x1,%ecx
    11bb:	89 08                	mov    %ecx,(%rax)
    11bd:	48 8b 04 24          	mov    (%rsp),%rax
    11c1:	8b 08                	mov    (%rax),%ecx
    11c3:	83 c1 01             	add    $0x1,%ecx
    11c6:	89 08                	mov    %ecx,(%rax)
    11c8:	48 8b 04 24          	mov    (%rsp),%rax
    11cc:	8b 08                	mov    (%rax),%ecx
    11ce:	83 c1 01             	add    $0x1,%ecx
    11d1:	89 08                	mov    %ecx,(%rax)
    11d3:	48 8b 04 24          	mov    (%rsp),%rax
    11d7:	8b 08                	mov    (%rax),%ecx
    11d9:	83 c1 01             	add    $0x1,%ecx
    11dc:	89 08                	mov    %ecx,(%rax)
    11de:	48 8b 04 24          	mov    (%rsp),%rax
    11e2:	8b 08                	mov    (%rax),%ecx
    11e4:	83 c1 01             	add    $0x1,%ecx
    11e7:	89 08                	mov    %ecx,(%rax)
    11e9:	48 8b 04 24          	mov    (%rsp),%rax
    11ed:	48 83 c0 04          	add    $0x4,%rax
    11f1:	48 89 04 24          	mov    %rax,(%rsp)
    11f5:	48 8b 04 24          	mov    (%rsp),%rax
    11f9:	8b 08                	mov    (%rax),%ecx
    11fb:	83 c1 01             	add    $0x1,%ecx
    11fe:	89 08                	mov    %ecx,(%rax)
    1200:	48 8b 04 24          	mov    (%rsp),%rax
    1204:	8b 08                	mov    (%rax),%ecx
    1206:	83 c1 01             	add    $0x1,%ecx
    1209:	89 08                	mov    %ecx,(%rax)
    120b:	48 8b 04 24          	mov    (%rsp),%rax
    120f:	8b 08                	mov    (%rax),%ecx
    1211:	83 c1 01             	add    $0x1,%ecx
    1214:	89 08                	mov    %ecx,(%rax)
    1216:	48 8b 04 24          	mov    (%rsp),%rax
    121a:	8b 08                	mov    (%rax),%ecx
    121c:	83 c1 01             	add    $0x1,%ecx
    121f:	89 08                	mov    %ecx,(%rax)
    1221:	48 8b 04 24          	mov    (%rsp),%rax
    1225:	8b 08                	mov    (%rax),%ecx
    1227:	83 c1 01             	add    $0x1,%ecx
    122a:	89 08                	mov    %ecx,(%rax)
    122c:	48 8b 04 24          	mov    (%rsp),%rax
    1230:	8b 08                	mov    (%rax),%ecx
    1232:	83 c1 01             	add    $0x1,%ecx
    1235:	89 08                	mov    %ecx,(%rax)
    1237:	48 8b 04 24          	mov    (%rsp),%rax
    123b:	8b 08                	mov    (%rax),%ecx
    123d:	83 c1 01             	add    $0x1,%ecx
    1240:	89 08                	mov    %ecx,(%rax)
    1242:	48 8b 04 24          	mov    (%rsp),%rax
    1246:	8b 08                	mov    (%rax),%ecx
    1248:	83 c1 01             	add    $0x1,%ecx
    124b:	89 08                	mov    %ecx,(%rax)
    124d:	48 8b 04 24          	mov    (%rsp),%rax
    1251:	8b 08                	mov    (%rax),%ecx
    1253:	83 c1 01             	add    $0x1,%ecx
    1256:	89 08                	mov    %ecx,(%rax)
    1258:	48 8b 04 24          	mov    (%rsp),%rax
    125c:	8b 08                	mov    (%rax),%ecx
    125e:	83 c1 01             	add    $0x1,%ecx
    1261:	89 08                	mov    %ecx,(%rax)
    1263:	48 8b 04 24          	mov    (%rsp),%rax
    1267:	83 38 00             	cmpl   $0x0,(%rax)
    126a:	74 02                	je     126e <main+0x11e>
    126c:	eb 35                	jmp    12a3 <main+0x153>
    126e:	48 8b 04 24          	mov    (%rsp),%rax
    1272:	48 83 c0 04          	add    $0x4,%rax
    1276:	48 89 04 24          	mov    %rax,(%rsp)
    127a:	48 8b 04 24          	mov    (%rsp),%rax
    127e:	48 83 c0 04          	add    $0x4,%rax
    1282:	48 89 04 24          	mov    %rax,(%rsp)
    1286:	48 8b 04 24          	mov    (%rsp),%rax
    128a:	48 83 c0 04          	add    $0x4,%rax
    128e:	48 89 04 24          	mov    %rax,(%rsp)
    1292:	48 8b 04 24          	mov    (%rsp),%rax
    1296:	48 83 c0 04          	add    $0x4,%rax
    129a:	48 89 04 24          	mov    %rax,(%rsp)
    129e:	e9 ad 01 00 00       	jmpq   1450 <main+0x300>
    12a3:	48 8b 04 24          	mov    (%rsp),%rax
    12a7:	83 38 00             	cmpl   $0x0,(%rax)
    12aa:	74 60                	je     130c <main+0x1bc>
    12ac:	48 8b 04 24          	mov    (%rsp),%rax
    12b0:	48 83 c0 04          	add    $0x4,%rax
    12b4:	48 89 04 24          	mov    %rax,(%rsp)
    12b8:	48 8b 04 24          	mov    (%rsp),%rax
    12bc:	48 83 c0 04          	add    $0x4,%rax
    12c0:	48 89 04 24          	mov    %rax,(%rsp)
    12c4:	48 8b 04 24          	mov    (%rsp),%rax
    12c8:	48 83 c0 04          	add    $0x4,%rax
    12cc:	48 89 04 24          	mov    %rax,(%rsp)
    12d0:	48 8b 04 24          	mov    (%rsp),%rax
    12d4:	8b 08                	mov    (%rax),%ecx
    12d6:	83 c1 01             	add    $0x1,%ecx
    12d9:	89 08                	mov    %ecx,(%rax)
    12db:	48 8b 04 24          	mov    (%rsp),%rax
    12df:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    12e3:	48 89 04 24          	mov    %rax,(%rsp)
    12e7:	48 8b 04 24          	mov    (%rsp),%rax
    12eb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    12ef:	48 89 04 24          	mov    %rax,(%rsp)
    12f3:	48 8b 04 24          	mov    (%rsp),%rax
    12f7:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    12fb:	48 89 04 24          	mov    %rax,(%rsp)
    12ff:	48 8b 04 24          	mov    (%rsp),%rax
    1303:	8b 08                	mov    (%rax),%ecx
    1305:	83 c1 ff             	add    $0xffffffff,%ecx
    1308:	89 08                	mov    %ecx,(%rax)
    130a:	eb 97                	jmp    12a3 <main+0x153>
    130c:	48 8b 04 24          	mov    (%rsp),%rax
    1310:	48 83 c0 04          	add    $0x4,%rax
    1314:	48 89 04 24          	mov    %rax,(%rsp)
    1318:	48 8b 04 24          	mov    (%rsp),%rax
    131c:	8b 08                	mov    (%rax),%ecx
    131e:	83 c1 01             	add    $0x1,%ecx
    1321:	89 08                	mov    %ecx,(%rax)
    1323:	48 8b 04 24          	mov    (%rsp),%rax
    1327:	8b 08                	mov    (%rax),%ecx
    1329:	83 c1 01             	add    $0x1,%ecx
    132c:	89 08                	mov    %ecx,(%rax)
    132e:	48 8b 04 24          	mov    (%rsp),%rax
    1332:	8b 08                	mov    (%rax),%ecx
    1334:	83 c1 01             	add    $0x1,%ecx
    1337:	89 08                	mov    %ecx,(%rax)
    1339:	48 8b 04 24          	mov    (%rsp),%rax
    133d:	8b 08                	mov    (%rax),%ecx
    133f:	83 c1 01             	add    $0x1,%ecx
    1342:	89 08                	mov    %ecx,(%rax)
    1344:	48 8b 04 24          	mov    (%rsp),%rax
    1348:	8b 08                	mov    (%rax),%ecx
    134a:	83 c1 01             	add    $0x1,%ecx
    134d:	89 08                	mov    %ecx,(%rax)
    134f:	48 8b 04 24          	mov    (%rsp),%rax
    1353:	48 83 c0 04          	add    $0x4,%rax
    1357:	48 89 04 24          	mov    %rax,(%rsp)
    135b:	48 8b 04 24          	mov    (%rsp),%rax
    135f:	8b 08                	mov    (%rax),%ecx
    1361:	83 c1 01             	add    $0x1,%ecx
    1364:	89 08                	mov    %ecx,(%rax)
    1366:	48 8b 04 24          	mov    (%rsp),%rax
    136a:	48 83 c0 04          	add    $0x4,%rax
    136e:	48 89 04 24          	mov    %rax,(%rsp)
    1372:	48 8b 04 24          	mov    (%rsp),%rax
    1376:	48 83 c0 04          	add    $0x4,%rax
    137a:	48 89 04 24          	mov    %rax,(%rsp)
    137e:	48 8b 04 24          	mov    (%rsp),%rax
    1382:	8b 08                	mov    (%rax),%ecx
    1384:	83 c1 01             	add    $0x1,%ecx
    1387:	89 08                	mov    %ecx,(%rax)
    1389:	48 8b 04 24          	mov    (%rsp),%rax
    138d:	83 38 00             	cmpl   $0x0,(%rax)
    1390:	0f 84 9e 00 00 00    	je     1434 <main+0x2e4>
    1396:	48 8b 04 24          	mov    (%rsp),%rax
    139a:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    139e:	48 89 04 24          	mov    %rax,(%rsp)
    13a2:	48 8b 04 24          	mov    (%rsp),%rax
    13a6:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    13aa:	48 89 04 24          	mov    %rax,(%rsp)
    13ae:	48 8b 04 24          	mov    (%rsp),%rax
    13b2:	8b 08                	mov    (%rax),%ecx
    13b4:	83 c1 01             	add    $0x1,%ecx
    13b7:	89 08                	mov    %ecx,(%rax)
    13b9:	48 8b 04 24          	mov    (%rsp),%rax
    13bd:	48 83 c0 04          	add    $0x4,%rax
    13c1:	48 89 04 24          	mov    %rax,(%rsp)
    13c5:	48 8b 04 24          	mov    (%rsp),%rax
    13c9:	48 83 c0 04          	add    $0x4,%rax
    13cd:	48 89 04 24          	mov    %rax,(%rsp)
    13d1:	48 8b 04 24          	mov    (%rsp),%rax
    13d5:	48 83 c0 04          	add    $0x4,%rax
    13d9:	48 89 04 24          	mov    %rax,(%rsp)
    13dd:	48 8b 04 24          	mov    (%rsp),%rax
    13e1:	48 83 c0 04          	add    $0x4,%rax
    13e5:	48 89 04 24          	mov    %rax,(%rsp)
    13e9:	48 8b 04 24          	mov    (%rsp),%rax
    13ed:	48 83 c0 04          	add    $0x4,%rax
    13f1:	48 89 04 24          	mov    %rax,(%rsp)
    13f5:	48 8b 04 24          	mov    (%rsp),%rax
    13f9:	8b 08                	mov    (%rax),%ecx
    13fb:	83 c1 01             	add    $0x1,%ecx
    13fe:	89 08                	mov    %ecx,(%rax)
    1400:	48 8b 04 24          	mov    (%rsp),%rax
    1404:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1408:	48 89 04 24          	mov    %rax,(%rsp)
    140c:	48 8b 04 24          	mov    (%rsp),%rax
    1410:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1414:	48 89 04 24          	mov    %rax,(%rsp)
    1418:	48 8b 04 24          	mov    (%rsp),%rax
    141c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1420:	48 89 04 24          	mov    %rax,(%rsp)
    1424:	48 8b 04 24          	mov    (%rsp),%rax
    1428:	8b 08                	mov    (%rax),%ecx
    142a:	83 c1 ff             	add    $0xffffffff,%ecx
    142d:	89 08                	mov    %ecx,(%rax)
    142f:	e9 55 ff ff ff       	jmpq   1389 <main+0x239>
    1434:	48 8b 04 24          	mov    (%rsp),%rax
    1438:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    143c:	48 89 04 24          	mov    %rax,(%rsp)
    1440:	48 8b 04 24          	mov    (%rsp),%rax
    1444:	8b 08                	mov    (%rax),%ecx
    1446:	83 c1 ff             	add    $0xffffffff,%ecx
    1449:	89 08                	mov    %ecx,(%rax)
    144b:	e9 13 fe ff ff       	jmpq   1263 <main+0x113>
    1450:	48 8b 04 24          	mov    (%rsp),%rax
    1454:	83 38 00             	cmpl   $0x0,(%rax)
    1457:	74 02                	je     145b <main+0x30b>
    1459:	eb 49                	jmp    14a4 <main+0x354>
    145b:	48 8b 04 24          	mov    (%rsp),%rax
    145f:	8b 08                	mov    (%rax),%ecx
    1461:	83 c1 01             	add    $0x1,%ecx
    1464:	89 08                	mov    %ecx,(%rax)
    1466:	48 8b 04 24          	mov    (%rsp),%rax
    146a:	8b 08                	mov    (%rax),%ecx
    146c:	83 c1 01             	add    $0x1,%ecx
    146f:	89 08                	mov    %ecx,(%rax)
    1471:	48 8b 04 24          	mov    (%rsp),%rax
    1475:	8b 08                	mov    (%rax),%ecx
    1477:	83 c1 01             	add    $0x1,%ecx
    147a:	89 08                	mov    %ecx,(%rax)
    147c:	48 8b 04 24          	mov    (%rsp),%rax
    1480:	48 83 c0 04          	add    $0x4,%rax
    1484:	48 89 04 24          	mov    %rax,(%rsp)
    1488:	48 8b 04 24          	mov    (%rsp),%rax
    148c:	8b 08                	mov    (%rax),%ecx
    148e:	83 c1 01             	add    $0x1,%ecx
    1491:	89 08                	mov    %ecx,(%rax)
    1493:	48 8b 04 24          	mov    (%rsp),%rax
    1497:	48 83 c0 04          	add    $0x4,%rax
    149b:	48 89 04 24          	mov    %rax,(%rsp)
    149f:	e9 e5 02 00 00       	jmpq   1789 <main+0x639>
    14a4:	48 8b 04 24          	mov    (%rsp),%rax
    14a8:	83 38 00             	cmpl   $0x0,(%rax)
    14ab:	0f 84 86 00 00 00    	je     1537 <main+0x3e7>
    14b1:	48 8b 04 24          	mov    (%rsp),%rax
    14b5:	48 83 c0 04          	add    $0x4,%rax
    14b9:	48 89 04 24          	mov    %rax,(%rsp)
    14bd:	48 8b 04 24          	mov    (%rsp),%rax
    14c1:	48 83 c0 04          	add    $0x4,%rax
    14c5:	48 89 04 24          	mov    %rax,(%rsp)
    14c9:	48 8b 04 24          	mov    (%rsp),%rax
    14cd:	48 83 c0 04          	add    $0x4,%rax
    14d1:	48 89 04 24          	mov    %rax,(%rsp)
    14d5:	48 8b 04 24          	mov    (%rsp),%rax
    14d9:	8b 08                	mov    (%rax),%ecx
    14db:	83 c1 01             	add    $0x1,%ecx
    14de:	89 08                	mov    %ecx,(%rax)
    14e0:	48 8b 04 24          	mov    (%rsp),%rax
    14e4:	48 83 c0 04          	add    $0x4,%rax
    14e8:	48 89 04 24          	mov    %rax,(%rsp)
    14ec:	48 8b 04 24          	mov    (%rsp),%rax
    14f0:	8b 08                	mov    (%rax),%ecx
    14f2:	83 c1 01             	add    $0x1,%ecx
    14f5:	89 08                	mov    %ecx,(%rax)
    14f7:	48 8b 04 24          	mov    (%rsp),%rax
    14fb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    14ff:	48 89 04 24          	mov    %rax,(%rsp)
    1503:	48 8b 04 24          	mov    (%rsp),%rax
    1507:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    150b:	48 89 04 24          	mov    %rax,(%rsp)
    150f:	48 8b 04 24          	mov    (%rsp),%rax
    1513:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1517:	48 89 04 24          	mov    %rax,(%rsp)
    151b:	48 8b 04 24          	mov    (%rsp),%rax
    151f:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1523:	48 89 04 24          	mov    %rax,(%rsp)
    1527:	48 8b 04 24          	mov    (%rsp),%rax
    152b:	8b 08                	mov    (%rax),%ecx
    152d:	83 c1 ff             	add    $0xffffffff,%ecx
    1530:	89 08                	mov    %ecx,(%rax)
    1532:	e9 6d ff ff ff       	jmpq   14a4 <main+0x354>
    1537:	48 8b 04 24          	mov    (%rsp),%rax
    153b:	8b 08                	mov    (%rax),%ecx
    153d:	83 c1 01             	add    $0x1,%ecx
    1540:	89 08                	mov    %ecx,(%rax)
    1542:	48 8b 04 24          	mov    (%rsp),%rax
    1546:	8b 08                	mov    (%rax),%ecx
    1548:	83 c1 01             	add    $0x1,%ecx
    154b:	89 08                	mov    %ecx,(%rax)
    154d:	48 8b 04 24          	mov    (%rsp),%rax
    1551:	8b 08                	mov    (%rax),%ecx
    1553:	83 c1 01             	add    $0x1,%ecx
    1556:	89 08                	mov    %ecx,(%rax)
    1558:	48 8b 04 24          	mov    (%rsp),%rax
    155c:	48 83 c0 04          	add    $0x4,%rax
    1560:	48 89 04 24          	mov    %rax,(%rsp)
    1564:	48 8b 04 24          	mov    (%rsp),%rax
    1568:	48 83 c0 04          	add    $0x4,%rax
    156c:	48 89 04 24          	mov    %rax,(%rsp)
    1570:	48 8b 04 24          	mov    (%rsp),%rax
    1574:	8b 08                	mov    (%rax),%ecx
    1576:	83 c1 01             	add    $0x1,%ecx
    1579:	89 08                	mov    %ecx,(%rax)
    157b:	48 8b 04 24          	mov    (%rsp),%rax
    157f:	83 38 00             	cmpl   $0x0,(%rax)
    1582:	0f 84 91 00 00 00    	je     1619 <main+0x4c9>
    1588:	48 8b 04 24          	mov    (%rsp),%rax
    158c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1590:	48 89 04 24          	mov    %rax,(%rsp)
    1594:	48 8b 04 24          	mov    (%rsp),%rax
    1598:	8b 08                	mov    (%rax),%ecx
    159a:	83 c1 01             	add    $0x1,%ecx
    159d:	89 08                	mov    %ecx,(%rax)
    159f:	48 8b 04 24          	mov    (%rsp),%rax
    15a3:	48 83 c0 04          	add    $0x4,%rax
    15a7:	48 89 04 24          	mov    %rax,(%rsp)
    15ab:	48 8b 04 24          	mov    (%rsp),%rax
    15af:	48 83 c0 04          	add    $0x4,%rax
    15b3:	48 89 04 24          	mov    %rax,(%rsp)
    15b7:	48 8b 04 24          	mov    (%rsp),%rax
    15bb:	48 83 c0 04          	add    $0x4,%rax
    15bf:	48 89 04 24          	mov    %rax,(%rsp)
    15c3:	48 8b 04 24          	mov    (%rsp),%rax
    15c7:	8b 08                	mov    (%rax),%ecx
    15c9:	83 c1 01             	add    $0x1,%ecx
    15cc:	89 08                	mov    %ecx,(%rax)
    15ce:	48 8b 04 24          	mov    (%rsp),%rax
    15d2:	48 83 c0 04          	add    $0x4,%rax
    15d6:	48 89 04 24          	mov    %rax,(%rsp)
    15da:	48 8b 04 24          	mov    (%rsp),%rax
    15de:	8b 08                	mov    (%rax),%ecx
    15e0:	83 c1 01             	add    $0x1,%ecx
    15e3:	89 08                	mov    %ecx,(%rax)
    15e5:	48 8b 04 24          	mov    (%rsp),%rax
    15e9:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    15ed:	48 89 04 24          	mov    %rax,(%rsp)
    15f1:	48 8b 04 24          	mov    (%rsp),%rax
    15f5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    15f9:	48 89 04 24          	mov    %rax,(%rsp)
    15fd:	48 8b 04 24          	mov    (%rsp),%rax
    1601:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1605:	48 89 04 24          	mov    %rax,(%rsp)
    1609:	48 8b 04 24          	mov    (%rsp),%rax
    160d:	8b 08                	mov    (%rax),%ecx
    160f:	83 c1 ff             	add    $0xffffffff,%ecx
    1612:	89 08                	mov    %ecx,(%rax)
    1614:	e9 62 ff ff ff       	jmpq   157b <main+0x42b>
    1619:	48 8b 04 24          	mov    (%rsp),%rax
    161d:	48 83 c0 04          	add    $0x4,%rax
    1621:	48 89 04 24          	mov    %rax,(%rsp)
    1625:	48 8b 04 24          	mov    (%rsp),%rax
    1629:	48 83 c0 04          	add    $0x4,%rax
    162d:	48 89 04 24          	mov    %rax,(%rsp)
    1631:	48 8b 04 24          	mov    (%rsp),%rax
    1635:	83 38 00             	cmpl   $0x0,(%rax)
    1638:	74 0e                	je     1648 <main+0x4f8>
    163a:	48 8b 04 24          	mov    (%rsp),%rax
    163e:	48 83 c0 04          	add    $0x4,%rax
    1642:	48 89 04 24          	mov    %rax,(%rsp)
    1646:	eb 1c                	jmp    1664 <main+0x514>
    1648:	48 8b 04 24          	mov    (%rsp),%rax
    164c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1650:	48 89 04 24          	mov    %rax,(%rsp)
    1654:	48 8b 04 24          	mov    (%rsp),%rax
    1658:	8b 08                	mov    (%rax),%ecx
    165a:	83 c1 ff             	add    $0xffffffff,%ecx
    165d:	89 08                	mov    %ecx,(%rax)
    165f:	e9 ec fd ff ff       	jmpq   1450 <main+0x300>
    1664:	48 8b 04 24          	mov    (%rsp),%rax
    1668:	83 38 00             	cmpl   $0x0,(%rax)
    166b:	74 05                	je     1672 <main+0x522>
    166d:	e9 9d 00 00 00       	jmpq   170f <main+0x5bf>
    1672:	48 8b 04 24          	mov    (%rsp),%rax
    1676:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    167a:	48 89 04 24          	mov    %rax,(%rsp)
    167e:	48 8b 04 24          	mov    (%rsp),%rax
    1682:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1686:	48 89 04 24          	mov    %rax,(%rsp)
    168a:	48 8b 04 24          	mov    (%rsp),%rax
    168e:	8b 08                	mov    (%rax),%ecx
    1690:	83 c1 01             	add    $0x1,%ecx
    1693:	89 08                	mov    %ecx,(%rax)
    1695:	48 8b 04 24          	mov    (%rsp),%rax
    1699:	8b 08                	mov    (%rax),%ecx
    169b:	83 c1 01             	add    $0x1,%ecx
    169e:	89 08                	mov    %ecx,(%rax)
    16a0:	48 8b 04 24          	mov    (%rsp),%rax
    16a4:	48 83 c0 04          	add    $0x4,%rax
    16a8:	48 89 04 24          	mov    %rax,(%rsp)
    16ac:	48 8b 04 24          	mov    (%rsp),%rax
    16b0:	8b 08                	mov    (%rax),%ecx
    16b2:	83 c1 01             	add    $0x1,%ecx
    16b5:	89 08                	mov    %ecx,(%rax)
    16b7:	48 8b 04 24          	mov    (%rsp),%rax
    16bb:	48 83 c0 04          	add    $0x4,%rax
    16bf:	48 89 04 24          	mov    %rax,(%rsp)
    16c3:	48 8b 04 24          	mov    (%rsp),%rax
    16c7:	48 83 c0 04          	add    $0x4,%rax
    16cb:	48 89 04 24          	mov    %rax,(%rsp)
    16cf:	48 8b 04 24          	mov    (%rsp),%rax
    16d3:	48 83 c0 04          	add    $0x4,%rax
    16d7:	48 89 04 24          	mov    %rax,(%rsp)
    16db:	48 8b 04 24          	mov    (%rsp),%rax
    16df:	48 83 c0 04          	add    $0x4,%rax
    16e3:	48 89 04 24          	mov    %rax,(%rsp)
    16e7:	48 8b 04 24          	mov    (%rsp),%rax
    16eb:	48 83 c0 04          	add    $0x4,%rax
    16ef:	48 89 04 24          	mov    %rax,(%rsp)
    16f3:	48 8b 04 24          	mov    (%rsp),%rax
    16f7:	48 83 c0 04          	add    $0x4,%rax
    16fb:	48 89 04 24          	mov    %rax,(%rsp)
    16ff:	48 8b 04 24          	mov    (%rsp),%rax
    1703:	8b 08                	mov    (%rax),%ecx
    1705:	83 c1 ff             	add    $0xffffffff,%ecx
    1708:	89 08                	mov    %ecx,(%rax)
    170a:	e9 22 ff ff ff       	jmpq   1631 <main+0x4e1>
    170f:	48 8b 04 24          	mov    (%rsp),%rax
    1713:	83 38 00             	cmpl   $0x0,(%rax)
    1716:	74 60                	je     1778 <main+0x628>
    1718:	48 8b 04 24          	mov    (%rsp),%rax
    171c:	48 83 c0 04          	add    $0x4,%rax
    1720:	48 89 04 24          	mov    %rax,(%rsp)
    1724:	48 8b 04 24          	mov    (%rsp),%rax
    1728:	48 83 c0 04          	add    $0x4,%rax
    172c:	48 89 04 24          	mov    %rax,(%rsp)
    1730:	48 8b 04 24          	mov    (%rsp),%rax
    1734:	48 83 c0 04          	add    $0x4,%rax
    1738:	48 89 04 24          	mov    %rax,(%rsp)
    173c:	48 8b 04 24          	mov    (%rsp),%rax
    1740:	8b 08                	mov    (%rax),%ecx
    1742:	83 c1 01             	add    $0x1,%ecx
    1745:	89 08                	mov    %ecx,(%rax)
    1747:	48 8b 04 24          	mov    (%rsp),%rax
    174b:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    174f:	48 89 04 24          	mov    %rax,(%rsp)
    1753:	48 8b 04 24          	mov    (%rsp),%rax
    1757:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    175b:	48 89 04 24          	mov    %rax,(%rsp)
    175f:	48 8b 04 24          	mov    (%rsp),%rax
    1763:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1767:	48 89 04 24          	mov    %rax,(%rsp)
    176b:	48 8b 04 24          	mov    (%rsp),%rax
    176f:	8b 08                	mov    (%rax),%ecx
    1771:	83 c1 ff             	add    $0xffffffff,%ecx
    1774:	89 08                	mov    %ecx,(%rax)
    1776:	eb 97                	jmp    170f <main+0x5bf>
    1778:	48 8b 04 24          	mov    (%rsp),%rax
    177c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1780:	48 89 04 24          	mov    %rax,(%rsp)
    1784:	e9 db fe ff ff       	jmpq   1664 <main+0x514>
    1789:	48 8b 04 24          	mov    (%rsp),%rax
    178d:	83 38 00             	cmpl   $0x0,(%rax)
    1790:	74 02                	je     1794 <main+0x644>
    1792:	eb 1d                	jmp    17b1 <main+0x661>
    1794:	48 8b 04 24          	mov    (%rsp),%rax
    1798:	48 83 c0 04          	add    $0x4,%rax
    179c:	48 89 04 24          	mov    %rax,(%rsp)
    17a0:	48 8b 04 24          	mov    (%rsp),%rax
    17a4:	48 83 c0 04          	add    $0x4,%rax
    17a8:	48 89 04 24          	mov    %rax,(%rsp)
    17ac:	e9 45 01 00 00       	jmpq   18f6 <main+0x7a6>
    17b1:	48 8b 04 24          	mov    (%rsp),%rax
    17b5:	83 38 00             	cmpl   $0x0,(%rax)
    17b8:	74 0d                	je     17c7 <main+0x677>
    17ba:	48 8b 04 24          	mov    (%rsp),%rax
    17be:	8b 08                	mov    (%rax),%ecx
    17c0:	83 c1 ff             	add    $0xffffffff,%ecx
    17c3:	89 08                	mov    %ecx,(%rax)
    17c5:	eb ea                	jmp    17b1 <main+0x661>
    17c7:	48 8b 04 24          	mov    (%rsp),%rax
    17cb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    17cf:	48 89 04 24          	mov    %rax,(%rsp)
    17d3:	48 8b 04 24          	mov    (%rsp),%rax
    17d7:	8b 08                	mov    (%rax),%ecx
    17d9:	83 c1 01             	add    $0x1,%ecx
    17dc:	89 08                	mov    %ecx,(%rax)
    17de:	48 8b 04 24          	mov    (%rsp),%rax
    17e2:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    17e6:	48 89 04 24          	mov    %rax,(%rsp)
    17ea:	48 8b 04 24          	mov    (%rsp),%rax
    17ee:	83 38 00             	cmpl   $0x0,(%rax)
    17f1:	0f 84 e3 00 00 00    	je     18da <main+0x78a>
    17f7:	48 8b 04 24          	mov    (%rsp),%rax
    17fb:	48 83 c0 04          	add    $0x4,%rax
    17ff:	48 89 04 24          	mov    %rax,(%rsp)
    1803:	48 8b 04 24          	mov    (%rsp),%rax
    1807:	8b 08                	mov    (%rax),%ecx
    1809:	83 c1 01             	add    $0x1,%ecx
    180c:	89 08                	mov    %ecx,(%rax)
    180e:	48 8b 04 24          	mov    (%rsp),%rax
    1812:	8b 08                	mov    (%rax),%ecx
    1814:	83 c1 01             	add    $0x1,%ecx
    1817:	89 08                	mov    %ecx,(%rax)
    1819:	48 8b 04 24          	mov    (%rsp),%rax
    181d:	8b 08                	mov    (%rax),%ecx
    181f:	83 c1 01             	add    $0x1,%ecx
    1822:	89 08                	mov    %ecx,(%rax)
    1824:	48 8b 04 24          	mov    (%rsp),%rax
    1828:	8b 08                	mov    (%rax),%ecx
    182a:	83 c1 01             	add    $0x1,%ecx
    182d:	89 08                	mov    %ecx,(%rax)
    182f:	48 8b 04 24          	mov    (%rsp),%rax
    1833:	8b 08                	mov    (%rax),%ecx
    1835:	83 c1 01             	add    $0x1,%ecx
    1838:	89 08                	mov    %ecx,(%rax)
    183a:	48 8b 04 24          	mov    (%rsp),%rax
    183e:	8b 08                	mov    (%rax),%ecx
    1840:	83 c1 01             	add    $0x1,%ecx
    1843:	89 08                	mov    %ecx,(%rax)
    1845:	48 8b 04 24          	mov    (%rsp),%rax
    1849:	8b 08                	mov    (%rax),%ecx
    184b:	83 c1 01             	add    $0x1,%ecx
    184e:	89 08                	mov    %ecx,(%rax)
    1850:	48 8b 04 24          	mov    (%rsp),%rax
    1854:	8b 08                	mov    (%rax),%ecx
    1856:	83 c1 01             	add    $0x1,%ecx
    1859:	89 08                	mov    %ecx,(%rax)
    185b:	48 8b 04 24          	mov    (%rsp),%rax
    185f:	8b 08                	mov    (%rax),%ecx
    1861:	83 c1 01             	add    $0x1,%ecx
    1864:	89 08                	mov    %ecx,(%rax)
    1866:	48 8b 04 24          	mov    (%rsp),%rax
    186a:	8b 08                	mov    (%rax),%ecx
    186c:	83 c1 01             	add    $0x1,%ecx
    186f:	89 08                	mov    %ecx,(%rax)
    1871:	48 8b 04 24          	mov    (%rsp),%rax
    1875:	8b 08                	mov    (%rax),%ecx
    1877:	83 c1 01             	add    $0x1,%ecx
    187a:	89 08                	mov    %ecx,(%rax)
    187c:	48 8b 04 24          	mov    (%rsp),%rax
    1880:	8b 08                	mov    (%rax),%ecx
    1882:	83 c1 01             	add    $0x1,%ecx
    1885:	89 08                	mov    %ecx,(%rax)
    1887:	48 8b 04 24          	mov    (%rsp),%rax
    188b:	8b 08                	mov    (%rax),%ecx
    188d:	83 c1 01             	add    $0x1,%ecx
    1890:	89 08                	mov    %ecx,(%rax)
    1892:	48 8b 04 24          	mov    (%rsp),%rax
    1896:	8b 08                	mov    (%rax),%ecx
    1898:	83 c1 01             	add    $0x1,%ecx
    189b:	89 08                	mov    %ecx,(%rax)
    189d:	48 8b 04 24          	mov    (%rsp),%rax
    18a1:	8b 08                	mov    (%rax),%ecx
    18a3:	83 c1 01             	add    $0x1,%ecx
    18a6:	89 08                	mov    %ecx,(%rax)
    18a8:	48 8b 04 24          	mov    (%rsp),%rax
    18ac:	8b 08                	mov    (%rax),%ecx
    18ae:	83 c1 01             	add    $0x1,%ecx
    18b1:	89 08                	mov    %ecx,(%rax)
    18b3:	48 8b 04 24          	mov    (%rsp),%rax
    18b7:	8b 08                	mov    (%rax),%ecx
    18b9:	83 c1 01             	add    $0x1,%ecx
    18bc:	89 08                	mov    %ecx,(%rax)
    18be:	48 8b 04 24          	mov    (%rsp),%rax
    18c2:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    18c6:	48 89 04 24          	mov    %rax,(%rsp)
    18ca:	48 8b 04 24          	mov    (%rsp),%rax
    18ce:	8b 08                	mov    (%rax),%ecx
    18d0:	83 c1 ff             	add    $0xffffffff,%ecx
    18d3:	89 08                	mov    %ecx,(%rax)
    18d5:	e9 10 ff ff ff       	jmpq   17ea <main+0x69a>
    18da:	48 8b 04 24          	mov    (%rsp),%rax
    18de:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    18e2:	48 89 04 24          	mov    %rax,(%rsp)
    18e6:	48 8b 04 24          	mov    (%rsp),%rax
    18ea:	8b 08                	mov    (%rax),%ecx
    18ec:	83 c1 01             	add    $0x1,%ecx
    18ef:	89 08                	mov    %ecx,(%rax)
    18f1:	e9 93 fe ff ff       	jmpq   1789 <main+0x639>
    18f6:	48 8b 04 24          	mov    (%rsp),%rax
    18fa:	83 38 00             	cmpl   $0x0,(%rax)
    18fd:	74 02                	je     1901 <main+0x7b1>
    18ff:	eb 0a                	jmp    190b <main+0x7bb>
    1901:	31 c0                	xor    %eax,%eax
    1903:	48 81 c4 08 00 04 00 	add    $0x40008,%rsp
    190a:	c3                   	retq   
    190b:	48 8b 04 24          	mov    (%rsp),%rax
    190f:	83 38 00             	cmpl   $0x0,(%rax)
    1912:	0f 84 ef 00 00 00    	je     1a07 <main+0x8b7>
    1918:	48 8b 04 24          	mov    (%rsp),%rax
    191c:	8b 08                	mov    (%rax),%ecx
    191e:	83 c1 01             	add    $0x1,%ecx
    1921:	89 08                	mov    %ecx,(%rax)
    1923:	48 8b 04 24          	mov    (%rsp),%rax
    1927:	8b 08                	mov    (%rax),%ecx
    1929:	83 c1 01             	add    $0x1,%ecx
    192c:	89 08                	mov    %ecx,(%rax)
    192e:	48 8b 04 24          	mov    (%rsp),%rax
    1932:	8b 08                	mov    (%rax),%ecx
    1934:	83 c1 01             	add    $0x1,%ecx
    1937:	89 08                	mov    %ecx,(%rax)
    1939:	48 8b 04 24          	mov    (%rsp),%rax
    193d:	8b 08                	mov    (%rax),%ecx
    193f:	83 c1 01             	add    $0x1,%ecx
    1942:	89 08                	mov    %ecx,(%rax)
    1944:	48 8b 04 24          	mov    (%rsp),%rax
    1948:	8b 08                	mov    (%rax),%ecx
    194a:	83 c1 01             	add    $0x1,%ecx
    194d:	89 08                	mov    %ecx,(%rax)
    194f:	48 8b 04 24          	mov    (%rsp),%rax
    1953:	8b 08                	mov    (%rax),%ecx
    1955:	83 c1 01             	add    $0x1,%ecx
    1958:	89 08                	mov    %ecx,(%rax)
    195a:	48 8b 04 24          	mov    (%rsp),%rax
    195e:	8b 08                	mov    (%rax),%ecx
    1960:	83 c1 01             	add    $0x1,%ecx
    1963:	89 08                	mov    %ecx,(%rax)
    1965:	48 8b 04 24          	mov    (%rsp),%rax
    1969:	8b 08                	mov    (%rax),%ecx
    196b:	83 c1 01             	add    $0x1,%ecx
    196e:	89 08                	mov    %ecx,(%rax)
    1970:	48 8b 04 24          	mov    (%rsp),%rax
    1974:	8b 08                	mov    (%rax),%ecx
    1976:	83 c1 01             	add    $0x1,%ecx
    1979:	89 08                	mov    %ecx,(%rax)
    197b:	48 8b 04 24          	mov    (%rsp),%rax
    197f:	8b 38                	mov    (%rax),%edi
    1981:	e8 aa f6 ff ff       	callq  1030 <putchar@plt>
    1986:	48 8b 04 24          	mov    (%rsp),%rax
    198a:	8b 08                	mov    (%rax),%ecx
    198c:	83 c1 ff             	add    $0xffffffff,%ecx
    198f:	89 08                	mov    %ecx,(%rax)
    1991:	48 8b 04 24          	mov    (%rsp),%rax
    1995:	8b 08                	mov    (%rax),%ecx
    1997:	83 c1 ff             	add    $0xffffffff,%ecx
    199a:	89 08                	mov    %ecx,(%rax)
    199c:	48 8b 04 24          	mov    (%rsp),%rax
    19a0:	8b 08                	mov    (%rax),%ecx
    19a2:	83 c1 ff             	add    $0xffffffff,%ecx
    19a5:	89 08                	mov    %ecx,(%rax)
    19a7:	48 8b 04 24          	mov    (%rsp),%rax
    19ab:	8b 08                	mov    (%rax),%ecx
    19ad:	83 c1 ff             	add    $0xffffffff,%ecx
    19b0:	89 08                	mov    %ecx,(%rax)
    19b2:	48 8b 04 24          	mov    (%rsp),%rax
    19b6:	8b 08                	mov    (%rax),%ecx
    19b8:	83 c1 ff             	add    $0xffffffff,%ecx
    19bb:	89 08                	mov    %ecx,(%rax)
    19bd:	48 8b 04 24          	mov    (%rsp),%rax
    19c1:	8b 08                	mov    (%rax),%ecx
    19c3:	83 c1 ff             	add    $0xffffffff,%ecx
    19c6:	89 08                	mov    %ecx,(%rax)
    19c8:	48 8b 04 24          	mov    (%rsp),%rax
    19cc:	8b 08                	mov    (%rax),%ecx
    19ce:	83 c1 ff             	add    $0xffffffff,%ecx
    19d1:	89 08                	mov    %ecx,(%rax)
    19d3:	48 8b 04 24          	mov    (%rsp),%rax
    19d7:	8b 08                	mov    (%rax),%ecx
    19d9:	83 c1 ff             	add    $0xffffffff,%ecx
    19dc:	89 08                	mov    %ecx,(%rax)
    19de:	48 8b 04 24          	mov    (%rsp),%rax
    19e2:	48 83 c0 04          	add    $0x4,%rax
    19e6:	48 89 04 24          	mov    %rax,(%rsp)
    19ea:	48 8b 04 24          	mov    (%rsp),%rax
    19ee:	48 83 c0 04          	add    $0x4,%rax
    19f2:	48 89 04 24          	mov    %rax,(%rsp)
    19f6:	48 8b 04 24          	mov    (%rsp),%rax
    19fa:	48 83 c0 04          	add    $0x4,%rax
    19fe:	48 89 04 24          	mov    %rax,(%rsp)
    1a02:	e9 04 ff ff ff       	jmpq   190b <main+0x7bb>
    1a07:	48 8b 04 24          	mov    (%rsp),%rax
    1a0b:	8b 08                	mov    (%rax),%ecx
    1a0d:	83 c1 01             	add    $0x1,%ecx
    1a10:	89 08                	mov    %ecx,(%rax)
    1a12:	48 8b 04 24          	mov    (%rsp),%rax
    1a16:	83 38 00             	cmpl   $0x0,(%rax)
    1a19:	74 31                	je     1a4c <main+0x8fc>
    1a1b:	48 8b 04 24          	mov    (%rsp),%rax
    1a1f:	8b 08                	mov    (%rax),%ecx
    1a21:	83 c1 ff             	add    $0xffffffff,%ecx
    1a24:	89 08                	mov    %ecx,(%rax)
    1a26:	48 8b 04 24          	mov    (%rsp),%rax
    1a2a:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1a2e:	48 89 04 24          	mov    %rax,(%rsp)
    1a32:	48 8b 04 24          	mov    (%rsp),%rax
    1a36:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1a3a:	48 89 04 24          	mov    %rax,(%rsp)
    1a3e:	48 8b 04 24          	mov    (%rsp),%rax
    1a42:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1a46:	48 89 04 24          	mov    %rax,(%rsp)
    1a4a:	eb c6                	jmp    1a12 <main+0x8c2>
    1a4c:	48 8b 04 24          	mov    (%rsp),%rax
    1a50:	48 83 c0 04          	add    $0x4,%rax
    1a54:	48 89 04 24          	mov    %rax,(%rsp)
    1a58:	48 8b 04 24          	mov    (%rsp),%rax
    1a5c:	48 83 c0 04          	add    $0x4,%rax
    1a60:	48 89 04 24          	mov    %rax,(%rsp)
    1a64:	48 8b 04 24          	mov    (%rsp),%rax
    1a68:	48 83 c0 04          	add    $0x4,%rax
    1a6c:	48 89 04 24          	mov    %rax,(%rsp)
    1a70:	48 8b 04 24          	mov    (%rsp),%rax
    1a74:	83 38 00             	cmpl   $0x0,(%rax)
    1a77:	0f 84 90 00 00 00    	je     1b0d <main+0x9bd>
    1a7d:	48 8b 04 24          	mov    (%rsp),%rax
    1a81:	48 83 c0 04          	add    $0x4,%rax
    1a85:	48 89 04 24          	mov    %rax,(%rsp)
    1a89:	48 8b 04 24          	mov    (%rsp),%rax
    1a8d:	48 83 c0 04          	add    $0x4,%rax
    1a91:	48 89 04 24          	mov    %rax,(%rsp)
    1a95:	e8 a6 f5 ff ff       	callq  1040 <getchar@plt>
    1a9a:	89 04 24             	mov    %eax,(%rsp)
    1a9d:	48 8b 04 24          	mov    (%rsp),%rax
    1aa1:	8b 08                	mov    (%rax),%ecx
    1aa3:	83 c1 ff             	add    $0xffffffff,%ecx
    1aa6:	89 08                	mov    %ecx,(%rax)
    1aa8:	48 8b 04 24          	mov    (%rsp),%rax
    1aac:	8b 08                	mov    (%rax),%ecx
    1aae:	83 c1 ff             	add    $0xffffffff,%ecx
    1ab1:	89 08                	mov    %ecx,(%rax)
    1ab3:	48 8b 04 24          	mov    (%rsp),%rax
    1ab7:	8b 08                	mov    (%rax),%ecx
    1ab9:	83 c1 ff             	add    $0xffffffff,%ecx
    1abc:	89 08                	mov    %ecx,(%rax)
    1abe:	48 8b 04 24          	mov    (%rsp),%rax
    1ac2:	8b 08                	mov    (%rax),%ecx
    1ac4:	83 c1 ff             	add    $0xffffffff,%ecx
    1ac7:	89 08                	mov    %ecx,(%rax)
    1ac9:	48 8b 04 24          	mov    (%rsp),%rax
    1acd:	8b 08                	mov    (%rax),%ecx
    1acf:	83 c1 ff             	add    $0xffffffff,%ecx
    1ad2:	89 08                	mov    %ecx,(%rax)
    1ad4:	48 8b 04 24          	mov    (%rsp),%rax
    1ad8:	8b 08                	mov    (%rax),%ecx
    1ada:	83 c1 ff             	add    $0xffffffff,%ecx
    1add:	89 08                	mov    %ecx,(%rax)
    1adf:	48 8b 04 24          	mov    (%rsp),%rax
    1ae3:	8b 08                	mov    (%rax),%ecx
    1ae5:	83 c1 ff             	add    $0xffffffff,%ecx
    1ae8:	89 08                	mov    %ecx,(%rax)
    1aea:	48 8b 04 24          	mov    (%rsp),%rax
    1aee:	8b 08                	mov    (%rax),%ecx
    1af0:	83 c1 ff             	add    $0xffffffff,%ecx
    1af3:	89 08                	mov    %ecx,(%rax)
    1af5:	48 8b 04 24          	mov    (%rsp),%rax
    1af9:	8b 08                	mov    (%rax),%ecx
    1afb:	83 c1 ff             	add    $0xffffffff,%ecx
    1afe:	89 08                	mov    %ecx,(%rax)
    1b00:	48 8b 04 24          	mov    (%rsp),%rax
    1b04:	8b 08                	mov    (%rax),%ecx
    1b06:	83 c1 ff             	add    $0xffffffff,%ecx
    1b09:	89 08                	mov    %ecx,(%rax)
    1b0b:	eb 1a                	jmp    1b27 <main+0x9d7>
    1b0d:	48 8b 04 24          	mov    (%rsp),%rax
    1b11:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b15:	48 89 04 24          	mov    %rax,(%rsp)
    1b19:	48 8b 04 24          	mov    (%rsp),%rax
    1b1d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b21:	48 89 04 24          	mov    %rax,(%rsp)
    1b25:	eb 28                	jmp    1b4f <main+0x9ff>
    1b27:	48 8b 04 24          	mov    (%rsp),%rax
    1b2b:	83 38 00             	cmpl   $0x0,(%rax)
    1b2e:	74 0e                	je     1b3e <main+0x9ee>
    1b30:	48 8b 04 24          	mov    (%rsp),%rax
    1b34:	48 83 c0 04          	add    $0x4,%rax
    1b38:	48 89 04 24          	mov    %rax,(%rsp)
    1b3c:	eb e9                	jmp    1b27 <main+0x9d7>
    1b3e:	48 8b 04 24          	mov    (%rsp),%rax
    1b42:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b46:	48 89 04 24          	mov    %rax,(%rsp)
    1b4a:	e9 21 ff ff ff       	jmpq   1a70 <main+0x920>
    1b4f:	48 8b 04 24          	mov    (%rsp),%rax
    1b53:	83 38 00             	cmpl   $0x0,(%rax)
    1b56:	74 26                	je     1b7e <main+0xa2e>
    1b58:	48 8b 04 24          	mov    (%rsp),%rax
    1b5c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b60:	48 89 04 24          	mov    %rax,(%rsp)
    1b64:	48 8b 04 24          	mov    (%rsp),%rax
    1b68:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b6c:	48 89 04 24          	mov    %rax,(%rsp)
    1b70:	48 8b 04 24          	mov    (%rsp),%rax
    1b74:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1b78:	48 89 04 24          	mov    %rax,(%rsp)
    1b7c:	eb 11                	jmp    1b8f <main+0xa3f>
    1b7e:	48 8b 04 24          	mov    (%rsp),%rax
    1b82:	48 83 c0 04          	add    $0x4,%rax
    1b86:	48 89 04 24          	mov    %rax,(%rsp)
    1b8a:	e9 48 04 00 00       	jmpq   1fd7 <main+0xe87>
    1b8f:	48 8b 04 24          	mov    (%rsp),%rax
    1b93:	83 38 00             	cmpl   $0x0,(%rax)
    1b96:	74 24                	je     1bbc <main+0xa6c>
    1b98:	48 8b 04 24          	mov    (%rsp),%rax
    1b9c:	48 83 c0 04          	add    $0x4,%rax
    1ba0:	48 89 04 24          	mov    %rax,(%rsp)
    1ba4:	48 8b 04 24          	mov    (%rsp),%rax
    1ba8:	8b 08                	mov    (%rax),%ecx
    1baa:	83 c1 ff             	add    $0xffffffff,%ecx
    1bad:	89 08                	mov    %ecx,(%rax)
    1baf:	48 8b 04 24          	mov    (%rsp),%rax
    1bb3:	8b 08                	mov    (%rax),%ecx
    1bb5:	83 c1 ff             	add    $0xffffffff,%ecx
    1bb8:	89 08                	mov    %ecx,(%rax)
    1bba:	eb 0e                	jmp    1bca <main+0xa7a>
    1bbc:	48 8b 04 24          	mov    (%rsp),%rax
    1bc0:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1bc4:	48 89 04 24          	mov    %rax,(%rsp)
    1bc8:	eb 85                	jmp    1b4f <main+0x9ff>
    1bca:	48 8b 04 24          	mov    (%rsp),%rax
    1bce:	83 38 00             	cmpl   $0x0,(%rax)
    1bd1:	74 76                	je     1c49 <main+0xaf9>
    1bd3:	48 8b 04 24          	mov    (%rsp),%rax
    1bd7:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1bdb:	48 89 04 24          	mov    %rax,(%rsp)
    1bdf:	48 8b 04 24          	mov    (%rsp),%rax
    1be3:	8b 08                	mov    (%rax),%ecx
    1be5:	83 c1 ff             	add    $0xffffffff,%ecx
    1be8:	89 08                	mov    %ecx,(%rax)
    1bea:	48 8b 04 24          	mov    (%rsp),%rax
    1bee:	48 83 c0 04          	add    $0x4,%rax
    1bf2:	48 89 04 24          	mov    %rax,(%rsp)
    1bf6:	48 8b 04 24          	mov    (%rsp),%rax
    1bfa:	48 83 c0 04          	add    $0x4,%rax
    1bfe:	48 89 04 24          	mov    %rax,(%rsp)
    1c02:	48 8b 04 24          	mov    (%rsp),%rax
    1c06:	8b 08                	mov    (%rax),%ecx
    1c08:	83 c1 01             	add    $0x1,%ecx
    1c0b:	89 08                	mov    %ecx,(%rax)
    1c0d:	48 8b 04 24          	mov    (%rsp),%rax
    1c11:	48 83 c0 04          	add    $0x4,%rax
    1c15:	48 89 04 24          	mov    %rax,(%rsp)
    1c19:	48 8b 04 24          	mov    (%rsp),%rax
    1c1d:	8b 08                	mov    (%rax),%ecx
    1c1f:	83 c1 ff             	add    $0xffffffff,%ecx
    1c22:	89 08                	mov    %ecx,(%rax)
    1c24:	48 8b 04 24          	mov    (%rsp),%rax
    1c28:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1c2c:	48 89 04 24          	mov    %rax,(%rsp)
    1c30:	48 8b 04 24          	mov    (%rsp),%rax
    1c34:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1c38:	48 89 04 24          	mov    %rax,(%rsp)
    1c3c:	48 8b 04 24          	mov    (%rsp),%rax
    1c40:	8b 08                	mov    (%rax),%ecx
    1c42:	83 c1 ff             	add    $0xffffffff,%ecx
    1c45:	89 08                	mov    %ecx,(%rax)
    1c47:	eb 81                	jmp    1bca <main+0xa7a>
    1c49:	48 8b 04 24          	mov    (%rsp),%rax
    1c4d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1c51:	48 89 04 24          	mov    %rax,(%rsp)
    1c55:	48 8b 04 24          	mov    (%rsp),%rax
    1c59:	83 38 00             	cmpl   $0x0,(%rax)
    1c5c:	74 02                	je     1c60 <main+0xb10>
    1c5e:	eb 33                	jmp    1c93 <main+0xb43>
    1c60:	48 8b 04 24          	mov    (%rsp),%rax
    1c64:	48 83 c0 04          	add    $0x4,%rax
    1c68:	48 89 04 24          	mov    %rax,(%rsp)
    1c6c:	48 8b 04 24          	mov    (%rsp),%rax
    1c70:	8b 08                	mov    (%rax),%ecx
    1c72:	83 c1 01             	add    $0x1,%ecx
    1c75:	89 08                	mov    %ecx,(%rax)
    1c77:	48 8b 04 24          	mov    (%rsp),%rax
    1c7b:	8b 08                	mov    (%rax),%ecx
    1c7d:	83 c1 01             	add    $0x1,%ecx
    1c80:	89 08                	mov    %ecx,(%rax)
    1c82:	48 8b 04 24          	mov    (%rsp),%rax
    1c86:	48 83 c0 04          	add    $0x4,%rax
    1c8a:	48 89 04 24          	mov    %rax,(%rsp)
    1c8e:	e9 f7 00 00 00       	jmpq   1d8a <main+0xc3a>
    1c93:	48 8b 04 24          	mov    (%rsp),%rax
    1c97:	83 38 00             	cmpl   $0x0,(%rax)
    1c9a:	74 26                	je     1cc2 <main+0xb72>
    1c9c:	48 8b 04 24          	mov    (%rsp),%rax
    1ca0:	48 83 c0 04          	add    $0x4,%rax
    1ca4:	48 89 04 24          	mov    %rax,(%rsp)
    1ca8:	48 8b 04 24          	mov    (%rsp),%rax
    1cac:	48 83 c0 04          	add    $0x4,%rax
    1cb0:	48 89 04 24          	mov    %rax,(%rsp)
    1cb4:	48 8b 04 24          	mov    (%rsp),%rax
    1cb8:	48 83 c0 04          	add    $0x4,%rax
    1cbc:	48 89 04 24          	mov    %rax,(%rsp)
    1cc0:	eb d1                	jmp    1c93 <main+0xb43>
    1cc2:	48 8b 04 24          	mov    (%rsp),%rax
    1cc6:	8b 08                	mov    (%rax),%ecx
    1cc8:	83 c1 01             	add    $0x1,%ecx
    1ccb:	89 08                	mov    %ecx,(%rax)
    1ccd:	48 8b 04 24          	mov    (%rsp),%rax
    1cd1:	48 83 c0 04          	add    $0x4,%rax
    1cd5:	48 89 04 24          	mov    %rax,(%rsp)
    1cd9:	48 8b 04 24          	mov    (%rsp),%rax
    1cdd:	8b 08                	mov    (%rax),%ecx
    1cdf:	83 c1 ff             	add    $0xffffffff,%ecx
    1ce2:	89 08                	mov    %ecx,(%rax)
    1ce4:	48 8b 04 24          	mov    (%rsp),%rax
    1ce8:	83 38 00             	cmpl   $0x0,(%rax)
    1ceb:	74 47                	je     1d34 <main+0xbe4>
    1ced:	48 8b 04 24          	mov    (%rsp),%rax
    1cf1:	8b 08                	mov    (%rax),%ecx
    1cf3:	83 c1 01             	add    $0x1,%ecx
    1cf6:	89 08                	mov    %ecx,(%rax)
    1cf8:	48 8b 04 24          	mov    (%rsp),%rax
    1cfc:	48 83 c0 04          	add    $0x4,%rax
    1d00:	48 89 04 24          	mov    %rax,(%rsp)
    1d04:	48 8b 04 24          	mov    (%rsp),%rax
    1d08:	48 83 c0 04          	add    $0x4,%rax
    1d0c:	48 89 04 24          	mov    %rax,(%rsp)
    1d10:	48 8b 04 24          	mov    (%rsp),%rax
    1d14:	8b 08                	mov    (%rax),%ecx
    1d16:	83 c1 01             	add    $0x1,%ecx
    1d19:	89 08                	mov    %ecx,(%rax)
    1d1b:	48 8b 04 24          	mov    (%rsp),%rax
    1d1f:	48 83 c0 04          	add    $0x4,%rax
    1d23:	48 89 04 24          	mov    %rax,(%rsp)
    1d27:	48 8b 04 24          	mov    (%rsp),%rax
    1d2b:	8b 08                	mov    (%rax),%ecx
    1d2d:	83 c1 ff             	add    $0xffffffff,%ecx
    1d30:	89 08                	mov    %ecx,(%rax)
    1d32:	eb b0                	jmp    1ce4 <main+0xb94>
    1d34:	48 8b 04 24          	mov    (%rsp),%rax
    1d38:	8b 08                	mov    (%rax),%ecx
    1d3a:	83 c1 01             	add    $0x1,%ecx
    1d3d:	89 08                	mov    %ecx,(%rax)
    1d3f:	48 8b 04 24          	mov    (%rsp),%rax
    1d43:	83 38 00             	cmpl   $0x0,(%rax)
    1d46:	74 26                	je     1d6e <main+0xc1e>
    1d48:	48 8b 04 24          	mov    (%rsp),%rax
    1d4c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1d50:	48 89 04 24          	mov    %rax,(%rsp)
    1d54:	48 8b 04 24          	mov    (%rsp),%rax
    1d58:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1d5c:	48 89 04 24          	mov    %rax,(%rsp)
    1d60:	48 8b 04 24          	mov    (%rsp),%rax
    1d64:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1d68:	48 89 04 24          	mov    %rax,(%rsp)
    1d6c:	eb d1                	jmp    1d3f <main+0xbef>
    1d6e:	48 8b 04 24          	mov    (%rsp),%rax
    1d72:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1d76:	48 89 04 24          	mov    %rax,(%rsp)
    1d7a:	48 8b 04 24          	mov    (%rsp),%rax
    1d7e:	8b 08                	mov    (%rax),%ecx
    1d80:	83 c1 ff             	add    $0xffffffff,%ecx
    1d83:	89 08                	mov    %ecx,(%rax)
    1d85:	e9 cb fe ff ff       	jmpq   1c55 <main+0xb05>
    1d8a:	48 8b 04 24          	mov    (%rsp),%rax
    1d8e:	83 38 00             	cmpl   $0x0,(%rax)
    1d91:	74 30                	je     1dc3 <main+0xc73>
    1d93:	48 8b 04 24          	mov    (%rsp),%rax
    1d97:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1d9b:	48 89 04 24          	mov    %rax,(%rsp)
    1d9f:	48 8b 04 24          	mov    (%rsp),%rax
    1da3:	8b 08                	mov    (%rax),%ecx
    1da5:	83 c1 01             	add    $0x1,%ecx
    1da8:	89 08                	mov    %ecx,(%rax)
    1daa:	48 8b 04 24          	mov    (%rsp),%rax
    1dae:	48 83 c0 04          	add    $0x4,%rax
    1db2:	48 89 04 24          	mov    %rax,(%rsp)
    1db6:	48 8b 04 24          	mov    (%rsp),%rax
    1dba:	8b 08                	mov    (%rax),%ecx
    1dbc:	83 c1 ff             	add    $0xffffffff,%ecx
    1dbf:	89 08                	mov    %ecx,(%rax)
    1dc1:	eb c7                	jmp    1d8a <main+0xc3a>
    1dc3:	48 8b 04 24          	mov    (%rsp),%rax
    1dc7:	48 83 c0 04          	add    $0x4,%rax
    1dcb:	48 89 04 24          	mov    %rax,(%rsp)
    1dcf:	48 8b 04 24          	mov    (%rsp),%rax
    1dd3:	83 38 00             	cmpl   $0x0,(%rax)
    1dd6:	74 02                	je     1dda <main+0xc8a>
    1dd8:	eb 10                	jmp    1dea <main+0xc9a>
    1dda:	48 8b 04 24          	mov    (%rsp),%rax
    1dde:	8b 08                	mov    (%rax),%ecx
    1de0:	83 c1 01             	add    $0x1,%ecx
    1de3:	89 08                	mov    %ecx,(%rax)
    1de5:	e9 9d 00 00 00       	jmpq   1e87 <main+0xd37>
    1dea:	48 8b 04 24          	mov    (%rsp),%rax
    1dee:	83 38 00             	cmpl   $0x0,(%rax)
    1df1:	74 26                	je     1e19 <main+0xcc9>
    1df3:	48 8b 04 24          	mov    (%rsp),%rax
    1df7:	48 83 c0 04          	add    $0x4,%rax
    1dfb:	48 89 04 24          	mov    %rax,(%rsp)
    1dff:	48 8b 04 24          	mov    (%rsp),%rax
    1e03:	48 83 c0 04          	add    $0x4,%rax
    1e07:	48 89 04 24          	mov    %rax,(%rsp)
    1e0b:	48 8b 04 24          	mov    (%rsp),%rax
    1e0f:	48 83 c0 04          	add    $0x4,%rax
    1e13:	48 89 04 24          	mov    %rax,(%rsp)
    1e17:	eb d1                	jmp    1dea <main+0xc9a>
    1e19:	48 8b 04 24          	mov    (%rsp),%rax
    1e1d:	8b 08                	mov    (%rax),%ecx
    1e1f:	83 c1 01             	add    $0x1,%ecx
    1e22:	89 08                	mov    %ecx,(%rax)
    1e24:	48 8b 04 24          	mov    (%rsp),%rax
    1e28:	83 38 00             	cmpl   $0x0,(%rax)
    1e2b:	74 26                	je     1e53 <main+0xd03>
    1e2d:	48 8b 04 24          	mov    (%rsp),%rax
    1e31:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1e35:	48 89 04 24          	mov    %rax,(%rsp)
    1e39:	48 8b 04 24          	mov    (%rsp),%rax
    1e3d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1e41:	48 89 04 24          	mov    %rax,(%rsp)
    1e45:	48 8b 04 24          	mov    (%rsp),%rax
    1e49:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1e4d:	48 89 04 24          	mov    %rax,(%rsp)
    1e51:	eb d1                	jmp    1e24 <main+0xcd4>
    1e53:	48 8b 04 24          	mov    (%rsp),%rax
    1e57:	48 83 c0 04          	add    $0x4,%rax
    1e5b:	48 89 04 24          	mov    %rax,(%rsp)
    1e5f:	48 8b 04 24          	mov    (%rsp),%rax
    1e63:	48 83 c0 04          	add    $0x4,%rax
    1e67:	48 89 04 24          	mov    %rax,(%rsp)
    1e6b:	48 8b 04 24          	mov    (%rsp),%rax
    1e6f:	48 83 c0 04          	add    $0x4,%rax
    1e73:	48 89 04 24          	mov    %rax,(%rsp)
    1e77:	48 8b 04 24          	mov    (%rsp),%rax
    1e7b:	8b 08                	mov    (%rax),%ecx
    1e7d:	83 c1 ff             	add    $0xffffffff,%ecx
    1e80:	89 08                	mov    %ecx,(%rax)
    1e82:	e9 48 ff ff ff       	jmpq   1dcf <main+0xc7f>
    1e87:	48 8b 04 24          	mov    (%rsp),%rax
    1e8b:	83 38 00             	cmpl   $0x0,(%rax)
    1e8e:	74 31                	je     1ec1 <main+0xd71>
    1e90:	48 8b 04 24          	mov    (%rsp),%rax
    1e94:	8b 08                	mov    (%rax),%ecx
    1e96:	83 c1 ff             	add    $0xffffffff,%ecx
    1e99:	89 08                	mov    %ecx,(%rax)
    1e9b:	48 8b 04 24          	mov    (%rsp),%rax
    1e9f:	48 83 c0 04          	add    $0x4,%rax
    1ea3:	48 89 04 24          	mov    %rax,(%rsp)
    1ea7:	48 8b 04 24          	mov    (%rsp),%rax
    1eab:	48 83 c0 04          	add    $0x4,%rax
    1eaf:	48 89 04 24          	mov    %rax,(%rsp)
    1eb3:	48 8b 04 24          	mov    (%rsp),%rax
    1eb7:	48 83 c0 04          	add    $0x4,%rax
    1ebb:	48 89 04 24          	mov    %rax,(%rsp)
    1ebf:	eb c6                	jmp    1e87 <main+0xd37>
    1ec1:	48 8b 04 24          	mov    (%rsp),%rax
    1ec5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1ec9:	48 89 04 24          	mov    %rax,(%rsp)
    1ecd:	48 8b 04 24          	mov    (%rsp),%rax
    1ed1:	8b 08                	mov    (%rax),%ecx
    1ed3:	83 c1 ff             	add    $0xffffffff,%ecx
    1ed6:	89 08                	mov    %ecx,(%rax)
    1ed8:	48 8b 04 24          	mov    (%rsp),%rax
    1edc:	83 38 00             	cmpl   $0x0,(%rax)
    1edf:	74 24                	je     1f05 <main+0xdb5>
    1ee1:	48 8b 04 24          	mov    (%rsp),%rax
    1ee5:	8b 08                	mov    (%rax),%ecx
    1ee7:	83 c1 01             	add    $0x1,%ecx
    1eea:	89 08                	mov    %ecx,(%rax)
    1eec:	48 8b 04 24          	mov    (%rsp),%rax
    1ef0:	8b 08                	mov    (%rax),%ecx
    1ef2:	83 c1 01             	add    $0x1,%ecx
    1ef5:	89 08                	mov    %ecx,(%rax)
    1ef7:	48 8b 04 24          	mov    (%rsp),%rax
    1efb:	48 83 c0 04          	add    $0x4,%rax
    1eff:	48 89 04 24          	mov    %rax,(%rsp)
    1f03:	eb d3                	jmp    1ed8 <main+0xd88>
    1f05:	48 8b 04 24          	mov    (%rsp),%rax
    1f09:	48 83 c0 04          	add    $0x4,%rax
    1f0d:	48 89 04 24          	mov    %rax,(%rsp)
    1f11:	48 8b 04 24          	mov    (%rsp),%rax
    1f15:	83 38 00             	cmpl   $0x0,(%rax)
    1f18:	74 50                	je     1f6a <main+0xe1a>
    1f1a:	48 8b 04 24          	mov    (%rsp),%rax
    1f1e:	8b 08                	mov    (%rax),%ecx
    1f20:	83 c1 ff             	add    $0xffffffff,%ecx
    1f23:	89 08                	mov    %ecx,(%rax)
    1f25:	48 8b 04 24          	mov    (%rsp),%rax
    1f29:	8b 08                	mov    (%rax),%ecx
    1f2b:	83 c1 ff             	add    $0xffffffff,%ecx
    1f2e:	89 08                	mov    %ecx,(%rax)
    1f30:	48 8b 04 24          	mov    (%rsp),%rax
    1f34:	8b 08                	mov    (%rax),%ecx
    1f36:	83 c1 ff             	add    $0xffffffff,%ecx
    1f39:	89 08                	mov    %ecx,(%rax)
    1f3b:	48 8b 04 24          	mov    (%rsp),%rax
    1f3f:	8b 08                	mov    (%rax),%ecx
    1f41:	83 c1 ff             	add    $0xffffffff,%ecx
    1f44:	89 08                	mov    %ecx,(%rax)
    1f46:	48 8b 04 24          	mov    (%rsp),%rax
    1f4a:	8b 08                	mov    (%rax),%ecx
    1f4c:	83 c1 ff             	add    $0xffffffff,%ecx
    1f4f:	89 08                	mov    %ecx,(%rax)
    1f51:	48 8b 04 24          	mov    (%rsp),%rax
    1f55:	8b 08                	mov    (%rax),%ecx
    1f57:	83 c1 ff             	add    $0xffffffff,%ecx
    1f5a:	89 08                	mov    %ecx,(%rax)
    1f5c:	48 8b 04 24          	mov    (%rsp),%rax
    1f60:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1f64:	48 89 04 24          	mov    %rax,(%rsp)
    1f68:	eb a7                	jmp    1f11 <main+0xdc1>
    1f6a:	48 8b 04 24          	mov    (%rsp),%rax
    1f6e:	48 83 c0 04          	add    $0x4,%rax
    1f72:	48 89 04 24          	mov    %rax,(%rsp)
    1f76:	48 8b 04 24          	mov    (%rsp),%rax
    1f7a:	8b 08                	mov    (%rax),%ecx
    1f7c:	83 c1 01             	add    $0x1,%ecx
    1f7f:	89 08                	mov    %ecx,(%rax)
    1f81:	48 8b 04 24          	mov    (%rsp),%rax
    1f85:	8b 08                	mov    (%rax),%ecx
    1f87:	83 c1 01             	add    $0x1,%ecx
    1f8a:	89 08                	mov    %ecx,(%rax)
    1f8c:	48 8b 04 24          	mov    (%rsp),%rax
    1f90:	8b 08                	mov    (%rax),%ecx
    1f92:	83 c1 01             	add    $0x1,%ecx
    1f95:	89 08                	mov    %ecx,(%rax)
    1f97:	48 8b 04 24          	mov    (%rsp),%rax
    1f9b:	83 38 00             	cmpl   $0x0,(%rax)
    1f9e:	74 26                	je     1fc6 <main+0xe76>
    1fa0:	48 8b 04 24          	mov    (%rsp),%rax
    1fa4:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1fa8:	48 89 04 24          	mov    %rax,(%rsp)
    1fac:	48 8b 04 24          	mov    (%rsp),%rax
    1fb0:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1fb4:	48 89 04 24          	mov    %rax,(%rsp)
    1fb8:	48 8b 04 24          	mov    (%rsp),%rax
    1fbc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    1fc0:	48 89 04 24          	mov    %rax,(%rsp)
    1fc4:	eb d1                	jmp    1f97 <main+0xe47>
    1fc6:	48 8b 04 24          	mov    (%rsp),%rax
    1fca:	48 83 c0 04          	add    $0x4,%rax
    1fce:	48 89 04 24          	mov    %rax,(%rsp)
    1fd2:	e9 b8 fb ff ff       	jmpq   1b8f <main+0xa3f>
    1fd7:	48 8b 04 24          	mov    (%rsp),%rax
    1fdb:	83 38 00             	cmpl   $0x0,(%rax)
    1fde:	74 0d                	je     1fed <main+0xe9d>
    1fe0:	48 8b 04 24          	mov    (%rsp),%rax
    1fe4:	8b 08                	mov    (%rax),%ecx
    1fe6:	83 c1 ff             	add    $0xffffffff,%ecx
    1fe9:	89 08                	mov    %ecx,(%rax)
    1feb:	eb 1d                	jmp    200a <main+0xeba>
    1fed:	48 8b 04 24          	mov    (%rsp),%rax
    1ff1:	48 83 c0 04          	add    $0x4,%rax
    1ff5:	48 89 04 24          	mov    %rax,(%rsp)
    1ff9:	48 8b 04 24          	mov    (%rsp),%rax
    1ffd:	48 83 c0 04          	add    $0x4,%rax
    2001:	48 89 04 24          	mov    %rax,(%rsp)
    2005:	e9 ec f8 ff ff       	jmpq   18f6 <main+0x7a6>
    200a:	48 8b 04 24          	mov    (%rsp),%rax
    200e:	83 38 00             	cmpl   $0x0,(%rax)
    2011:	74 47                	je     205a <main+0xf0a>
    2013:	48 8b 04 24          	mov    (%rsp),%rax
    2017:	8b 08                	mov    (%rax),%ecx
    2019:	83 c1 01             	add    $0x1,%ecx
    201c:	89 08                	mov    %ecx,(%rax)
    201e:	48 8b 04 24          	mov    (%rsp),%rax
    2022:	48 83 c0 04          	add    $0x4,%rax
    2026:	48 89 04 24          	mov    %rax,(%rsp)
    202a:	48 8b 04 24          	mov    (%rsp),%rax
    202e:	48 83 c0 04          	add    $0x4,%rax
    2032:	48 89 04 24          	mov    %rax,(%rsp)
    2036:	48 8b 04 24          	mov    (%rsp),%rax
    203a:	8b 08                	mov    (%rax),%ecx
    203c:	83 c1 01             	add    $0x1,%ecx
    203f:	89 08                	mov    %ecx,(%rax)
    2041:	48 8b 04 24          	mov    (%rsp),%rax
    2045:	48 83 c0 04          	add    $0x4,%rax
    2049:	48 89 04 24          	mov    %rax,(%rsp)
    204d:	48 8b 04 24          	mov    (%rsp),%rax
    2051:	8b 08                	mov    (%rax),%ecx
    2053:	83 c1 ff             	add    $0xffffffff,%ecx
    2056:	89 08                	mov    %ecx,(%rax)
    2058:	eb b0                	jmp    200a <main+0xeba>
    205a:	48 8b 04 24          	mov    (%rsp),%rax
    205e:	8b 08                	mov    (%rax),%ecx
    2060:	83 c1 01             	add    $0x1,%ecx
    2063:	89 08                	mov    %ecx,(%rax)
    2065:	48 8b 04 24          	mov    (%rsp),%rax
    2069:	48 83 c0 04          	add    $0x4,%rax
    206d:	48 89 04 24          	mov    %rax,(%rsp)
    2071:	48 8b 04 24          	mov    (%rsp),%rax
    2075:	48 83 c0 04          	add    $0x4,%rax
    2079:	48 89 04 24          	mov    %rax,(%rsp)
    207d:	48 8b 04 24          	mov    (%rsp),%rax
    2081:	8b 08                	mov    (%rax),%ecx
    2083:	83 c1 01             	add    $0x1,%ecx
    2086:	89 08                	mov    %ecx,(%rax)
    2088:	48 8b 04 24          	mov    (%rsp),%rax
    208c:	48 83 c0 04          	add    $0x4,%rax
    2090:	48 89 04 24          	mov    %rax,(%rsp)
    2094:	48 8b 04 24          	mov    (%rsp),%rax
    2098:	48 83 c0 04          	add    $0x4,%rax
    209c:	48 89 04 24          	mov    %rax,(%rsp)
    20a0:	48 8b 04 24          	mov    (%rsp),%rax
    20a4:	48 83 c0 04          	add    $0x4,%rax
    20a8:	48 89 04 24          	mov    %rax,(%rsp)
    20ac:	48 8b 04 24          	mov    (%rsp),%rax
    20b0:	8b 08                	mov    (%rax),%ecx
    20b2:	83 c1 01             	add    $0x1,%ecx
    20b5:	89 08                	mov    %ecx,(%rax)
    20b7:	48 8b 04 24          	mov    (%rsp),%rax
    20bb:	48 83 c0 04          	add    $0x4,%rax
    20bf:	48 89 04 24          	mov    %rax,(%rsp)
    20c3:	48 8b 04 24          	mov    (%rsp),%rax
    20c7:	83 38 00             	cmpl   $0x0,(%rax)
    20ca:	74 26                	je     20f2 <main+0xfa2>
    20cc:	48 8b 04 24          	mov    (%rsp),%rax
    20d0:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    20d4:	48 89 04 24          	mov    %rax,(%rsp)
    20d8:	48 8b 04 24          	mov    (%rsp),%rax
    20dc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    20e0:	48 89 04 24          	mov    %rax,(%rsp)
    20e4:	48 8b 04 24          	mov    (%rsp),%rax
    20e8:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    20ec:	48 89 04 24          	mov    %rax,(%rsp)
    20f0:	eb d1                	jmp    20c3 <main+0xf73>
    20f2:	48 8b 04 24          	mov    (%rsp),%rax
    20f6:	48 83 c0 04          	add    $0x4,%rax
    20fa:	48 89 04 24          	mov    %rax,(%rsp)
    20fe:	48 8b 04 24          	mov    (%rsp),%rax
    2102:	8b 08                	mov    (%rax),%ecx
    2104:	83 c1 ff             	add    $0xffffffff,%ecx
    2107:	89 08                	mov    %ecx,(%rax)
    2109:	48 8b 04 24          	mov    (%rsp),%rax
    210d:	48 83 c0 04          	add    $0x4,%rax
    2111:	48 89 04 24          	mov    %rax,(%rsp)
    2115:	48 8b 04 24          	mov    (%rsp),%rax
    2119:	8b 08                	mov    (%rax),%ecx
    211b:	83 c1 01             	add    $0x1,%ecx
    211e:	89 08                	mov    %ecx,(%rax)
    2120:	48 8b 04 24          	mov    (%rsp),%rax
    2124:	48 83 c0 04          	add    $0x4,%rax
    2128:	48 89 04 24          	mov    %rax,(%rsp)
    212c:	48 8b 04 24          	mov    (%rsp),%rax
    2130:	83 38 00             	cmpl   $0x0,(%rax)
    2133:	74 11                	je     2146 <main+0xff6>
    2135:	48 8b 04 24          	mov    (%rsp),%rax
    2139:	48 83 c0 04          	add    $0x4,%rax
    213d:	48 89 04 24          	mov    %rax,(%rsp)
    2141:	e9 9d 00 00 00       	jmpq   21e3 <main+0x1093>
    2146:	48 8b 04 24          	mov    (%rsp),%rax
    214a:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    214e:	48 89 04 24          	mov    %rax,(%rsp)
    2152:	48 8b 04 24          	mov    (%rsp),%rax
    2156:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    215a:	48 89 04 24          	mov    %rax,(%rsp)
    215e:	48 8b 04 24          	mov    (%rsp),%rax
    2162:	8b 08                	mov    (%rax),%ecx
    2164:	83 c1 01             	add    $0x1,%ecx
    2167:	89 08                	mov    %ecx,(%rax)
    2169:	48 8b 04 24          	mov    (%rsp),%rax
    216d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2171:	48 89 04 24          	mov    %rax,(%rsp)
    2175:	48 8b 04 24          	mov    (%rsp),%rax
    2179:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    217d:	48 89 04 24          	mov    %rax,(%rsp)
    2181:	48 8b 04 24          	mov    (%rsp),%rax
    2185:	8b 08                	mov    (%rax),%ecx
    2187:	83 c1 01             	add    $0x1,%ecx
    218a:	89 08                	mov    %ecx,(%rax)
    218c:	48 8b 04 24          	mov    (%rsp),%rax
    2190:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2194:	48 89 04 24          	mov    %rax,(%rsp)
    2198:	48 8b 04 24          	mov    (%rsp),%rax
    219c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    21a0:	48 89 04 24          	mov    %rax,(%rsp)
    21a4:	48 8b 04 24          	mov    (%rsp),%rax
    21a8:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    21ac:	48 89 04 24          	mov    %rax,(%rsp)
    21b0:	48 8b 04 24          	mov    (%rsp),%rax
    21b4:	8b 08                	mov    (%rax),%ecx
    21b6:	83 c1 01             	add    $0x1,%ecx
    21b9:	89 08                	mov    %ecx,(%rax)
    21bb:	48 8b 04 24          	mov    (%rsp),%rax
    21bf:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    21c3:	48 89 04 24          	mov    %rax,(%rsp)
    21c7:	48 8b 04 24          	mov    (%rsp),%rax
    21cb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    21cf:	48 89 04 24          	mov    %rax,(%rsp)
    21d3:	48 8b 04 24          	mov    (%rsp),%rax
    21d7:	8b 08                	mov    (%rax),%ecx
    21d9:	83 c1 ff             	add    $0xffffffff,%ecx
    21dc:	89 08                	mov    %ecx,(%rax)
    21de:	e9 e3 04 00 00       	jmpq   26c6 <main+0x1576>
    21e3:	48 8b 04 24          	mov    (%rsp),%rax
    21e7:	83 38 00             	cmpl   $0x0,(%rax)
    21ea:	74 7f                	je     226b <main+0x111b>
    21ec:	48 8b 04 24          	mov    (%rsp),%rax
    21f0:	8b 08                	mov    (%rax),%ecx
    21f2:	83 c1 ff             	add    $0xffffffff,%ecx
    21f5:	89 08                	mov    %ecx,(%rax)
    21f7:	48 8b 04 24          	mov    (%rsp),%rax
    21fb:	48 83 c0 04          	add    $0x4,%rax
    21ff:	48 89 04 24          	mov    %rax,(%rsp)
    2203:	48 8b 04 24          	mov    (%rsp),%rax
    2207:	8b 08                	mov    (%rax),%ecx
    2209:	83 c1 01             	add    $0x1,%ecx
    220c:	89 08                	mov    %ecx,(%rax)
    220e:	48 8b 04 24          	mov    (%rsp),%rax
    2212:	48 83 c0 04          	add    $0x4,%rax
    2216:	48 89 04 24          	mov    %rax,(%rsp)
    221a:	48 8b 04 24          	mov    (%rsp),%rax
    221e:	8b 08                	mov    (%rax),%ecx
    2220:	83 c1 01             	add    $0x1,%ecx
    2223:	89 08                	mov    %ecx,(%rax)
    2225:	48 8b 04 24          	mov    (%rsp),%rax
    2229:	8b 08                	mov    (%rax),%ecx
    222b:	83 c1 01             	add    $0x1,%ecx
    222e:	89 08                	mov    %ecx,(%rax)
    2230:	48 8b 04 24          	mov    (%rsp),%rax
    2234:	8b 08                	mov    (%rax),%ecx
    2236:	83 c1 01             	add    $0x1,%ecx
    2239:	89 08                	mov    %ecx,(%rax)
    223b:	48 8b 04 24          	mov    (%rsp),%rax
    223f:	48 83 c0 04          	add    $0x4,%rax
    2243:	48 89 04 24          	mov    %rax,(%rsp)
    2247:	48 8b 04 24          	mov    (%rsp),%rax
    224b:	48 83 c0 04          	add    $0x4,%rax
    224f:	48 89 04 24          	mov    %rax,(%rsp)
    2253:	48 8b 04 24          	mov    (%rsp),%rax
    2257:	8b 08                	mov    (%rax),%ecx
    2259:	83 c1 01             	add    $0x1,%ecx
    225c:	89 08                	mov    %ecx,(%rax)
    225e:	48 8b 04 24          	mov    (%rsp),%rax
    2262:	8b 08                	mov    (%rax),%ecx
    2264:	83 c1 01             	add    $0x1,%ecx
    2267:	89 08                	mov    %ecx,(%rax)
    2269:	eb 29                	jmp    2294 <main+0x1144>
    226b:	48 8b 04 24          	mov    (%rsp),%rax
    226f:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2273:	48 89 04 24          	mov    %rax,(%rsp)
    2277:	48 8b 04 24          	mov    (%rsp),%rax
    227b:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    227f:	48 89 04 24          	mov    %rax,(%rsp)
    2283:	48 8b 04 24          	mov    (%rsp),%rax
    2287:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    228b:	48 89 04 24          	mov    %rax,(%rsp)
    228f:	e9 1c 01 00 00       	jmpq   23b0 <main+0x1260>
    2294:	48 8b 04 24          	mov    (%rsp),%rax
    2298:	83 38 00             	cmpl   $0x0,(%rax)
    229b:	74 26                	je     22c3 <main+0x1173>
    229d:	48 8b 04 24          	mov    (%rsp),%rax
    22a1:	48 83 c0 04          	add    $0x4,%rax
    22a5:	48 89 04 24          	mov    %rax,(%rsp)
    22a9:	48 8b 04 24          	mov    (%rsp),%rax
    22ad:	48 83 c0 04          	add    $0x4,%rax
    22b1:	48 89 04 24          	mov    %rax,(%rsp)
    22b5:	48 8b 04 24          	mov    (%rsp),%rax
    22b9:	48 83 c0 04          	add    $0x4,%rax
    22bd:	48 89 04 24          	mov    %rax,(%rsp)
    22c1:	eb d1                	jmp    2294 <main+0x1144>
    22c3:	48 8b 04 24          	mov    (%rsp),%rax
    22c7:	8b 08                	mov    (%rax),%ecx
    22c9:	83 c1 01             	add    $0x1,%ecx
    22cc:	89 08                	mov    %ecx,(%rax)
    22ce:	48 8b 04 24          	mov    (%rsp),%rax
    22d2:	8b 08                	mov    (%rax),%ecx
    22d4:	83 c1 01             	add    $0x1,%ecx
    22d7:	89 08                	mov    %ecx,(%rax)
    22d9:	48 8b 04 24          	mov    (%rsp),%rax
    22dd:	8b 08                	mov    (%rax),%ecx
    22df:	83 c1 01             	add    $0x1,%ecx
    22e2:	89 08                	mov    %ecx,(%rax)
    22e4:	48 8b 04 24          	mov    (%rsp),%rax
    22e8:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    22ec:	48 89 04 24          	mov    %rax,(%rsp)
    22f0:	48 8b 04 24          	mov    (%rsp),%rax
    22f4:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    22f8:	48 89 04 24          	mov    %rax,(%rsp)
    22fc:	48 8b 04 24          	mov    (%rsp),%rax
    2300:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2304:	48 89 04 24          	mov    %rax,(%rsp)
    2308:	48 8b 04 24          	mov    (%rsp),%rax
    230c:	8b 08                	mov    (%rax),%ecx
    230e:	83 c1 01             	add    $0x1,%ecx
    2311:	89 08                	mov    %ecx,(%rax)
    2313:	48 8b 04 24          	mov    (%rsp),%rax
    2317:	8b 08                	mov    (%rax),%ecx
    2319:	83 c1 01             	add    $0x1,%ecx
    231c:	89 08                	mov    %ecx,(%rax)
    231e:	48 8b 04 24          	mov    (%rsp),%rax
    2322:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2326:	48 89 04 24          	mov    %rax,(%rsp)
    232a:	48 8b 04 24          	mov    (%rsp),%rax
    232e:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2332:	48 89 04 24          	mov    %rax,(%rsp)
    2336:	48 8b 04 24          	mov    (%rsp),%rax
    233a:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    233e:	48 89 04 24          	mov    %rax,(%rsp)
    2342:	48 8b 04 24          	mov    (%rsp),%rax
    2346:	8b 08                	mov    (%rax),%ecx
    2348:	83 c1 01             	add    $0x1,%ecx
    234b:	89 08                	mov    %ecx,(%rax)
    234d:	48 8b 04 24          	mov    (%rsp),%rax
    2351:	8b 08                	mov    (%rax),%ecx
    2353:	83 c1 01             	add    $0x1,%ecx
    2356:	89 08                	mov    %ecx,(%rax)
    2358:	48 8b 04 24          	mov    (%rsp),%rax
    235c:	83 38 00             	cmpl   $0x0,(%rax)
    235f:	74 26                	je     2387 <main+0x1237>
    2361:	48 8b 04 24          	mov    (%rsp),%rax
    2365:	48 83 c0 04          	add    $0x4,%rax
    2369:	48 89 04 24          	mov    %rax,(%rsp)
    236d:	48 8b 04 24          	mov    (%rsp),%rax
    2371:	48 83 c0 04          	add    $0x4,%rax
    2375:	48 89 04 24          	mov    %rax,(%rsp)
    2379:	48 8b 04 24          	mov    (%rsp),%rax
    237d:	48 83 c0 04          	add    $0x4,%rax
    2381:	48 89 04 24          	mov    %rax,(%rsp)
    2385:	eb d1                	jmp    2358 <main+0x1208>
    2387:	48 8b 04 24          	mov    (%rsp),%rax
    238b:	48 83 c0 04          	add    $0x4,%rax
    238f:	48 89 04 24          	mov    %rax,(%rsp)
    2393:	48 8b 04 24          	mov    (%rsp),%rax
    2397:	48 83 c0 04          	add    $0x4,%rax
    239b:	48 89 04 24          	mov    %rax,(%rsp)
    239f:	48 8b 04 24          	mov    (%rsp),%rax
    23a3:	48 83 c0 04          	add    $0x4,%rax
    23a7:	48 89 04 24          	mov    %rax,(%rsp)
    23ab:	e9 33 fe ff ff       	jmpq   21e3 <main+0x1093>
    23b0:	48 8b 04 24          	mov    (%rsp),%rax
    23b4:	83 38 00             	cmpl   $0x0,(%rax)
    23b7:	74 0e                	je     23c7 <main+0x1277>
    23b9:	48 8b 04 24          	mov    (%rsp),%rax
    23bd:	48 83 c0 04          	add    $0x4,%rax
    23c1:	48 89 04 24          	mov    %rax,(%rsp)
    23c5:	eb 56                	jmp    241d <main+0x12cd>
    23c7:	48 8b 04 24          	mov    (%rsp),%rax
    23cb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23cf:	48 89 04 24          	mov    %rax,(%rsp)
    23d3:	48 8b 04 24          	mov    (%rsp),%rax
    23d7:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23db:	48 89 04 24          	mov    %rax,(%rsp)
    23df:	48 8b 04 24          	mov    (%rsp),%rax
    23e3:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23e7:	48 89 04 24          	mov    %rax,(%rsp)
    23eb:	48 8b 04 24          	mov    (%rsp),%rax
    23ef:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23f3:	48 89 04 24          	mov    %rax,(%rsp)
    23f7:	48 8b 04 24          	mov    (%rsp),%rax
    23fb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23ff:	48 89 04 24          	mov    %rax,(%rsp)
    2403:	48 8b 04 24          	mov    (%rsp),%rax
    2407:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    240b:	48 89 04 24          	mov    %rax,(%rsp)
    240f:	48 8b 04 24          	mov    (%rsp),%rax
    2413:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2417:	48 89 04 24          	mov    %rax,(%rsp)
    241b:	eb 63                	jmp    2480 <main+0x1330>
    241d:	48 8b 04 24          	mov    (%rsp),%rax
    2421:	83 38 00             	cmpl   $0x0,(%rax)
    2424:	74 26                	je     244c <main+0x12fc>
    2426:	48 8b 04 24          	mov    (%rsp),%rax
    242a:	48 83 c0 04          	add    $0x4,%rax
    242e:	48 89 04 24          	mov    %rax,(%rsp)
    2432:	48 8b 04 24          	mov    (%rsp),%rax
    2436:	48 83 c0 04          	add    $0x4,%rax
    243a:	48 89 04 24          	mov    %rax,(%rsp)
    243e:	48 8b 04 24          	mov    (%rsp),%rax
    2442:	48 83 c0 04          	add    $0x4,%rax
    2446:	48 89 04 24          	mov    %rax,(%rsp)
    244a:	eb d1                	jmp    241d <main+0x12cd>
    244c:	48 8b 04 24          	mov    (%rsp),%rax
    2450:	8b 08                	mov    (%rax),%ecx
    2452:	83 c1 01             	add    $0x1,%ecx
    2455:	89 08                	mov    %ecx,(%rax)
    2457:	48 8b 04 24          	mov    (%rsp),%rax
    245b:	48 83 c0 04          	add    $0x4,%rax
    245f:	48 89 04 24          	mov    %rax,(%rsp)
    2463:	48 8b 04 24          	mov    (%rsp),%rax
    2467:	48 83 c0 04          	add    $0x4,%rax
    246b:	48 89 04 24          	mov    %rax,(%rsp)
    246f:	48 8b 04 24          	mov    (%rsp),%rax
    2473:	48 83 c0 04          	add    $0x4,%rax
    2477:	48 89 04 24          	mov    %rax,(%rsp)
    247b:	e9 30 ff ff ff       	jmpq   23b0 <main+0x1260>
    2480:	48 8b 04 24          	mov    (%rsp),%rax
    2484:	83 38 00             	cmpl   $0x0,(%rax)
    2487:	74 47                	je     24d0 <main+0x1380>
    2489:	48 8b 04 24          	mov    (%rsp),%rax
    248d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2491:	48 89 04 24          	mov    %rax,(%rsp)
    2495:	48 8b 04 24          	mov    (%rsp),%rax
    2499:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    249d:	48 89 04 24          	mov    %rax,(%rsp)
    24a1:	48 8b 04 24          	mov    (%rsp),%rax
    24a5:	8b 08                	mov    (%rax),%ecx
    24a7:	83 c1 01             	add    $0x1,%ecx
    24aa:	89 08                	mov    %ecx,(%rax)
    24ac:	48 8b 04 24          	mov    (%rsp),%rax
    24b0:	8b 08                	mov    (%rax),%ecx
    24b2:	83 c1 01             	add    $0x1,%ecx
    24b5:	89 08                	mov    %ecx,(%rax)
    24b7:	48 8b 04 24          	mov    (%rsp),%rax
    24bb:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    24bf:	48 89 04 24          	mov    %rax,(%rsp)
    24c3:	48 8b 04 24          	mov    (%rsp),%rax
    24c7:	8b 08                	mov    (%rax),%ecx
    24c9:	83 c1 01             	add    $0x1,%ecx
    24cc:	89 08                	mov    %ecx,(%rax)
    24ce:	eb 34                	jmp    2504 <main+0x13b4>
    24d0:	48 8b 04 24          	mov    (%rsp),%rax
    24d4:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    24d8:	48 89 04 24          	mov    %rax,(%rsp)
    24dc:	48 8b 04 24          	mov    (%rsp),%rax
    24e0:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    24e4:	48 89 04 24          	mov    %rax,(%rsp)
    24e8:	48 8b 04 24          	mov    (%rsp),%rax
    24ec:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    24f0:	48 89 04 24          	mov    %rax,(%rsp)
    24f4:	48 8b 04 24          	mov    (%rsp),%rax
    24f8:	8b 08                	mov    (%rax),%ecx
    24fa:	83 c1 01             	add    $0x1,%ecx
    24fd:	89 08                	mov    %ecx,(%rax)
    24ff:	e9 1b 01 00 00       	jmpq   261f <main+0x14cf>
    2504:	48 8b 04 24          	mov    (%rsp),%rax
    2508:	83 38 00             	cmpl   $0x0,(%rax)
    250b:	74 3c                	je     2549 <main+0x13f9>
    250d:	48 8b 04 24          	mov    (%rsp),%rax
    2511:	8b 08                	mov    (%rax),%ecx
    2513:	83 c1 ff             	add    $0xffffffff,%ecx
    2516:	89 08                	mov    %ecx,(%rax)
    2518:	48 8b 04 24          	mov    (%rsp),%rax
    251c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2520:	48 89 04 24          	mov    %rax,(%rsp)
    2524:	48 8b 04 24          	mov    (%rsp),%rax
    2528:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    252c:	48 89 04 24          	mov    %rax,(%rsp)
    2530:	48 8b 04 24          	mov    (%rsp),%rax
    2534:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2538:	48 89 04 24          	mov    %rax,(%rsp)
    253c:	48 8b 04 24          	mov    (%rsp),%rax
    2540:	8b 08                	mov    (%rax),%ecx
    2542:	83 c1 01             	add    $0x1,%ecx
    2545:	89 08                	mov    %ecx,(%rax)
    2547:	eb bb                	jmp    2504 <main+0x13b4>
    2549:	48 8b 04 24          	mov    (%rsp),%rax
    254d:	8b 08                	mov    (%rax),%ecx
    254f:	83 c1 ff             	add    $0xffffffff,%ecx
    2552:	89 08                	mov    %ecx,(%rax)
    2554:	48 8b 04 24          	mov    (%rsp),%rax
    2558:	48 83 c0 04          	add    $0x4,%rax
    255c:	48 89 04 24          	mov    %rax,(%rsp)
    2560:	48 8b 04 24          	mov    (%rsp),%rax
    2564:	8b 08                	mov    (%rax),%ecx
    2566:	83 c1 01             	add    $0x1,%ecx
    2569:	89 08                	mov    %ecx,(%rax)
    256b:	48 8b 04 24          	mov    (%rsp),%rax
    256f:	8b 08                	mov    (%rax),%ecx
    2571:	83 c1 01             	add    $0x1,%ecx
    2574:	89 08                	mov    %ecx,(%rax)
    2576:	48 8b 04 24          	mov    (%rsp),%rax
    257a:	48 83 c0 04          	add    $0x4,%rax
    257e:	48 89 04 24          	mov    %rax,(%rsp)
    2582:	48 8b 04 24          	mov    (%rsp),%rax
    2586:	48 83 c0 04          	add    $0x4,%rax
    258a:	48 89 04 24          	mov    %rax,(%rsp)
    258e:	48 8b 04 24          	mov    (%rsp),%rax
    2592:	48 83 c0 04          	add    $0x4,%rax
    2596:	48 89 04 24          	mov    %rax,(%rsp)
    259a:	48 8b 04 24          	mov    (%rsp),%rax
    259e:	8b 08                	mov    (%rax),%ecx
    25a0:	83 c1 01             	add    $0x1,%ecx
    25a3:	89 08                	mov    %ecx,(%rax)
    25a5:	48 8b 04 24          	mov    (%rsp),%rax
    25a9:	8b 08                	mov    (%rax),%ecx
    25ab:	83 c1 01             	add    $0x1,%ecx
    25ae:	89 08                	mov    %ecx,(%rax)
    25b0:	48 8b 04 24          	mov    (%rsp),%rax
    25b4:	48 83 c0 04          	add    $0x4,%rax
    25b8:	48 89 04 24          	mov    %rax,(%rsp)
    25bc:	48 8b 04 24          	mov    (%rsp),%rax
    25c0:	48 83 c0 04          	add    $0x4,%rax
    25c4:	48 89 04 24          	mov    %rax,(%rsp)
    25c8:	48 8b 04 24          	mov    (%rsp),%rax
    25cc:	48 83 c0 04          	add    $0x4,%rax
    25d0:	48 89 04 24          	mov    %rax,(%rsp)
    25d4:	48 8b 04 24          	mov    (%rsp),%rax
    25d8:	8b 08                	mov    (%rax),%ecx
    25da:	83 c1 01             	add    $0x1,%ecx
    25dd:	89 08                	mov    %ecx,(%rax)
    25df:	48 8b 04 24          	mov    (%rsp),%rax
    25e3:	8b 08                	mov    (%rax),%ecx
    25e5:	83 c1 01             	add    $0x1,%ecx
    25e8:	89 08                	mov    %ecx,(%rax)
    25ea:	48 8b 04 24          	mov    (%rsp),%rax
    25ee:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    25f2:	48 89 04 24          	mov    %rax,(%rsp)
    25f6:	48 8b 04 24          	mov    (%rsp),%rax
    25fa:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    25fe:	48 89 04 24          	mov    %rax,(%rsp)
    2602:	48 8b 04 24          	mov    (%rsp),%rax
    2606:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    260a:	48 89 04 24          	mov    %rax,(%rsp)
    260e:	48 8b 04 24          	mov    (%rsp),%rax
    2612:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2616:	48 89 04 24          	mov    %rax,(%rsp)
    261a:	e9 61 fe ff ff       	jmpq   2480 <main+0x1330>
    261f:	48 8b 04 24          	mov    (%rsp),%rax
    2623:	83 38 00             	cmpl   $0x0,(%rax)
    2626:	74 3c                	je     2664 <main+0x1514>
    2628:	48 8b 04 24          	mov    (%rsp),%rax
    262c:	8b 08                	mov    (%rax),%ecx
    262e:	83 c1 ff             	add    $0xffffffff,%ecx
    2631:	89 08                	mov    %ecx,(%rax)
    2633:	48 8b 04 24          	mov    (%rsp),%rax
    2637:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    263b:	48 89 04 24          	mov    %rax,(%rsp)
    263f:	48 8b 04 24          	mov    (%rsp),%rax
    2643:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2647:	48 89 04 24          	mov    %rax,(%rsp)
    264b:	48 8b 04 24          	mov    (%rsp),%rax
    264f:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2653:	48 89 04 24          	mov    %rax,(%rsp)
    2657:	48 8b 04 24          	mov    (%rsp),%rax
    265b:	8b 08                	mov    (%rax),%ecx
    265d:	83 c1 01             	add    $0x1,%ecx
    2660:	89 08                	mov    %ecx,(%rax)
    2662:	eb bb                	jmp    261f <main+0x14cf>
    2664:	48 8b 04 24          	mov    (%rsp),%rax
    2668:	8b 08                	mov    (%rax),%ecx
    266a:	83 c1 01             	add    $0x1,%ecx
    266d:	89 08                	mov    %ecx,(%rax)
    266f:	48 8b 04 24          	mov    (%rsp),%rax
    2673:	48 83 c0 04          	add    $0x4,%rax
    2677:	48 89 04 24          	mov    %rax,(%rsp)
    267b:	48 8b 04 24          	mov    (%rsp),%rax
    267f:	8b 08                	mov    (%rax),%ecx
    2681:	83 c1 ff             	add    $0xffffffff,%ecx
    2684:	89 08                	mov    %ecx,(%rax)
    2686:	48 8b 04 24          	mov    (%rsp),%rax
    268a:	48 83 c0 04          	add    $0x4,%rax
    268e:	48 89 04 24          	mov    %rax,(%rsp)
    2692:	48 8b 04 24          	mov    (%rsp),%rax
    2696:	48 83 c0 04          	add    $0x4,%rax
    269a:	48 89 04 24          	mov    %rax,(%rsp)
    269e:	48 8b 04 24          	mov    (%rsp),%rax
    26a2:	8b 08                	mov    (%rax),%ecx
    26a4:	83 c1 ff             	add    $0xffffffff,%ecx
    26a7:	89 08                	mov    %ecx,(%rax)
    26a9:	48 8b 04 24          	mov    (%rsp),%rax
    26ad:	48 83 c0 04          	add    $0x4,%rax
    26b1:	48 89 04 24          	mov    %rax,(%rsp)
    26b5:	48 8b 04 24          	mov    (%rsp),%rax
    26b9:	48 83 c0 04          	add    $0x4,%rax
    26bd:	48 89 04 24          	mov    %rax,(%rsp)
    26c1:	e9 66 fa ff ff       	jmpq   212c <main+0xfdc>
    26c6:	48 8b 04 24          	mov    (%rsp),%rax
    26ca:	83 38 00             	cmpl   $0x0,(%rax)
    26cd:	74 47                	je     2716 <main+0x15c6>
    26cf:	48 8b 04 24          	mov    (%rsp),%rax
    26d3:	8b 08                	mov    (%rax),%ecx
    26d5:	83 c1 01             	add    $0x1,%ecx
    26d8:	89 08                	mov    %ecx,(%rax)
    26da:	48 8b 04 24          	mov    (%rsp),%rax
    26de:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    26e2:	48 89 04 24          	mov    %rax,(%rsp)
    26e6:	48 8b 04 24          	mov    (%rsp),%rax
    26ea:	8b 08                	mov    (%rax),%ecx
    26ec:	83 c1 01             	add    $0x1,%ecx
    26ef:	89 08                	mov    %ecx,(%rax)
    26f1:	48 8b 04 24          	mov    (%rsp),%rax
    26f5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    26f9:	48 89 04 24          	mov    %rax,(%rsp)
    26fd:	48 8b 04 24          	mov    (%rsp),%rax
    2701:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2705:	48 89 04 24          	mov    %rax,(%rsp)
    2709:	48 8b 04 24          	mov    (%rsp),%rax
    270d:	8b 08                	mov    (%rax),%ecx
    270f:	83 c1 ff             	add    $0xffffffff,%ecx
    2712:	89 08                	mov    %ecx,(%rax)
    2714:	eb b0                	jmp    26c6 <main+0x1576>
    2716:	48 8b 04 24          	mov    (%rsp),%rax
    271a:	8b 08                	mov    (%rax),%ecx
    271c:	83 c1 01             	add    $0x1,%ecx
    271f:	89 08                	mov    %ecx,(%rax)
    2721:	48 8b 04 24          	mov    (%rsp),%rax
    2725:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2729:	48 89 04 24          	mov    %rax,(%rsp)
    272d:	48 8b 04 24          	mov    (%rsp),%rax
    2731:	8b 08                	mov    (%rax),%ecx
    2733:	83 c1 01             	add    $0x1,%ecx
    2736:	89 08                	mov    %ecx,(%rax)
    2738:	48 8b 04 24          	mov    (%rsp),%rax
    273c:	83 38 00             	cmpl   $0x0,(%rax)
    273f:	74 30                	je     2771 <main+0x1621>
    2741:	48 8b 04 24          	mov    (%rsp),%rax
    2745:	8b 08                	mov    (%rax),%ecx
    2747:	83 c1 ff             	add    $0xffffffff,%ecx
    274a:	89 08                	mov    %ecx,(%rax)
    274c:	48 8b 04 24          	mov    (%rsp),%rax
    2750:	48 83 c0 04          	add    $0x4,%rax
    2754:	48 89 04 24          	mov    %rax,(%rsp)
    2758:	48 8b 04 24          	mov    (%rsp),%rax
    275c:	8b 08                	mov    (%rax),%ecx
    275e:	83 c1 01             	add    $0x1,%ecx
    2761:	89 08                	mov    %ecx,(%rax)
    2763:	48 8b 04 24          	mov    (%rsp),%rax
    2767:	48 83 c0 04          	add    $0x4,%rax
    276b:	48 89 04 24          	mov    %rax,(%rsp)
    276f:	eb 1c                	jmp    278d <main+0x163d>
    2771:	48 8b 04 24          	mov    (%rsp),%rax
    2775:	48 83 c0 04          	add    $0x4,%rax
    2779:	48 89 04 24          	mov    %rax,(%rsp)
    277d:	48 8b 04 24          	mov    (%rsp),%rax
    2781:	8b 08                	mov    (%rax),%ecx
    2783:	83 c1 01             	add    $0x1,%ecx
    2786:	89 08                	mov    %ecx,(%rax)
    2788:	e9 2d 03 00 00       	jmpq   2aba <main+0x196a>
    278d:	48 8b 04 24          	mov    (%rsp),%rax
    2791:	83 38 00             	cmpl   $0x0,(%rax)
    2794:	74 3c                	je     27d2 <main+0x1682>
    2796:	48 8b 04 24          	mov    (%rsp),%rax
    279a:	8b 08                	mov    (%rax),%ecx
    279c:	83 c1 ff             	add    $0xffffffff,%ecx
    279f:	89 08                	mov    %ecx,(%rax)
    27a1:	48 8b 04 24          	mov    (%rsp),%rax
    27a5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    27a9:	48 89 04 24          	mov    %rax,(%rsp)
    27ad:	48 8b 04 24          	mov    (%rsp),%rax
    27b1:	8b 08                	mov    (%rax),%ecx
    27b3:	83 c1 ff             	add    $0xffffffff,%ecx
    27b6:	89 08                	mov    %ecx,(%rax)
    27b8:	48 8b 04 24          	mov    (%rsp),%rax
    27bc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    27c0:	48 89 04 24          	mov    %rax,(%rsp)
    27c4:	48 8b 04 24          	mov    (%rsp),%rax
    27c8:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    27cc:	48 89 04 24          	mov    %rax,(%rsp)
    27d0:	eb 11                	jmp    27e3 <main+0x1693>
    27d2:	48 8b 04 24          	mov    (%rsp),%rax
    27d6:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    27da:	48 89 04 24          	mov    %rax,(%rsp)
    27de:	e9 0c 01 00 00       	jmpq   28ef <main+0x179f>
    27e3:	48 8b 04 24          	mov    (%rsp),%rax
    27e7:	83 38 00             	cmpl   $0x0,(%rax)
    27ea:	74 26                	je     2812 <main+0x16c2>
    27ec:	48 8b 04 24          	mov    (%rsp),%rax
    27f0:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    27f4:	48 89 04 24          	mov    %rax,(%rsp)
    27f8:	48 8b 04 24          	mov    (%rsp),%rax
    27fc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2800:	48 89 04 24          	mov    %rax,(%rsp)
    2804:	48 8b 04 24          	mov    (%rsp),%rax
    2808:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    280c:	48 89 04 24          	mov    %rax,(%rsp)
    2810:	eb d1                	jmp    27e3 <main+0x1693>
    2812:	48 8b 04 24          	mov    (%rsp),%rax
    2816:	48 83 c0 04          	add    $0x4,%rax
    281a:	48 89 04 24          	mov    %rax,(%rsp)
    281e:	48 8b 04 24          	mov    (%rsp),%rax
    2822:	83 38 00             	cmpl   $0x0,(%rax)
    2825:	74 1a                	je     2841 <main+0x16f1>
    2827:	48 8b 04 24          	mov    (%rsp),%rax
    282b:	48 83 c0 04          	add    $0x4,%rax
    282f:	48 89 04 24          	mov    %rax,(%rsp)
    2833:	48 8b 04 24          	mov    (%rsp),%rax
    2837:	48 83 c0 04          	add    $0x4,%rax
    283b:	48 89 04 24          	mov    %rax,(%rsp)
    283f:	eb 05                	jmp    2846 <main+0x16f6>
    2841:	e9 47 ff ff ff       	jmpq   278d <main+0x163d>
    2846:	48 8b 04 24          	mov    (%rsp),%rax
    284a:	83 38 00             	cmpl   $0x0,(%rax)
    284d:	74 26                	je     2875 <main+0x1725>
    284f:	48 8b 04 24          	mov    (%rsp),%rax
    2853:	48 83 c0 04          	add    $0x4,%rax
    2857:	48 89 04 24          	mov    %rax,(%rsp)
    285b:	48 8b 04 24          	mov    (%rsp),%rax
    285f:	48 83 c0 04          	add    $0x4,%rax
    2863:	48 89 04 24          	mov    %rax,(%rsp)
    2867:	48 8b 04 24          	mov    (%rsp),%rax
    286b:	48 83 c0 04          	add    $0x4,%rax
    286f:	48 89 04 24          	mov    %rax,(%rsp)
    2873:	eb d1                	jmp    2846 <main+0x16f6>
    2875:	48 8b 04 24          	mov    (%rsp),%rax
    2879:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    287d:	48 89 04 24          	mov    %rax,(%rsp)
    2881:	48 8b 04 24          	mov    (%rsp),%rax
    2885:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2889:	48 89 04 24          	mov    %rax,(%rsp)
    288d:	48 8b 04 24          	mov    (%rsp),%rax
    2891:	8b 08                	mov    (%rax),%ecx
    2893:	83 c1 01             	add    $0x1,%ecx
    2896:	89 08                	mov    %ecx,(%rax)
    2898:	48 8b 04 24          	mov    (%rsp),%rax
    289c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    28a0:	48 89 04 24          	mov    %rax,(%rsp)
    28a4:	48 8b 04 24          	mov    (%rsp),%rax
    28a8:	83 38 00             	cmpl   $0x0,(%rax)
    28ab:	74 26                	je     28d3 <main+0x1783>
    28ad:	48 8b 04 24          	mov    (%rsp),%rax
    28b1:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    28b5:	48 89 04 24          	mov    %rax,(%rsp)
    28b9:	48 8b 04 24          	mov    (%rsp),%rax
    28bd:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    28c1:	48 89 04 24          	mov    %rax,(%rsp)
    28c5:	48 8b 04 24          	mov    (%rsp),%rax
    28c9:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    28cd:	48 89 04 24          	mov    %rax,(%rsp)
    28d1:	eb d1                	jmp    28a4 <main+0x1754>
    28d3:	48 8b 04 24          	mov    (%rsp),%rax
    28d7:	48 83 c0 04          	add    $0x4,%rax
    28db:	48 89 04 24          	mov    %rax,(%rsp)
    28df:	48 8b 04 24          	mov    (%rsp),%rax
    28e3:	8b 08                	mov    (%rax),%ecx
    28e5:	83 c1 ff             	add    $0xffffffff,%ecx
    28e8:	89 08                	mov    %ecx,(%rax)
    28ea:	e9 2f ff ff ff       	jmpq   281e <main+0x16ce>
    28ef:	48 8b 04 24          	mov    (%rsp),%rax
    28f3:	83 38 00             	cmpl   $0x0,(%rax)
    28f6:	74 0e                	je     2906 <main+0x17b6>
    28f8:	48 8b 04 24          	mov    (%rsp),%rax
    28fc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2900:	48 89 04 24          	mov    %rax,(%rsp)
    2904:	eb 58                	jmp    295e <main+0x180e>
    2906:	48 8b 04 24          	mov    (%rsp),%rax
    290a:	48 83 c0 04          	add    $0x4,%rax
    290e:	48 89 04 24          	mov    %rax,(%rsp)
    2912:	48 8b 04 24          	mov    (%rsp),%rax
    2916:	48 83 c0 04          	add    $0x4,%rax
    291a:	48 89 04 24          	mov    %rax,(%rsp)
    291e:	48 8b 04 24          	mov    (%rsp),%rax
    2922:	48 83 c0 04          	add    $0x4,%rax
    2926:	48 89 04 24          	mov    %rax,(%rsp)
    292a:	48 8b 04 24          	mov    (%rsp),%rax
    292e:	8b 08                	mov    (%rax),%ecx
    2930:	83 c1 ff             	add    $0xffffffff,%ecx
    2933:	89 08                	mov    %ecx,(%rax)
    2935:	48 8b 04 24          	mov    (%rsp),%rax
    2939:	48 83 c0 04          	add    $0x4,%rax
    293d:	48 89 04 24          	mov    %rax,(%rsp)
    2941:	48 8b 04 24          	mov    (%rsp),%rax
    2945:	48 83 c0 04          	add    $0x4,%rax
    2949:	48 89 04 24          	mov    %rax,(%rsp)
    294d:	48 8b 04 24          	mov    (%rsp),%rax
    2951:	48 83 c0 04          	add    $0x4,%rax
    2955:	48 89 04 24          	mov    %rax,(%rsp)
    2959:	e9 11 01 00 00       	jmpq   2a6f <main+0x191f>
    295e:	48 8b 04 24          	mov    (%rsp),%rax
    2962:	83 38 00             	cmpl   $0x0,(%rax)
    2965:	74 0e                	je     2975 <main+0x1825>
    2967:	48 8b 04 24          	mov    (%rsp),%rax
    296b:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    296f:	48 89 04 24          	mov    %rax,(%rsp)
    2973:	eb 11                	jmp    2986 <main+0x1836>
    2975:	48 8b 04 24          	mov    (%rsp),%rax
    2979:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    297d:	48 89 04 24          	mov    %rax,(%rsp)
    2981:	e9 b5 00 00 00       	jmpq   2a3b <main+0x18eb>
    2986:	48 8b 04 24          	mov    (%rsp),%rax
    298a:	83 38 00             	cmpl   $0x0,(%rax)
    298d:	74 26                	je     29b5 <main+0x1865>
    298f:	48 8b 04 24          	mov    (%rsp),%rax
    2993:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2997:	48 89 04 24          	mov    %rax,(%rsp)
    299b:	48 8b 04 24          	mov    (%rsp),%rax
    299f:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    29a3:	48 89 04 24          	mov    %rax,(%rsp)
    29a7:	48 8b 04 24          	mov    (%rsp),%rax
    29ab:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    29af:	48 89 04 24          	mov    %rax,(%rsp)
    29b3:	eb d1                	jmp    2986 <main+0x1836>
    29b5:	48 8b 04 24          	mov    (%rsp),%rax
    29b9:	48 83 c0 04          	add    $0x4,%rax
    29bd:	48 89 04 24          	mov    %rax,(%rsp)
    29c1:	48 8b 04 24          	mov    (%rsp),%rax
    29c5:	8b 08                	mov    (%rax),%ecx
    29c7:	83 c1 01             	add    $0x1,%ecx
    29ca:	89 08                	mov    %ecx,(%rax)
    29cc:	48 8b 04 24          	mov    (%rsp),%rax
    29d0:	48 83 c0 04          	add    $0x4,%rax
    29d4:	48 89 04 24          	mov    %rax,(%rsp)
    29d8:	48 8b 04 24          	mov    (%rsp),%rax
    29dc:	48 83 c0 04          	add    $0x4,%rax
    29e0:	48 89 04 24          	mov    %rax,(%rsp)
    29e4:	48 8b 04 24          	mov    (%rsp),%rax
    29e8:	83 38 00             	cmpl   $0x0,(%rax)
    29eb:	74 26                	je     2a13 <main+0x18c3>
    29ed:	48 8b 04 24          	mov    (%rsp),%rax
    29f1:	48 83 c0 04          	add    $0x4,%rax
    29f5:	48 89 04 24          	mov    %rax,(%rsp)
    29f9:	48 8b 04 24          	mov    (%rsp),%rax
    29fd:	48 83 c0 04          	add    $0x4,%rax
    2a01:	48 89 04 24          	mov    %rax,(%rsp)
    2a05:	48 8b 04 24          	mov    (%rsp),%rax
    2a09:	48 83 c0 04          	add    $0x4,%rax
    2a0d:	48 89 04 24          	mov    %rax,(%rsp)
    2a11:	eb d1                	jmp    29e4 <main+0x1894>
    2a13:	48 8b 04 24          	mov    (%rsp),%rax
    2a17:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2a1b:	48 89 04 24          	mov    %rax,(%rsp)
    2a1f:	48 8b 04 24          	mov    (%rsp),%rax
    2a23:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2a27:	48 89 04 24          	mov    %rax,(%rsp)
    2a2b:	48 8b 04 24          	mov    (%rsp),%rax
    2a2f:	8b 08                	mov    (%rax),%ecx
    2a31:	83 c1 ff             	add    $0xffffffff,%ecx
    2a34:	89 08                	mov    %ecx,(%rax)
    2a36:	e9 23 ff ff ff       	jmpq   295e <main+0x180e>
    2a3b:	48 8b 04 24          	mov    (%rsp),%rax
    2a3f:	83 38 00             	cmpl   $0x0,(%rax)
    2a42:	74 26                	je     2a6a <main+0x191a>
    2a44:	48 8b 04 24          	mov    (%rsp),%rax
    2a48:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2a4c:	48 89 04 24          	mov    %rax,(%rsp)
    2a50:	48 8b 04 24          	mov    (%rsp),%rax
    2a54:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2a58:	48 89 04 24          	mov    %rax,(%rsp)
    2a5c:	48 8b 04 24          	mov    (%rsp),%rax
    2a60:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2a64:	48 89 04 24          	mov    %rax,(%rsp)
    2a68:	eb d1                	jmp    2a3b <main+0x18eb>
    2a6a:	e9 80 fe ff ff       	jmpq   28ef <main+0x179f>
    2a6f:	48 8b 04 24          	mov    (%rsp),%rax
    2a73:	83 38 00             	cmpl   $0x0,(%rax)
    2a76:	74 26                	je     2a9e <main+0x194e>
    2a78:	48 8b 04 24          	mov    (%rsp),%rax
    2a7c:	48 83 c0 04          	add    $0x4,%rax
    2a80:	48 89 04 24          	mov    %rax,(%rsp)
    2a84:	48 8b 04 24          	mov    (%rsp),%rax
    2a88:	48 83 c0 04          	add    $0x4,%rax
    2a8c:	48 89 04 24          	mov    %rax,(%rsp)
    2a90:	48 8b 04 24          	mov    (%rsp),%rax
    2a94:	48 83 c0 04          	add    $0x4,%rax
    2a98:	48 89 04 24          	mov    %rax,(%rsp)
    2a9c:	eb d1                	jmp    2a6f <main+0x191f>
    2a9e:	48 8b 04 24          	mov    (%rsp),%rax
    2aa2:	8b 08                	mov    (%rax),%ecx
    2aa4:	83 c1 01             	add    $0x1,%ecx
    2aa7:	89 08                	mov    %ecx,(%rax)
    2aa9:	48 8b 04 24          	mov    (%rsp),%rax
    2aad:	48 83 c0 04          	add    $0x4,%rax
    2ab1:	48 89 04 24          	mov    %rax,(%rsp)
    2ab5:	e9 7e fc ff ff       	jmpq   2738 <main+0x15e8>
    2aba:	48 8b 04 24          	mov    (%rsp),%rax
    2abe:	83 38 00             	cmpl   $0x0,(%rax)
    2ac1:	74 25                	je     2ae8 <main+0x1998>
    2ac3:	48 8b 04 24          	mov    (%rsp),%rax
    2ac7:	8b 08                	mov    (%rax),%ecx
    2ac9:	83 c1 ff             	add    $0xffffffff,%ecx
    2acc:	89 08                	mov    %ecx,(%rax)
    2ace:	48 8b 04 24          	mov    (%rsp),%rax
    2ad2:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2ad6:	48 89 04 24          	mov    %rax,(%rsp)
    2ada:	48 8b 04 24          	mov    (%rsp),%rax
    2ade:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2ae2:	48 89 04 24          	mov    %rax,(%rsp)
    2ae6:	eb 0d                	jmp    2af5 <main+0x19a5>
    2ae8:	48 8b 04 24          	mov    (%rsp),%rax
    2aec:	8b 08                	mov    (%rax),%ecx
    2aee:	83 c1 ff             	add    $0xffffffff,%ecx
    2af1:	89 08                	mov    %ecx,(%rax)
    2af3:	eb 24                	jmp    2b19 <main+0x19c9>
    2af5:	48 8b 04 24          	mov    (%rsp),%rax
    2af9:	83 38 00             	cmpl   $0x0,(%rax)
    2afc:	74 0d                	je     2b0b <main+0x19bb>
    2afe:	48 8b 04 24          	mov    (%rsp),%rax
    2b02:	8b 08                	mov    (%rax),%ecx
    2b04:	83 c1 ff             	add    $0xffffffff,%ecx
    2b07:	89 08                	mov    %ecx,(%rax)
    2b09:	eb ea                	jmp    2af5 <main+0x19a5>
    2b0b:	48 8b 04 24          	mov    (%rsp),%rax
    2b0f:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b13:	48 89 04 24          	mov    %rax,(%rsp)
    2b17:	eb a1                	jmp    2aba <main+0x196a>
    2b19:	48 8b 04 24          	mov    (%rsp),%rax
    2b1d:	83 38 00             	cmpl   $0x0,(%rax)
    2b20:	74 02                	je     2b24 <main+0x19d4>
    2b22:	eb 4d                	jmp    2b71 <main+0x1a21>
    2b24:	48 8b 04 24          	mov    (%rsp),%rax
    2b28:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b2c:	48 89 04 24          	mov    %rax,(%rsp)
    2b30:	48 8b 04 24          	mov    (%rsp),%rax
    2b34:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b38:	48 89 04 24          	mov    %rax,(%rsp)
    2b3c:	48 8b 04 24          	mov    (%rsp),%rax
    2b40:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b44:	48 89 04 24          	mov    %rax,(%rsp)
    2b48:	48 8b 04 24          	mov    (%rsp),%rax
    2b4c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b50:	48 89 04 24          	mov    %rax,(%rsp)
    2b54:	48 8b 04 24          	mov    (%rsp),%rax
    2b58:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b5c:	48 89 04 24          	mov    %rax,(%rsp)
    2b60:	48 8b 04 24          	mov    (%rsp),%rax
    2b64:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2b68:	48 89 04 24          	mov    %rax,(%rsp)
    2b6c:	e9 49 02 00 00       	jmpq   2dba <main+0x1c6a>
    2b71:	48 8b 04 24          	mov    (%rsp),%rax
    2b75:	83 38 00             	cmpl   $0x0,(%rax)
    2b78:	74 26                	je     2ba0 <main+0x1a50>
    2b7a:	48 8b 04 24          	mov    (%rsp),%rax
    2b7e:	48 83 c0 04          	add    $0x4,%rax
    2b82:	48 89 04 24          	mov    %rax,(%rsp)
    2b86:	48 8b 04 24          	mov    (%rsp),%rax
    2b8a:	48 83 c0 04          	add    $0x4,%rax
    2b8e:	48 89 04 24          	mov    %rax,(%rsp)
    2b92:	48 8b 04 24          	mov    (%rsp),%rax
    2b96:	48 83 c0 04          	add    $0x4,%rax
    2b9a:	48 89 04 24          	mov    %rax,(%rsp)
    2b9e:	eb d1                	jmp    2b71 <main+0x1a21>
    2ba0:	48 8b 04 24          	mov    (%rsp),%rax
    2ba4:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2ba8:	48 89 04 24          	mov    %rax,(%rsp)
    2bac:	48 8b 04 24          	mov    (%rsp),%rax
    2bb0:	83 38 00             	cmpl   $0x0,(%rax)
    2bb3:	74 1a                	je     2bcf <main+0x1a7f>
    2bb5:	48 8b 04 24          	mov    (%rsp),%rax
    2bb9:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2bbd:	48 89 04 24          	mov    %rax,(%rsp)
    2bc1:	48 8b 04 24          	mov    (%rsp),%rax
    2bc5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2bc9:	48 89 04 24          	mov    %rax,(%rsp)
    2bcd:	eb 29                	jmp    2bf8 <main+0x1aa8>
    2bcf:	48 8b 04 24          	mov    (%rsp),%rax
    2bd3:	48 83 c0 04          	add    $0x4,%rax
    2bd7:	48 89 04 24          	mov    %rax,(%rsp)
    2bdb:	48 8b 04 24          	mov    (%rsp),%rax
    2bdf:	48 83 c0 04          	add    $0x4,%rax
    2be3:	48 89 04 24          	mov    %rax,(%rsp)
    2be7:	48 8b 04 24          	mov    (%rsp),%rax
    2beb:	48 83 c0 04          	add    $0x4,%rax
    2bef:	48 89 04 24          	mov    %rax,(%rsp)
    2bf3:	e9 cd 00 00 00       	jmpq   2cc5 <main+0x1b75>
    2bf8:	48 8b 04 24          	mov    (%rsp),%rax
    2bfc:	83 38 00             	cmpl   $0x0,(%rax)
    2bff:	74 26                	je     2c27 <main+0x1ad7>
    2c01:	48 8b 04 24          	mov    (%rsp),%rax
    2c05:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2c09:	48 89 04 24          	mov    %rax,(%rsp)
    2c0d:	48 8b 04 24          	mov    (%rsp),%rax
    2c11:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2c15:	48 89 04 24          	mov    %rax,(%rsp)
    2c19:	48 8b 04 24          	mov    (%rsp),%rax
    2c1d:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2c21:	48 89 04 24          	mov    %rax,(%rsp)
    2c25:	eb d1                	jmp    2bf8 <main+0x1aa8>
    2c27:	48 8b 04 24          	mov    (%rsp),%rax
    2c2b:	48 83 c0 04          	add    $0x4,%rax
    2c2f:	48 89 04 24          	mov    %rax,(%rsp)
    2c33:	48 8b 04 24          	mov    (%rsp),%rax
    2c37:	48 83 c0 04          	add    $0x4,%rax
    2c3b:	48 89 04 24          	mov    %rax,(%rsp)
    2c3f:	48 8b 04 24          	mov    (%rsp),%rax
    2c43:	48 83 c0 04          	add    $0x4,%rax
    2c47:	48 89 04 24          	mov    %rax,(%rsp)
    2c4b:	48 8b 04 24          	mov    (%rsp),%rax
    2c4f:	48 83 c0 04          	add    $0x4,%rax
    2c53:	48 89 04 24          	mov    %rax,(%rsp)
    2c57:	48 8b 04 24          	mov    (%rsp),%rax
    2c5b:	48 83 c0 04          	add    $0x4,%rax
    2c5f:	48 89 04 24          	mov    %rax,(%rsp)
    2c63:	48 8b 04 24          	mov    (%rsp),%rax
    2c67:	8b 08                	mov    (%rax),%ecx
    2c69:	83 c1 01             	add    $0x1,%ecx
    2c6c:	89 08                	mov    %ecx,(%rax)
    2c6e:	48 8b 04 24          	mov    (%rsp),%rax
    2c72:	48 83 c0 04          	add    $0x4,%rax
    2c76:	48 89 04 24          	mov    %rax,(%rsp)
    2c7a:	48 8b 04 24          	mov    (%rsp),%rax
    2c7e:	83 38 00             	cmpl   $0x0,(%rax)
    2c81:	74 26                	je     2ca9 <main+0x1b59>
    2c83:	48 8b 04 24          	mov    (%rsp),%rax
    2c87:	48 83 c0 04          	add    $0x4,%rax
    2c8b:	48 89 04 24          	mov    %rax,(%rsp)
    2c8f:	48 8b 04 24          	mov    (%rsp),%rax
    2c93:	48 83 c0 04          	add    $0x4,%rax
    2c97:	48 89 04 24          	mov    %rax,(%rsp)
    2c9b:	48 8b 04 24          	mov    (%rsp),%rax
    2c9f:	48 83 c0 04          	add    $0x4,%rax
    2ca3:	48 89 04 24          	mov    %rax,(%rsp)
    2ca7:	eb d1                	jmp    2c7a <main+0x1b2a>
    2ca9:	48 8b 04 24          	mov    (%rsp),%rax
    2cad:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2cb1:	48 89 04 24          	mov    %rax,(%rsp)
    2cb5:	48 8b 04 24          	mov    (%rsp),%rax
    2cb9:	8b 08                	mov    (%rax),%ecx
    2cbb:	83 c1 ff             	add    $0xffffffff,%ecx
    2cbe:	89 08                	mov    %ecx,(%rax)
    2cc0:	e9 e7 fe ff ff       	jmpq   2bac <main+0x1a5c>
    2cc5:	48 8b 04 24          	mov    (%rsp),%rax
    2cc9:	83 38 00             	cmpl   $0x0,(%rax)
    2ccc:	74 0e                	je     2cdc <main+0x1b8c>
    2cce:	48 8b 04 24          	mov    (%rsp),%rax
    2cd2:	48 83 c0 04          	add    $0x4,%rax
    2cd6:	48 89 04 24          	mov    %rax,(%rsp)
    2cda:	eb 11                	jmp    2ced <main+0x1b9d>
    2cdc:	48 8b 04 24          	mov    (%rsp),%rax
    2ce0:	48 83 c0 04          	add    $0x4,%rax
    2ce4:	48 89 04 24          	mov    %rax,(%rsp)
    2ce8:	e9 2c fe ff ff       	jmpq   2b19 <main+0x19c9>
    2ced:	48 8b 04 24          	mov    (%rsp),%rax
    2cf1:	83 38 00             	cmpl   $0x0,(%rax)
    2cf4:	74 26                	je     2d1c <main+0x1bcc>
    2cf6:	48 8b 04 24          	mov    (%rsp),%rax
    2cfa:	48 83 c0 04          	add    $0x4,%rax
    2cfe:	48 89 04 24          	mov    %rax,(%rsp)
    2d02:	48 8b 04 24          	mov    (%rsp),%rax
    2d06:	48 83 c0 04          	add    $0x4,%rax
    2d0a:	48 89 04 24          	mov    %rax,(%rsp)
    2d0e:	48 8b 04 24          	mov    (%rsp),%rax
    2d12:	48 83 c0 04          	add    $0x4,%rax
    2d16:	48 89 04 24          	mov    %rax,(%rsp)
    2d1a:	eb d1                	jmp    2ced <main+0x1b9d>
    2d1c:	48 8b 04 24          	mov    (%rsp),%rax
    2d20:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d24:	48 89 04 24          	mov    %rax,(%rsp)
    2d28:	48 8b 04 24          	mov    (%rsp),%rax
    2d2c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d30:	48 89 04 24          	mov    %rax,(%rsp)
    2d34:	48 8b 04 24          	mov    (%rsp),%rax
    2d38:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d3c:	48 89 04 24          	mov    %rax,(%rsp)
    2d40:	48 8b 04 24          	mov    (%rsp),%rax
    2d44:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d48:	48 89 04 24          	mov    %rax,(%rsp)
    2d4c:	48 8b 04 24          	mov    (%rsp),%rax
    2d50:	8b 08                	mov    (%rax),%ecx
    2d52:	83 c1 01             	add    $0x1,%ecx
    2d55:	89 08                	mov    %ecx,(%rax)
    2d57:	48 8b 04 24          	mov    (%rsp),%rax
    2d5b:	48 83 c0 04          	add    $0x4,%rax
    2d5f:	48 89 04 24          	mov    %rax,(%rsp)
    2d63:	48 8b 04 24          	mov    (%rsp),%rax
    2d67:	83 38 00             	cmpl   $0x0,(%rax)
    2d6a:	74 26                	je     2d92 <main+0x1c42>
    2d6c:	48 8b 04 24          	mov    (%rsp),%rax
    2d70:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d74:	48 89 04 24          	mov    %rax,(%rsp)
    2d78:	48 8b 04 24          	mov    (%rsp),%rax
    2d7c:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d80:	48 89 04 24          	mov    %rax,(%rsp)
    2d84:	48 8b 04 24          	mov    (%rsp),%rax
    2d88:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2d8c:	48 89 04 24          	mov    %rax,(%rsp)
    2d90:	eb d1                	jmp    2d63 <main+0x1c13>
    2d92:	48 8b 04 24          	mov    (%rsp),%rax
    2d96:	48 83 c0 04          	add    $0x4,%rax
    2d9a:	48 89 04 24          	mov    %rax,(%rsp)
    2d9e:	48 8b 04 24          	mov    (%rsp),%rax
    2da2:	48 83 c0 04          	add    $0x4,%rax
    2da6:	48 89 04 24          	mov    %rax,(%rsp)
    2daa:	48 8b 04 24          	mov    (%rsp),%rax
    2dae:	8b 08                	mov    (%rax),%ecx
    2db0:	83 c1 ff             	add    $0xffffffff,%ecx
    2db3:	89 08                	mov    %ecx,(%rax)
    2db5:	e9 0b ff ff ff       	jmpq   2cc5 <main+0x1b75>
    2dba:	48 8b 04 24          	mov    (%rsp),%rax
    2dbe:	83 38 00             	cmpl   $0x0,(%rax)
    2dc1:	74 66                	je     2e29 <main+0x1cd9>
    2dc3:	48 8b 04 24          	mov    (%rsp),%rax
    2dc7:	8b 08                	mov    (%rax),%ecx
    2dc9:	83 c1 ff             	add    $0xffffffff,%ecx
    2dcc:	89 08                	mov    %ecx,(%rax)
    2dce:	48 8b 04 24          	mov    (%rsp),%rax
    2dd2:	8b 08                	mov    (%rax),%ecx
    2dd4:	83 c1 ff             	add    $0xffffffff,%ecx
    2dd7:	89 08                	mov    %ecx,(%rax)
    2dd9:	48 8b 04 24          	mov    (%rsp),%rax
    2ddd:	8b 08                	mov    (%rax),%ecx
    2ddf:	83 c1 ff             	add    $0xffffffff,%ecx
    2de2:	89 08                	mov    %ecx,(%rax)
    2de4:	48 8b 04 24          	mov    (%rsp),%rax
    2de8:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2dec:	48 89 04 24          	mov    %rax,(%rsp)
    2df0:	48 8b 04 24          	mov    (%rsp),%rax
    2df4:	8b 08                	mov    (%rax),%ecx
    2df6:	83 c1 ff             	add    $0xffffffff,%ecx
    2df9:	89 08                	mov    %ecx,(%rax)
    2dfb:	48 8b 04 24          	mov    (%rsp),%rax
    2dff:	8b 08                	mov    (%rax),%ecx
    2e01:	83 c1 ff             	add    $0xffffffff,%ecx
    2e04:	89 08                	mov    %ecx,(%rax)
    2e06:	48 8b 04 24          	mov    (%rsp),%rax
    2e0a:	8b 08                	mov    (%rax),%ecx
    2e0c:	83 c1 ff             	add    $0xffffffff,%ecx
    2e0f:	89 08                	mov    %ecx,(%rax)
    2e11:	48 8b 04 24          	mov    (%rsp),%rax
    2e15:	8b 08                	mov    (%rax),%ecx
    2e17:	83 c1 ff             	add    $0xffffffff,%ecx
    2e1a:	89 08                	mov    %ecx,(%rax)
    2e1c:	48 8b 04 24          	mov    (%rsp),%rax
    2e20:	8b 08                	mov    (%rax),%ecx
    2e22:	83 c1 ff             	add    $0xffffffff,%ecx
    2e25:	89 08                	mov    %ecx,(%rax)
    2e27:	eb 11                	jmp    2e3a <main+0x1cea>
    2e29:	48 8b 04 24          	mov    (%rsp),%rax
    2e2d:	48 83 c0 04          	add    $0x4,%rax
    2e31:	48 89 04 24          	mov    %rax,(%rsp)
    2e35:	e9 9d f1 ff ff       	jmpq   1fd7 <main+0xe87>
    2e3a:	48 8b 04 24          	mov    (%rsp),%rax
    2e3e:	83 38 00             	cmpl   $0x0,(%rax)
    2e41:	74 0d                	je     2e50 <main+0x1d00>
    2e43:	48 8b 04 24          	mov    (%rsp),%rax
    2e47:	8b 08                	mov    (%rax),%ecx
    2e49:	83 c1 ff             	add    $0xffffffff,%ecx
    2e4c:	89 08                	mov    %ecx,(%rax)
    2e4e:	eb 33                	jmp    2e83 <main+0x1d33>
    2e50:	48 8b 04 24          	mov    (%rsp),%rax
    2e54:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2e58:	48 89 04 24          	mov    %rax,(%rsp)
    2e5c:	48 8b 04 24          	mov    (%rsp),%rax
    2e60:	8b 08                	mov    (%rax),%ecx
    2e62:	83 c1 01             	add    $0x1,%ecx
    2e65:	89 08                	mov    %ecx,(%rax)
    2e67:	48 8b 04 24          	mov    (%rsp),%rax
    2e6b:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2e6f:	48 89 04 24          	mov    %rax,(%rsp)
    2e73:	48 8b 04 24          	mov    (%rsp),%rax
    2e77:	8b 08                	mov    (%rax),%ecx
    2e79:	83 c1 01             	add    $0x1,%ecx
    2e7c:	89 08                	mov    %ecx,(%rax)
    2e7e:	e9 37 ff ff ff       	jmpq   2dba <main+0x1c6a>
    2e83:	48 8b 04 24          	mov    (%rsp),%rax
    2e87:	83 38 00             	cmpl   $0x0,(%rax)
    2e8a:	74 0d                	je     2e99 <main+0x1d49>
    2e8c:	48 8b 04 24          	mov    (%rsp),%rax
    2e90:	8b 08                	mov    (%rax),%ecx
    2e92:	83 c1 ff             	add    $0xffffffff,%ecx
    2e95:	89 08                	mov    %ecx,(%rax)
    2e97:	eb 02                	jmp    2e9b <main+0x1d4b>
    2e99:	eb 9f                	jmp    2e3a <main+0x1cea>
    2e9b:	48 8b 04 24          	mov    (%rsp),%rax
    2e9f:	83 38 00             	cmpl   $0x0,(%rax)
    2ea2:	0f 84 ab 00 00 00    	je     2f53 <main+0x1e03>
    2ea8:	48 8b 04 24          	mov    (%rsp),%rax
    2eac:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2eb0:	48 89 04 24          	mov    %rax,(%rsp)
    2eb4:	48 8b 04 24          	mov    (%rsp),%rax
    2eb8:	8b 08                	mov    (%rax),%ecx
    2eba:	83 c1 ff             	add    $0xffffffff,%ecx
    2ebd:	89 08                	mov    %ecx,(%rax)
    2ebf:	48 8b 04 24          	mov    (%rsp),%rax
    2ec3:	48 83 c0 04          	add    $0x4,%rax
    2ec7:	48 89 04 24          	mov    %rax,(%rsp)
    2ecb:	48 8b 04 24          	mov    (%rsp),%rax
    2ecf:	48 83 c0 04          	add    $0x4,%rax
    2ed3:	48 89 04 24          	mov    %rax,(%rsp)
    2ed7:	48 8b 04 24          	mov    (%rsp),%rax
    2edb:	8b 08                	mov    (%rax),%ecx
    2edd:	83 c1 01             	add    $0x1,%ecx
    2ee0:	89 08                	mov    %ecx,(%rax)
    2ee2:	48 8b 04 24          	mov    (%rsp),%rax
    2ee6:	8b 08                	mov    (%rax),%ecx
    2ee8:	83 c1 01             	add    $0x1,%ecx
    2eeb:	89 08                	mov    %ecx,(%rax)
    2eed:	48 8b 04 24          	mov    (%rsp),%rax
    2ef1:	8b 08                	mov    (%rax),%ecx
    2ef3:	83 c1 01             	add    $0x1,%ecx
    2ef6:	89 08                	mov    %ecx,(%rax)
    2ef8:	48 8b 04 24          	mov    (%rsp),%rax
    2efc:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2f00:	48 89 04 24          	mov    %rax,(%rsp)
    2f04:	48 8b 04 24          	mov    (%rsp),%rax
    2f08:	8b 08                	mov    (%rax),%ecx
    2f0a:	83 c1 01             	add    $0x1,%ecx
    2f0d:	89 08                	mov    %ecx,(%rax)
    2f0f:	48 8b 04 24          	mov    (%rsp),%rax
    2f13:	8b 08                	mov    (%rax),%ecx
    2f15:	83 c1 01             	add    $0x1,%ecx
    2f18:	89 08                	mov    %ecx,(%rax)
    2f1a:	48 8b 04 24          	mov    (%rsp),%rax
    2f1e:	8b 08                	mov    (%rax),%ecx
    2f20:	83 c1 01             	add    $0x1,%ecx
    2f23:	89 08                	mov    %ecx,(%rax)
    2f25:	48 8b 04 24          	mov    (%rsp),%rax
    2f29:	8b 08                	mov    (%rax),%ecx
    2f2b:	83 c1 01             	add    $0x1,%ecx
    2f2e:	89 08                	mov    %ecx,(%rax)
    2f30:	48 8b 04 24          	mov    (%rsp),%rax
    2f34:	8b 08                	mov    (%rax),%ecx
    2f36:	83 c1 01             	add    $0x1,%ecx
    2f39:	89 08                	mov    %ecx,(%rax)
    2f3b:	48 8b 04 24          	mov    (%rsp),%rax
    2f3f:	8b 08                	mov    (%rax),%ecx
    2f41:	83 c1 01             	add    $0x1,%ecx
    2f44:	89 08                	mov    %ecx,(%rax)
    2f46:	48 8b 04 24          	mov    (%rsp),%rax
    2f4a:	8b 08                	mov    (%rax),%ecx
    2f4c:	83 c1 01             	add    $0x1,%ecx
    2f4f:	89 08                	mov    %ecx,(%rax)
    2f51:	eb 05                	jmp    2f58 <main+0x1e08>
    2f53:	e9 2b ff ff ff       	jmpq   2e83 <main+0x1d33>
    2f58:	48 8b 04 24          	mov    (%rsp),%rax
    2f5c:	83 38 00             	cmpl   $0x0,(%rax)
    2f5f:	74 0d                	je     2f6e <main+0x1e1e>
    2f61:	48 8b 04 24          	mov    (%rsp),%rax
    2f65:	8b 08                	mov    (%rax),%ecx
    2f67:	83 c1 ff             	add    $0xffffffff,%ecx
    2f6a:	89 08                	mov    %ecx,(%rax)
    2f6c:	eb ea                	jmp    2f58 <main+0x1e08>
    2f6e:	e9 28 ff ff ff       	jmpq   2e9b <main+0x1d4b>
    2f73:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2f7a:	00 00 00 
    2f7d:	0f 1f 00             	nopl   (%rax)

0000000000002f80 <__libc_csu_init>:
    2f80:	f3 0f 1e fa          	endbr64 
    2f84:	41 57                	push   %r15
    2f86:	4c 8d 3d 23 2e 00 00 	lea    0x2e23(%rip),%r15        # 5db0 <__frame_dummy_init_array_entry>
    2f8d:	41 56                	push   %r14
    2f8f:	49 89 d6             	mov    %rdx,%r14
    2f92:	41 55                	push   %r13
    2f94:	49 89 f5             	mov    %rsi,%r13
    2f97:	41 54                	push   %r12
    2f99:	41 89 fc             	mov    %edi,%r12d
    2f9c:	55                   	push   %rbp
    2f9d:	48 8d 2d 14 2e 00 00 	lea    0x2e14(%rip),%rbp        # 5db8 <__do_global_dtors_aux_fini_array_entry>
    2fa4:	53                   	push   %rbx
    2fa5:	4c 29 fd             	sub    %r15,%rbp
    2fa8:	48 83 ec 08          	sub    $0x8,%rsp
    2fac:	e8 4f e0 ff ff       	callq  1000 <_init>
    2fb1:	48 c1 fd 03          	sar    $0x3,%rbp
    2fb5:	74 1f                	je     2fd6 <__libc_csu_init+0x56>
    2fb7:	31 db                	xor    %ebx,%ebx
    2fb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2fc0:	4c 89 f2             	mov    %r14,%rdx
    2fc3:	4c 89 ee             	mov    %r13,%rsi
    2fc6:	44 89 e7             	mov    %r12d,%edi
    2fc9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2fcd:	48 83 c3 01          	add    $0x1,%rbx
    2fd1:	48 39 dd             	cmp    %rbx,%rbp
    2fd4:	75 ea                	jne    2fc0 <__libc_csu_init+0x40>
    2fd6:	48 83 c4 08          	add    $0x8,%rsp
    2fda:	5b                   	pop    %rbx
    2fdb:	5d                   	pop    %rbp
    2fdc:	41 5c                	pop    %r12
    2fde:	41 5d                	pop    %r13
    2fe0:	41 5e                	pop    %r14
    2fe2:	41 5f                	pop    %r15
    2fe4:	c3                   	retq   
    2fe5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2fec:	00 00 00 00 

0000000000002ff0 <__libc_csu_fini>:
    2ff0:	f3 0f 1e fa          	endbr64 
    2ff4:	c3                   	retq   

Disassembly of section .fini:

0000000000002ff8 <_fini>:
    2ff8:	f3 0f 1e fa          	endbr64 
    2ffc:	48 83 ec 08          	sub    $0x8,%rsp
    3000:	48 83 c4 08          	add    $0x8,%rsp
    3004:	c3                   	retq   
