v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -180 0 -160 {lab=#net1}
N 0 -100 -0 40 {lab=Y}
N -0 -240 0 -210 {lab=VDD}
N -0 -160 0 -130 {lab=#net1}
N -0 70 0 100 {lab=xxx}
N 200 70 200 100 {lab=xxx}
N -80 -210 -40 -210 {lab=B}
N -80 -210 -80 70 {lab=B}
N -80 70 -40 70 {lab=B}
N -100 -130 -40 -130 {lab=A}
N -100 -130 -100 20 {lab=A}
N -100 20 140 20 {lab=A}
N 140 20 140 70 {lab=A}
N 140 70 160 70 {lab=A}
N -160 -80 -100 -80 {lab=A}
N -160 -40 -80 -40 {lab=B}
N 0 -60 100 -60 {lab=Y}
N 200 0 200 40 {lab=Y}
N 0 -0 200 0 {lab=Y}
N 0 -260 0 -240 {lab=VDD}
N -0 100 -0 120 {lab=xxx}
N 0 120 200 120 {lab=xxx}
N 200 100 200 120 {lab=xxx}
N 100 120 100 140 {lab=xxx}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -20 -130 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -20 -210 0 0 {name=M3
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 180 70 0 0 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -160 -80 0 0 {name=p1 lab=A}
C {ipin.sym} -160 -40 0 0 {name=p2 lab=B}
C {opin.sym} 100 -60 0 0 {name=p3 lab=Y}
C {iopin.sym} 100 140 1 0 {name=p4 lab=GND}
C {iopin.sym} 0 -260 3 0 {name=p5 lab=VDD}
