v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -30 140 -30 {lab=Y}
N -50 -190 -50 -160 {lab=VDD}
N -20 140 -20 170 {lab=GND}
N -340 -50 -320 -50 {lab=A}
N -340 -10 -320 -10 {lab=B}
N -200 -90 -200 -60 {lab=#net1}
N -200 0 -200 60 {lab=#net2}
N -60 40 -60 60 {lab=#net2}
N -200 40 -60 40 {lab=#net2}
N -200 90 -200 120 {lab=GND}
N -60 90 -60 120 {lab=GND}
N -200 -60 -200 -30 {lab=#net1}
N -200 -150 -200 -120 {lab=VDD}
N -200 120 -200 140 {lab=GND}
N -200 140 -60 140 {lab=GND}
N -60 120 -60 140 {lab=GND}
N 120 -50 120 -10 {lab=#net3}
N 120 -110 120 -80 {lab=VDD}
N 120 20 120 50 {lab=GND}
N -260 -120 -240 -120 {lab=#net4}
N -260 -120 -260 90 {lab=#net4}
N -260 90 -240 90 {lab=#net4}
N -100 20 -100 90 {lab=#net5}
N -280 20 -100 20 {lab=#net5}
N -280 -30 -280 20 {lab=#net5}
N -280 -30 -240 -30 {lab=#net5}
N -320 -10 -280 -10 {lab=#net5}
N -320 -50 -260 -50 {lab=#net4}
N 120 -160 120 -110 {lab=VDD}
N -200 -160 120 -160 {lab=VDD}
N 120 50 120 140 {lab=GND}
N -60 140 120 140 {lab=GND}
N -200 -160 -200 -150 {lab=VDD}
C {ipin.sym} -340 -50 0 0 {name=p1 lab=A
}
C {opin.sym} 140 -30 0 0 {name=p2 lab=Y}
C {iopin.sym} -50 -190 3 0 {name=p3 lab=VDD}
C {iopin.sym} -20 170 1 0 {name=p4 lab=GND}
C {ipin.sym} -340 -10 0 0 {name=p5 lab=B
}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -80 90 0 0 {name=M1
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 100 -80 0 0 {name=M2
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -220 90 0 0 {name=M3
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -220 -120 0 0 {name=M4
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -220 -30 0 0 {name=M5
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 100 20 0 0 {name=M6
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
