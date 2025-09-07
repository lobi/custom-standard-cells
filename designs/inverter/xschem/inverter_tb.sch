v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -50 -0 -30 {lab=VDD}
N -50 0 -40 0 {lab=Vin}
N -0 30 -0 50 {lab=GND}
C {vdd.sym} 0 -50 0 0 {name=l1 lab=VDD}
C {gnd.sym} 0 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -50 0 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {vsource.sym} -240 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -160 30 0 0 {name=Vin value=0 savecurrent=false}
C {vdd.sym} -240 0 0 0 {name=l3 lab=VDD}
C {gnd.sym} -240 60 0 0 {name=l4 lab=GND}
C {gnd.sym} -160 60 0 0 {name=l5 lab=GND}
C {code.sym} 60 -140 0 0 {name=TT_MODELS 
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuidesign pdks install
.lib /home/ubvm/Desktop/chip_design/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm


"
spice_ignore=false}
C {code_shown.sym} 90 50 0 0 {name=SPICE only_toplevel=false value=".dc Vin 0 1.8 0.01 
.save all" }
C {inverter.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} -160 0 1 0 {name=p3 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} 60 0 2 0 {name=p2 sig_type=std_logic lab=Vout}
