# SM4 SBOX
This is a verilog implementation of SM4 S-box based on the paper of <a href="https://eprint.iacr.org/2019/738">Zihao Wei, et al.</a>

- sbox.v is the verilog code provided in Zihao Wei's paper;
- sbox_ref.v is a reference.
- tb_sbox.v is a simple testbench to verify the implementation.

## Code Run
```
make modelsim
```

## Simulation Results

```
PS E:\GITHUB\SM4-SBOX> make modelsim
vlib work;
vlog -reportprogress 300 -work work -lint -hazards sbox.v sbox_ref.v tb_sbox.v;
Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
::SIG:: 5536416
Start time: 13:54:15 on Jun 24,2019
vlog -reportprogress 300 -work work -lint -hazards sbox.v sbox_ref.v tb_sbox.v
-- Compiling module SM4
-- Compiling module XOR
-- Compiling module XNOR
-- Compiling module NAND
-- Compiling module NOR
-- Compiling module Input
-- Compiling module Top
-- Compiling module Middle
-- Compiling module Bottom
-- Compiling module Output
-- Compiling module sbox_ref
::>:: 413 sbox_ref.v
-- Compiling module tb_sbox

Top level modules:
        tb_sbox
End time: 13:54:15 on Jun 24,2019, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
vsim -batch -t 10ps tb_sbox -wlf tb_sbox.wlf -do "run -all;"
# vsim -batch -t 10ps tb_sbox -wlf tb_sbox.wlf -do "run -all;"
# Start time: 13:54:16 on Jun 24,2019
# Loading work.tb_sbox
# Loading work.SM4
# Loading work.Input
# Loading work.XOR
# Loading work.XNOR
# Loading work.Top
# Loading work.NAND
# Loading work.NOR
# Loading work.Middle
# Loading work.Bottom
# Loading work.Output
# Loading work.sbox_ref
#
# run -all
# datain=xx, result=xx, result_ref=xx,      
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=00, result=d6, result_ref=d6,     PASS
# datain=01, result=90, result_ref=90,     PASS
# datain=02, result=e9, result_ref=e9,     PASS
# datain=03, result=fe, result_ref=fe,     PASS
# datain=04, result=cc, result_ref=cc,     PASS
# datain=05, result=e1, result_ref=e1,     PASS
# datain=06, result=3d, result_ref=3d,     PASS
# datain=07, result=b7, result_ref=b7,     PASS
# datain=08, result=16, result_ref=16,     PASS
# datain=09, result=b6, result_ref=b6,     PASS
# datain=0a, result=14, result_ref=14,     PASS
# datain=0b, result=c2, result_ref=c2,     PASS
# datain=0c, result=28, result_ref=28,     PASS
# datain=0d, result=fb, result_ref=fb,     PASS
# datain=0e, result=2c, result_ref=2c,     PASS
# datain=0f, result=05, result_ref=05,     PASS
# datain=10, result=2b, result_ref=2b,     PASS
# datain=11, result=67, result_ref=67,     PASS
# datain=12, result=9a, result_ref=9a,     PASS
# datain=13, result=76, result_ref=76,     PASS
# datain=14, result=2a, result_ref=2a,     PASS
# datain=15, result=be, result_ref=be,     PASS
# datain=16, result=04, result_ref=04,     PASS
# datain=17, result=c3, result_ref=c3,     PASS
# datain=18, result=aa, result_ref=aa,     PASS
# datain=19, result=44, result_ref=44,     PASS
# datain=1a, result=13, result_ref=13,     PASS
# datain=1b, result=26, result_ref=26,     PASS
# datain=1c, result=49, result_ref=49,     PASS
# datain=1d, result=86, result_ref=86,     PASS
# datain=1e, result=06, result_ref=06,     PASS
# datain=1f, result=99, result_ref=99,     PASS
# datain=20, result=9c, result_ref=9c,     PASS
# datain=21, result=42, result_ref=42,     PASS
# datain=22, result=50, result_ref=50,     PASS
# datain=23, result=f4, result_ref=f4,     PASS
# datain=24, result=91, result_ref=91,     PASS
# datain=25, result=ef, result_ref=ef,     PASS
# datain=26, result=98, result_ref=98,     PASS
# datain=27, result=7a, result_ref=7a,     PASS
# datain=28, result=33, result_ref=33,     PASS
# datain=29, result=54, result_ref=54,     PASS
# datain=2a, result=0b, result_ref=0b,     PASS
# datain=2b, result=43, result_ref=43,     PASS
# datain=2c, result=ed, result_ref=ed,     PASS
# datain=2d, result=cf, result_ref=cf,     PASS
# datain=2e, result=ac, result_ref=ac,     PASS
# datain=2f, result=62, result_ref=62,     PASS
# datain=30, result=e4, result_ref=e4,     PASS
# datain=31, result=b3, result_ref=b3,     PASS
# datain=32, result=1c, result_ref=1c,     PASS
# datain=33, result=a9, result_ref=a9,     PASS
# datain=34, result=c9, result_ref=c9,     PASS
# datain=35, result=08, result_ref=08,     PASS
# datain=36, result=e8, result_ref=e8,     PASS
# datain=37, result=95, result_ref=95,     PASS
# datain=38, result=80, result_ref=80,     PASS
# datain=39, result=df, result_ref=df,     PASS
# datain=3a, result=94, result_ref=94,     PASS
# datain=3b, result=fa, result_ref=fa,     PASS
# datain=3c, result=75, result_ref=75,     PASS
# datain=3d, result=8f, result_ref=8f,     PASS
# datain=3e, result=3f, result_ref=3f,     PASS
# datain=3f, result=a6, result_ref=a6,     PASS
# datain=40, result=47, result_ref=47,     PASS
# datain=41, result=07, result_ref=07,     PASS
# datain=42, result=a7, result_ref=a7,     PASS
# datain=43, result=fc, result_ref=fc,     PASS
# datain=44, result=f3, result_ref=f3,     PASS
# datain=45, result=73, result_ref=73,     PASS
# datain=46, result=17, result_ref=17,     PASS
# datain=47, result=ba, result_ref=ba,     PASS
# datain=48, result=83, result_ref=83,     PASS
# datain=49, result=59, result_ref=59,     PASS
# datain=4a, result=3c, result_ref=3c,     PASS
# datain=4b, result=19, result_ref=19,     PASS
# datain=4c, result=e6, result_ref=e6,     PASS
# datain=4d, result=85, result_ref=85,     PASS
# datain=4e, result=4f, result_ref=4f,     PASS
# datain=4f, result=a8, result_ref=a8,     PASS
# datain=50, result=68, result_ref=68,     PASS
# datain=51, result=6b, result_ref=6b,     PASS
# datain=52, result=81, result_ref=81,     PASS
# datain=53, result=b2, result_ref=b2,     PASS
# datain=54, result=71, result_ref=71,     PASS
# datain=55, result=64, result_ref=64,     PASS
# datain=56, result=da, result_ref=da,     PASS
# datain=57, result=8b, result_ref=8b,     PASS
# datain=58, result=f8, result_ref=f8,     PASS
# datain=59, result=eb, result_ref=eb,     PASS
# datain=5a, result=0f, result_ref=0f,     PASS
# datain=5b, result=4b, result_ref=4b,     PASS
# datain=5c, result=70, result_ref=70,     PASS
# datain=5d, result=56, result_ref=56,     PASS
# datain=5e, result=9d, result_ref=9d,     PASS
# datain=5f, result=35, result_ref=35,     PASS
# datain=60, result=1e, result_ref=1e,     PASS
# datain=61, result=24, result_ref=24,     PASS
# datain=62, result=0e, result_ref=0e,     PASS
# datain=63, result=5e, result_ref=5e,     PASS
# datain=64, result=63, result_ref=63,     PASS
# datain=65, result=58, result_ref=58,     PASS
# datain=66, result=d1, result_ref=d1,     PASS
# datain=67, result=a2, result_ref=a2,     PASS
# datain=68, result=25, result_ref=25,     PASS
# datain=69, result=22, result_ref=22,     PASS
# datain=6a, result=7c, result_ref=7c,     PASS
# datain=6b, result=3b, result_ref=3b,     PASS
# datain=6c, result=01, result_ref=01,     PASS
# datain=6d, result=21, result_ref=21,     PASS
# datain=6e, result=78, result_ref=78,     PASS
# datain=6f, result=87, result_ref=87,     PASS
# datain=70, result=d4, result_ref=d4,     PASS
# datain=71, result=00, result_ref=00,     PASS
# datain=72, result=46, result_ref=46,     PASS
# datain=73, result=57, result_ref=57,     PASS
# datain=74, result=9f, result_ref=9f,     PASS
# datain=75, result=d3, result_ref=d3,     PASS
# datain=76, result=27, result_ref=27,     PASS
# datain=77, result=52, result_ref=52,     PASS
# datain=78, result=4c, result_ref=4c,     PASS
# datain=79, result=36, result_ref=36,     PASS
# datain=7a, result=02, result_ref=02,     PASS
# datain=7b, result=e7, result_ref=e7,     PASS
# datain=7c, result=a0, result_ref=a0,     PASS
# datain=7d, result=c4, result_ref=c4,     PASS
# datain=7e, result=c8, result_ref=c8,     PASS
# datain=7f, result=9e, result_ref=9e,     PASS
# datain=80, result=ea, result_ref=ea,     PASS
# datain=81, result=bf, result_ref=bf,     PASS
# datain=82, result=8a, result_ref=8a,     PASS
# datain=83, result=d2, result_ref=d2,     PASS
# datain=84, result=40, result_ref=40,     PASS
# datain=85, result=c7, result_ref=c7,     PASS
# datain=86, result=38, result_ref=38,     PASS
# datain=87, result=b5, result_ref=b5,     PASS
# datain=88, result=a3, result_ref=a3,     PASS
# datain=89, result=f7, result_ref=f7,     PASS
# datain=8a, result=f2, result_ref=f2,     PASS
# datain=8b, result=ce, result_ref=ce,     PASS
# datain=8c, result=f9, result_ref=f9,     PASS
# datain=8d, result=61, result_ref=61,     PASS
# datain=8e, result=15, result_ref=15,     PASS
# datain=8f, result=a1, result_ref=a1,     PASS
# datain=90, result=e0, result_ref=e0,     PASS
# datain=91, result=ae, result_ref=ae,     PASS
# datain=92, result=5d, result_ref=5d,     PASS
# datain=93, result=a4, result_ref=a4,     PASS
# datain=94, result=9b, result_ref=9b,     PASS
# datain=95, result=34, result_ref=34,     PASS
# datain=96, result=1a, result_ref=1a,     PASS
# datain=97, result=55, result_ref=55,     PASS
# datain=98, result=ad, result_ref=ad,     PASS
# datain=99, result=93, result_ref=93,     PASS
# datain=9a, result=32, result_ref=32,     PASS
# datain=9b, result=30, result_ref=30,     PASS
# datain=9c, result=f5, result_ref=f5,     PASS
# datain=9d, result=8c, result_ref=8c,     PASS
# datain=9e, result=b1, result_ref=b1,     PASS
# datain=9f, result=e3, result_ref=e3,     PASS
# datain=a0, result=1d, result_ref=1d,     PASS
# datain=a1, result=f6, result_ref=f6,     PASS
# datain=a2, result=e2, result_ref=e2,     PASS
# datain=a3, result=2e, result_ref=2e,     PASS
# datain=a4, result=82, result_ref=82,     PASS
# datain=a5, result=66, result_ref=66,     PASS
# datain=a6, result=ca, result_ref=ca,     PASS
# datain=a7, result=60, result_ref=60,     PASS
# datain=a8, result=c0, result_ref=c0,     PASS
# datain=a9, result=29, result_ref=29,     PASS
# datain=aa, result=23, result_ref=23,     PASS
# datain=ab, result=ab, result_ref=ab,     PASS
# datain=ac, result=0d, result_ref=0d,     PASS
# datain=ad, result=53, result_ref=53,     PASS
# datain=ae, result=4e, result_ref=4e,     PASS
# datain=af, result=6f, result_ref=6f,     PASS
# datain=b0, result=d5, result_ref=d5,     PASS
# datain=b1, result=db, result_ref=db,     PASS
# datain=b2, result=37, result_ref=37,     PASS
# datain=b3, result=45, result_ref=45,     PASS
# datain=b4, result=de, result_ref=de,     PASS
# datain=b5, result=fd, result_ref=fd,     PASS
# datain=b6, result=8e, result_ref=8e,     PASS
# datain=b7, result=2f, result_ref=2f,     PASS
# datain=b8, result=03, result_ref=03,     PASS
# datain=b9, result=ff, result_ref=ff,     PASS
# datain=ba, result=6a, result_ref=6a,     PASS
# datain=bb, result=72, result_ref=72,     PASS
# datain=bc, result=6d, result_ref=6d,     PASS
# datain=bd, result=6c, result_ref=6c,     PASS
# datain=be, result=5b, result_ref=5b,     PASS
# datain=bf, result=51, result_ref=51,     PASS
# datain=c0, result=8d, result_ref=8d,     PASS
# datain=c1, result=1b, result_ref=1b,     PASS
# datain=c2, result=af, result_ref=af,     PASS
# datain=c3, result=92, result_ref=92,     PASS
# datain=c4, result=bb, result_ref=bb,     PASS
# datain=c5, result=dd, result_ref=dd,     PASS
# datain=c6, result=bc, result_ref=bc,     PASS
# datain=c7, result=7f, result_ref=7f,     PASS
# datain=c8, result=11, result_ref=11,     PASS
# datain=c9, result=d9, result_ref=d9,     PASS
# datain=ca, result=5c, result_ref=5c,     PASS
# datain=cb, result=41, result_ref=41,     PASS
# datain=cc, result=1f, result_ref=1f,     PASS
# datain=cd, result=10, result_ref=10,     PASS
# datain=ce, result=5a, result_ref=5a,     PASS
# datain=cf, result=d8, result_ref=d8,     PASS
# datain=d0, result=0a, result_ref=0a,     PASS
# datain=d1, result=c1, result_ref=c1,     PASS
# datain=d2, result=31, result_ref=31,     PASS
# datain=d3, result=88, result_ref=88,     PASS
# datain=d4, result=a5, result_ref=a5,     PASS
# datain=d5, result=cd, result_ref=cd,     PASS
# datain=d6, result=7b, result_ref=7b,     PASS
# datain=d7, result=bd, result_ref=bd,     PASS
# datain=d8, result=2d, result_ref=2d,     PASS
# datain=d9, result=74, result_ref=74,     PASS
# datain=da, result=d0, result_ref=d0,     PASS
# datain=db, result=12, result_ref=12,     PASS
# datain=dc, result=b8, result_ref=b8,     PASS
# datain=dd, result=e5, result_ref=e5,     PASS
# datain=de, result=b4, result_ref=b4,     PASS
# datain=df, result=b0, result_ref=b0,     PASS
# datain=e0, result=89, result_ref=89,     PASS
# datain=e1, result=69, result_ref=69,     PASS
# datain=e2, result=97, result_ref=97,     PASS
# datain=e3, result=4a, result_ref=4a,     PASS
# datain=e4, result=0c, result_ref=0c,     PASS
# datain=e5, result=96, result_ref=96,     PASS
# datain=e6, result=77, result_ref=77,     PASS
# datain=e7, result=7e, result_ref=7e,     PASS
# datain=e8, result=65, result_ref=65,     PASS
# datain=e9, result=b9, result_ref=b9,     PASS
# datain=ea, result=f1, result_ref=f1,     PASS
# datain=eb, result=09, result_ref=09,     PASS
# datain=ec, result=c5, result_ref=c5,     PASS
# datain=ed, result=6e, result_ref=6e,     PASS
# datain=ee, result=c6, result_ref=c6,     PASS
# datain=ef, result=84, result_ref=84,     PASS
# datain=f0, result=18, result_ref=18,     PASS
# datain=f1, result=f0, result_ref=f0,     PASS
# datain=f2, result=7d, result_ref=7d,     PASS
# datain=f3, result=ec, result_ref=ec,     PASS
# datain=f4, result=3a, result_ref=3a,     PASS
# datain=f5, result=dc, result_ref=dc,     PASS
# datain=f6, result=4d, result_ref=4d,     PASS
# datain=f7, result=20, result_ref=20,     PASS
# datain=f8, result=79, result_ref=79,     PASS
# datain=f9, result=ee, result_ref=ee,     PASS
# datain=fa, result=5f, result_ref=5f,     PASS
# datain=fb, result=3e, result_ref=3e,     PASS
# datain=fc, result=d7, result_ref=d7,     PASS
# datain=fd, result=cb, result_ref=cb,     PASS
# datain=fe, result=39, result_ref=39,     PASS
# ** Note: $finish    : tb_sbox.v(26)
#    Time: 2655 ns  Iteration: 1  Instance: /tb_sbox
# End time: 13:54:18 on Jun 24,2019, Elapsed time: 0:00:02
# Errors: 0, Warnings: 0
PS E:\GITHUB\SM4-SBOX>
```