# Custom Standard Cells with OpenLane Docker

A comprehensive toolkit for designing and verifying custom standard cells using OpenLane, Magic, Xschem, and Netgen in a Docker-based environment. This project provides standard cell designs for common logic gates and includes complete design flows from schematic capture to layout verification.

## Overview

This project contains custom standard cell designs for:
- **Inverter** - NOT gate implementation
- **Buffer** - Two-stage inverter buffer
- **AND** - Two-input AND gate
- **OR** - Two-input OR gate  
- **NAND** - Two-input NAND gate
- **XOR12T** - 12-transistor XOR gate

Each design includes:
- **Xschem schematics** - Schematic capture and simulation
- **Magic layouts** - Physical layout designs
- **Netgen verification** - Layout vs Schematic (LVS) verification
- **OpenLane integration** - Place and route flow

## Features

- 🐳 **Docker-based workflow** - Consistent environment across different systems
- 🎯 **SkyWater 130nm PDK** - Industry-standard process design kit
- 🔧 **Complete EDA toolchain** - Xschem, Magic, Netgen, OpenLane
- 📏 **LVS verification** - Layout vs Schematic matching
- 🚀 **Makefile automation** - Simplified command-line interface
- 📊 **SPICE simulation** - Circuit verification and characterization

## Prerequisites

### Required Software
- **make** - Build automation
- **git** - Version control
- **docker** and **docker-compose** - Container platform
- **X11 forwarding** - For GUI applications (Linux/macOS)

### Required Files
- **SkyWater 130nm PDK** - Must be installed at `PDK_ROOT` path
- **OpenLane** - Will be pulled automatically via Docker

### System Requirements
- Linux (tested on Fedora)
- 8GB+ RAM recommended
- 10GB+ free disk space

## Installation

### 1. Clone the Repository
```bash
git clone <repository-url>
cd openlane-docker
```

### 2. Install Xschem (Host Installation)
For Fedora/RHEL systems:
```bash
make install-xschem-fedora
```

This installs:
- **xschem** - Schematic editor
- **ngspice** - SPICE simulator  
- **gaw** - Waveform viewer

### 3. Configure Environment
Edit the `.env` file to match your system:
```bash
# Path to PDK on your host (mounts into container)
PDK_ROOT=/usr/local/share/pdk

# Forward display for GUI tools, example for Fedora OS
DISPLAY=:0
```

### 4. Setup X11 for Docker GUI
```bash
make setup-x11
```

### 5. Build Docker Environment
```bash
make build
```

This will pull the OpenLane Docker image and set up the container environment.

## Project Structure

```
├── designs/                    # Standard cell designs
│   ├── inverter/              # Inverter cell
│   ├── buffer/                # Buffer cell  
│   ├── and/                   # AND gate
│   ├── or/                    # OR gate
│   ├── nand/                  # NAND gate
│   └── xor12t/                # XOR gate
│       ├── xschem/            # Schematic files (.sch, .sym)
│       ├── magic/             # Layout files (.mag, .ext)
│       ├── netgen/            # LVS verification files
│       ├── openlane/          # OpenLane configuration
│       ├── results/           # Generated outputs
│       ├── sim/               # Simulation results
│       └── src/               # Source files
├── symbols/                   # Xschem symbol libraries
│   ├── devices/               # Device symbols
│   ├── analog/                # Analog symbols
│   └── digital/               # Digital symbols
├── Makefile                   # Build automation
├── docker-compose.yml         # Docker services
├── Dockerfile                 # OpenLane container
└── .env                       # Environment configuration
```

## Usage

### Setting the Design

Before working with any design, set the design name in the Makefile:
```bash
# In Makefile, change this line:
DESIGN_NAME ?= inverter  # Change to: buffer, and, or, nand, xor12t
```

### Workflow Overview

1. **Schematic Design** - Create/edit schematics with Xschem
2. **Layout Design** - Create physical layout with Magic
3. **Extraction** - Extract parasitics and netlists
4. **LVS Verification** - Verify layout matches schematic
5. **Simulation** - Run SPICE simulations

### 1. Schematic Design with Xschem

#### Open Existing Schematic
```bash
make xschem                    # Open main schematic
make xschem-sim               # Open testbench schematic  
make xschem-symbol            # Open symbol view
```

#### Create New Design
```bash
make xschem-new               # Create new design structure
```

