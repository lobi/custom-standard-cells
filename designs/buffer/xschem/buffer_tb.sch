v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -50 90 -30 {lab=VDD}
N 40 0 50 0 {lab=Vin}
N 90 30 90 50 {lab=GND}
N 130 0 150 0 {lab=Vout}
C {vdd.sym} 90 -50 0 0 {name=l1 lab=VDD}
C {gnd.sym} 90 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 40 0 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {vsource.sym} -240 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -160 30 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)" savecurrent=false}
C {vdd.sym} -240 0 0 0 {name=l3 lab=VDD}
C {gnd.sym} -240 60 0 0 {name=l4 lab=GND}
C {gnd.sym} -160 60 0 0 {name=l5 lab=GND}
C {code.sym} 150 -140 0 0 {name=TT_MODELS 
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuidesign pdks install
.lib /home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm


"
spice_ignore=false}
C {code_shown.sym} 180 50 0 0 {name=SPICE only_toplevel=false value=".tran 0.01u 1u 
.save all"}
C {lab_pin.sym} -160 0 1 0 {name=p3 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} 150 0 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {buffer.sym} 90 0 0 0 {name=x1}
