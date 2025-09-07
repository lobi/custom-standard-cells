export XSCHEMSYMDIR=~/ChipDesign/openlane-docker/design/inverter/xschem


symbol_path ~/xschem_projects/my_designs/symbols

# Makefile
We use Makefile to simplify the command lines. The whole project's executions can only perform with this Makefile.

Below are some commands to quick start. Please refer to Makfile for more command.

## Softwares/dependencies: 
make, git, docker, pdk sky130A, etc.

Xschem will install & run dirrectly on the host OS.

Install Xschem:
```bash
make install-xschem-fedora:
```

Magic, netgen... will run with OpenLane on Docker container.

## Project Configuration
**.env:**
```bash
# Path to PDK on your host (mounts into container)
PDK_ROOT=/usr/local/share/pdk

# Forward display for GUI tools, example for Fedora OS
DISPLAY=:0
```


## Build Project
Start build project, it will pull the OpenLane Docker Image (the pre-built version run on Docker)
```bash:
make build
```
## Usage
We have some standard cells with naming: `inverter`, `buffer`, `and`, `or`, `nand`, `xor12t`.

To start working on a standard cell, please set it's name in Makefile:
```bash
# example, you work with inverter, then:
DESIGN_NAME ?= inverter
```
### Magic
Makefile:
```bash:
make magic-tech:
```

Magic console to export netlist:
```bash:
extract all
ext2spice lvs
ext2spice
```
-> .spice file will export to the root folder
### Xschem
Makefile:
```bash:
make xschem
```
set lvs netlist top level:
On xschem menu: Simulation -> select LVS netlist: Top Level is a .subckt
On xschem menu: click Netlist -> .spice file will export to the root folder

### Netgen


## Test
Check inside your container
```bash
docker compose run --rm openlane ls /opt/pdk/sky130A/libs.ref/sky130_fd_pr/spice
```
