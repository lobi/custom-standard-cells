v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -0 70 0 {lab=Vout}
N -50 -10 -40 -10 {lab=Va}
N -0 -50 -0 -40 {lab=VDD}
N 0 40 0 50 {lab=GND}
N -50 10 -40 10 {lab=Vb}
N 50 0 60 0 {lab=Vout}
C {vdd.sym} 0 -50 0 0 {name=l1 lab=VDD}
C {gnd.sym} 0 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -50 -10 0 0 {name=p1 sig_type=std_logic lab=Va
}
C {lab_pin.sym} 70 0 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {vsource.sym} -290 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -210 30 0 0 {name=Vin value="pulse(0 1.8 0 50ps 50ps 4ns 10ns)" savecurrent=false}
C {vdd.sym} -290 0 0 0 {name=l3 lab=VDD}
C {gnd.sym} -290 60 0 0 {name=l4 lab=GND}
C {gnd.sym} -210 60 0 0 {name=l5 lab=GND}
C {code.sym} 60 -140 0 0 {name=TT_MODELS 
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuidesign pdks install
.lib /home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm


"
spice_ignore=false}
C {code_shown.sym} 90 50 0 0 {name=SPICE only_toplevel=false value=".tran 0.01u 1u 
.save all" }
C {lab_pin.sym} -210 0 1 0 {name=p3 sig_type=std_logic lab=Va
}
C {lab_pin.sym} -50 10 0 0 {name=p4 sig_type=std_logic lab=Vb
}
C {vsource.sym} -210 -80 0 0 {name=Vin1 value="pulse(0 1.8 5ns 50ps 50ps 4ns 10ns)" savecurrent=false}
C {gnd.sym} -210 -50 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -210 -110 1 0 {name=p5 sig_type=std_logic lab=Vb
}
C {/home/ubvm/unic-cass/and/and.sym} 0 0 0 0 {name=x1}
