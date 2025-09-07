v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -470 -100 -470 -60 {lab=#net1}
N -470 -160 -470 -130 {lab=VDD}
N -180 110 -180 140 {lab=#net2}
N -180 210 -180 240 {lab=xxx}
N 0 210 0 240 {lab=xxx}
N 0 110 0 140 {lab=#net3}
N 0 -60 0 -30 {lab=#net4}
N 0 -160 0 -130 {lab=VDD}
N -180 -160 -180 -130 {lab=VDD}
N -180 -60 -180 -30 {lab=#net5}
N -470 -30 -470 -0 {lab=xxx}
N -520 80 -520 110 {lab=VDD}
N -520 210 -520 240 {lab=xxx}
N -180 -100 -180 -60 {lab=#net5}
N 0 -100 -0 -60 {lab=#net4}
N -180 0 -180 80 {lab=Y}
N -0 0 0 80 {lab=Y}
N 0 140 0 180 {lab=#net3}
N -180 140 -180 180 {lab=#net2}
N -520 140 -520 180 {lab=#net6}
N -260 -130 -220 -130 {lab=#net1}
N -260 -130 -260 40 {lab=#net1}
N -260 40 80 40 {lab=#net1}
N 80 40 80 110 {lab=#net1}
N 40 110 80 110 {lab=#net1}
N -470 -80 -260 -80 {lab=#net1}
N 40 210 60 210 {lab=#net6}
N 60 -30 60 210 {lab=#net6}
N 40 -30 60 -30 {lab=#net6}
N -520 160 -260 160 {lab=#net6}
N -260 60 -260 160 {lab=#net6}
N -260 60 60 60 {lab=#net6}
N -580 110 -560 110 {lab=B}
N -580 110 -580 210 {lab=B}
N -580 210 -560 210 {lab=B}
N -530 -130 -510 -130 {lab=A}
N -530 -130 -530 -30 {lab=A}
N -530 -30 -510 -30 {lab=A}
N -600 -80 -530 -80 {lab=A}
N -640 160 -580 160 {lab=B}
N -280 -30 -220 -30 {lab=B}
N -280 -30 -280 260 {lab=B}
N -580 260 -280 260 {lab=B}
N -580 210 -580 260 {lab=B}
N -280 210 -220 210 {lab=B}
N 40 -130 80 -130 {lab=A}
N 80 -130 80 20 {lab=A}
N -530 20 80 20 {lab=A}
N -530 -30 -530 20 {lab=A}
N -240 110 -220 110 {lab=A}
N -240 20 -240 110 {lab=A}
N -180 30 -0 30 {lab=Y}
N -0 30 160 30 {lab=Y}
N 0 -180 0 -160 {lab=VDD}
N -470 -180 0 -180 {lab=VDD}
N -470 -180 -470 -160 {lab=VDD}
N -180 -180 -180 -160 {lab=VDD}
N -520 240 -520 280 {lab=xxx}
N -520 280 0 280 {lab=xxx}
N 0 240 0 280 {lab=xxx}
N -180 240 -180 280 {lab=xxx}
N -240 -210 -240 -180 {lab=VDD}
N -260 280 -260 310 {lab=xxx}
N -520 -180 -520 80 {lab=VDD}
N -520 -180 -470 -180 {lab=VDD}
N -470 0 -470 280 {lab=xxx}
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -490 -30 0 0 {name=M1
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -490 -130 0 0 {name=M2
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -540 210 0 0 {name=M3
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -540 110 0 0 {name=M4
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -200 -130 0 0 {name=M5
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -200 -30 0 0 {name=M6
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -200 110 0 0 {name=M7
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -200 210 0 0 {name=M8
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 20 -130 0 1 {name=M9
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 20 -30 0 1 {name=M10
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 20 110 0 1 {name=M11
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
C {/home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 20 210 0 1 {name=M12
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
C {ipin.sym} -600 -80 0 0 {name=p1 lab=A}
C {ipin.sym} -640 160 0 0 {name=p2 lab=B}
C {opin.sym} 160 30 0 0 {name=p3 lab=Y}
C {iopin.sym} -260 310 1 0 {name=p4 lab=GND}
C {iopin.sym} -240 -210 3 0 {name=p5 lab=VDD}
