v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -30 0 -0 {lab=#net1}
N 0 70 0 100 {lab=xxx}
N -0 -260 -0 -230 {lab=VDD}
N 160 -260 160 -230 {lab=VDD}
N 320 -180 320 -150 {lab=VDD}
N 320 -50 320 -20 {lab=xxx}
N 160 -300 160 -260 {lab=VDD}
N 0 -300 160 -300 {lab=VDD}
N -0 -300 -0 -260 {lab=VDD}
N 0 -200 0 -60 {lab=#net2}
N 0 -160 160 -160 {lab=#net2}
N 160 -200 160 -160 {lab=#net2}
N 0 0 0 40 {lab=#net1}
N 320 -120 320 -80 {lab=Y}
N 240 -150 280 -150 {lab=#net2}
N 240 -150 240 -50 {lab=#net2}
N 240 -50 280 -50 {lab=#net2}
N 0 -100 240 -100 {lab=#net2}
N 320 -100 400 -100 {lab=Y}
N -100 -230 -40 -230 {lab=A}
N -100 -230 -100 -30 {lab=A}
N -100 -30 -40 -30 {lab=A}
N 80 -230 120 -230 {lab=B}
N 80 -230 80 -140 {lab=B}
N -60 -140 80 -140 {lab=B}
N -60 -140 -60 70 {lab=B}
N -60 70 -40 70 {lab=B}
N -160 -120 -100 -120 {lab=A}
N -160 -0 -60 0 {lab=B}
N 320 -20 320 120 {lab=xxx}
N 0 120 320 120 {lab=xxx}
N 0 100 0 120 {lab=xxx}
N 170 120 170 140 {lab=xxx}
N 320 -300 320 -180 {lab=VDD}
N 160 -300 320 -300 {lab=VDD}
N 190 -320 190 -300 {lab=VDD}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -20 -30 0 0 {name=M1
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -20 -230 0 0 {name=M2
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 140 -230 0 0 {name=M3
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=M4
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -150 0 0 {name=M5
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -50 0 0 {name=M6
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
C {ipin.sym} -160 0 0 0 {name=p1 lab=B}
C {ipin.sym} -160 -120 0 0 {name=p2 lab=A}
C {opin.sym} 400 -100 0 0 {name=p3 lab=Y}
C {iopin.sym} 190 -320 3 0 {name=p4 lab=VDD}
C {iopin.sym} 170 140 1 0 {name=p5 lab=GND}