#### Generate Netlist
```bash
make xschem-netlist           # Generate SPICE netlist
```

#### Run Simulation
```bash
make xschem-simulate          # Run SPICE simulation
```

### 2. Layout Design with Magic

#### Open Layout Editor
```bash
make magic-tech               # Open with technology file
make magic-gpu                # Use GPU acceleration (if available)
make magic-fallback           # Software rendering fallback
```

#### In Magic Console - Extract Netlist
```tcl
extract all
ext2spice lvs
ext2spice
```
The `.spice` file will be exported to the root folder.

#### Generate Layout Netlist
From Xschem menu:
1. **Simulation** → Select **LVS netlist**: Top Level is a `.subckt`
2. **Netlist** → Generate `.spice` file

### 3. LVS Verification with Netgen

```bash
make netgen-openlane          # Run Layout vs Schematic verification
```

Results will be saved to `netgen_lvs.log`.

### 4. OpenLane Place and Route

```bash
make openlane                 # Run complete PnR flow
make openlane-shell          # Interactive OpenLane shell
```

## Available Commands

### General Commands
```bash
make build                    # Build Docker containers
make up                       # Start services in background
make down                     # Stop all services
make shell                    # Open OpenLane shell
make logs                     # View container logs
```

### Design Tools
```bash
# Xschem (Schematic Editor)
make xschem                   # Open main schematic
make xschem-sim              # Open testbench
make xschem-symbol           # Open symbol
make xschem-netlist          # Generate netlist
make xschem-simulate         # Run simulation

# Magic (Layout Editor)  
make magic-tech              # Open layout with tech file
make magic-gpu               # GPU accelerated mode
make magic-fallback          # Software rendering
make diagnose-display        # Debug display issues

# Netgen (LVS Verification)
make netgen-openlane         # Run LVS verification

# OpenLane (Place & Route)
make openlane                # Run PnR flow
make openlane-shell         # Interactive shell
```

### Installation Commands
```bash
make install-xschem-fedora   # Install Xschem on Fedora
make install-magic-fedora    # Install Magic from repos
make install-magic-local     # Build Magic from source
make check-magic-version     # Check Magic compatibility
```

## Design Guidelines

### Standard Cell Requirements
- **Power Rails** - VDD/VSS at standard heights
- **Pin Placement** - Standard locations for inputs/outputs
- **Cell Height** - Multiple of track pitch
- **Well Spacing** - Adequate N-well/P-well separation

### LVS Rules
- **Net Names** - Must match between schematic and layout
- **Device Sizes** - Width/length must match exactly
- **Connectivity** - All nodes must be properly connected

## Troubleshooting

### Display Issues
```bash
make diagnose-display         # Check X11 configuration
make setup-x11               # Fix X11 permissions
```

### Magic Version Issues
```bash
make check-magic-version     # Check compatibility
make install-magic-local     # Install newer version
```

### Container Issues
```bash
make down && make build      # Rebuild containers
docker system prune          # Clean up Docker
```

### PDK Issues
- Verify `PDK_ROOT` path in `.env`
- Check PDK installation: `ls $PDK_ROOT/sky130A`
- Ensure proper permissions on PDK directory

## Testing

Verify your installation:
```bash
# Test PDK access
docker compose run --rm openlane ls /opt/pdk/sky130A/libs.ref/sky130_fd_pr/spice

# Test X11 forwarding  
make diagnose-display

# Test tools
make xschem                  # Should open Xschem GUI
make magic-tech             # Should open Magic GUI
```

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Add new standard cell designs to `designs/`
4. Include complete verification (LVS, DRC)
5. Update documentation
6. Submit a pull request

### Adding New Cells
1. Create directory: `designs/new-cell/`
2. Add subdirectories: `xschem/`, `magic/`, `netgen/`, etc.
3. Update `DESIGN_NAME` options in documentation
4. Include testbench and verification

## License

This project is open-source. Please refer to the LICENSE file for details.

## Acknowledgments

- **SkyWater Technology** - For the open-source 130nm PDK
- **OpenLane Project** - For the automated PnR flow
- **Magic VLSI** - For the layout editor
- **Xschem** - For the schematic capture tool
- **Netgen** - For LVS verification

## Support

For issues and questions:
1. Check the [Troubleshooting](#troubleshooting) section
2. Review Makefile targets: `make help`
3. Check container logs: `make logs`
4. Open an issue on GitHub

---

**Happy Designing! 🎯**