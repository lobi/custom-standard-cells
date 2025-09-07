v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -50 80 -50 {lab=VDD}
N 80 -50 80 -30 {lab=VDD}
N 80 30 80 50 {lab=GND}
N -60 50 80 50 {lab=GND}
N 140 -0 160 0 {lab=Y}
N -60 -80 -60 -50 {lab=VDD}
N -60 50 -60 80 {lab=GND}
N -60 -50 -60 -40 {lab=VDD}
N -60 40 -60 50 {lab=GND}
N 10 0 40 -0 {lab=#net1}
N -120 -10 -100 -10 {lab=A}
N -120 10 -100 10 {lab=B}
C {inverter.sym} 80 0 0 0 {name=x2}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} -120 -10 0 0 {name=p1 lab=A
}
C {/usr/share/xschem/xschem_library/devices/opin.sym} 160 0 0 0 {name=p2 lab=Y}
C {/usr/share/xschem/xschem_library/devices/iopin.sym} -60 -80 3 0 {name=p3 lab=VDD}
C {/usr/share/xschem/xschem_library/devices/iopin.sym} -60 80 1 0 {name=p4 lab=GND}
C {/home/ubvm/unic-cass/nand/nand.sym} -60 0 0 0 {name=x1}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} -120 10 0 0 {name=p5 lab=B
}
