export XSCHEMSYMDIR=~/ChipDesign/openlane-docker/design/inverter/xschem


symbol_path ~/xschem_projects/my_designs/symbols


## Softwares/dependencies Requirement: 
make, git, docker, pdk sky130A, etc.

Xschem will run on the host OS
Magic, netgen... will run with OpenLane Docker container


---
## Build Project
Start build project, it will pull the OpenLane Docker Image (the pre-built version run on Docker)
```bash:
make build
```

---
## Using
### Magic
Makefile:
```bash:
make magic-tech:
```

Magic console:
```bash:
extract all
ext2spice lvs
ext2spice
```
-> .spice file will export to the root folder

---
### Xschem
Makefile:
```bash:
make xschem
```
set lvs netlist top level:
On xschem menu: Simulation -> select LVS netlist: Top Level is a .subckt
On xschem menu: click Netlist -> .spice file will export to the root folder

