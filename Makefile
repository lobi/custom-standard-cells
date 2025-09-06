# Variables
PDK_ROOT ?= /usr/local/share/pdk
OPENLANE_ROOT ?= $(PWD)/openlane
DESIGN_NAME ?= my_design
#MAGIC_RCFILE ?= $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc
#TECH_FILE ?= $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.tech
PDK_PATH = /opt/pdk
MAGIC_RCFILE ?= $(PDK_PATH)/sky130A/libs.tech/magic/sky130A.magicrc
TECH_FILE ?= $(PDK_PATH)/sky130A/libs.tech/magic/sky130A.tech

MAGIC_RCFILE_LOCAL ?= $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc
TECH_FILE_LOCAL ?= $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.tech

DOCKER_COMPOSE = docker compose
DOCKER_X11 = docker compose run --rm -e DISPLAY=$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix
DOCKER_X11_GPU = docker compose run --rm -e DISPLAY=$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/dri
DOCKER_X11_FALLBACK = docker compose run --rm -e DISPLAY=$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix -e LIBGL_ALWAYS_INDIRECT=1

# ------------------------------
# General Targets
# ------------------------------
.PHONY: build up down shell logs

build:
	$(DOCKER_COMPOSE) build

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

shell:
	$(DOCKER_COMPOSE) run --rm openlane bash

logs:
	$(DOCKER_COMPOSE) logs -f openlane

# ------------------------------
# OpenLane
# ------------------------------
.PHONY: openlane
openlane:
	$(DOCKER_COMPOSE) run --rm openlane bash -c "flow.tcl -design $(DESIGN_NAME)"

openlane-shell:
	$(DOCKER_COMPOSE) run --rm openlane bash

# ------------------------------
# Magic
# ------------------------------
.PHONY: magic magic-tech install-magic-local magic-local install-magic-fedora clean-magic-build magic-local-tech check-magic-version magic-gpu magic-fallback setup-x11 diagnose-display magic-gpu magic-fallback setup-x11
magic:
	$(DOCKER_X11) magic -rcfile $(MAGIC_RCFILE) $(DESIGN_NAME).mag -d XR

magic-tech:
	$(DOCKER_X11) magic -T $(TECH_FILE) $(DESIGN_NAME).mag -d XR

magic-gpu:
	@echo "Running Magic with GPU acceleration..."
	$(DOCKER_X11_GPU) magic -rcfile $(MAGIC_RCFILE) $(DESIGN_NAME).mag -d XR

magic-fallback:
	@echo "Running Magic with software rendering (fallback mode)..."
	$(DOCKER_X11_FALLBACK) magic -rcfile $(MAGIC_RCFILE) $(DESIGN_NAME).mag -d XR

setup-x11:
	@echo "Setting up X11 permissions for Docker..."
	@echo "Current DISPLAY: $(DISPLAY)"
	xhost +local:docker
	@echo "X11 setup completed. You can now run Magic with Docker."

diagnose-display:
	@echo "=== Display Diagnostics ==="
	@echo "DISPLAY variable: $(DISPLAY)"
	@echo "X11 socket exists: $$(if [ -S /tmp/.X11-unix/X0 ]; then echo 'YES'; else echo 'NO'; fi)"
	@echo "Testing X11 connection..."
	@if command -v xdpyinfo >/dev/null 2>&1; then \
		xdpyinfo | head -5; \
	else \
		echo "xdpyinfo not found, install with: sudo dnf install xorg-x11-utils"; \
	fi
	@echo "Testing OpenGL support..."
	@if command -v glxinfo >/dev/null 2>&1; then \
		glxinfo | grep -E "(OpenGL version|direct rendering)"; \
	else \
		echo "glxinfo not found, install with: sudo dnf install mesa-demos"; \
	fi
	@echo "=== End Diagnostics ==="

install-magic-fedora:
	@echo "Installing Magic from Fedora repositories..."
	sudo dnf install -y magic
	@echo "Checking Magic version..."
	@magic_version=$$(magic --version 2>/dev/null | head -1 || echo "0.0.0"); \
	echo "Installed Magic version: $$magic_version"; \
	if echo "$$magic_version" | grep -q "0.0.0\|8.3.[0-3][0-9][0-9]\|8.[0-2]"; then \
		echo "WARNING: Fedora Magic version is too old for sky130A PDK."; \
		echo "The sky130A PDK requires Magic 8.3.411 or newer."; \
		echo "Please use 'make install-magic-local' instead for a newer version."; \
		echo "Or use the Docker version with 'make magic' command."; \
	else \
		echo "Magic version should be compatible with sky130A PDK."; \
	fi
	@echo "Magic installation from Fedora repos completed!"

install-magic-local:
	@echo "Installing Magic locally on Fedora..."
	sudo dnf install -y git make gcc gcc-c++ tcl-devel tk-devel \
		libX11-devel libXpm-devel cairo-devel mesa-libGL-devel \
		mesa-libGLU-devel freeglut-devel ncurses-devel readline-devel \
		m4 bison flex autoconf automake libtool
	@echo "Removing any existing Magic source..."
	rm -rf /tmp/magic
	@echo "Cloning stable Magic version (8.3.485)..."
	git clone https://github.com/RTimothyEdwards/magic.git /tmp/magic
	cd /tmp/magic && git checkout 8.3.485
	@echo "Building and installing Magic..."
	cd /tmp/magic && \
		autoreconf -fiv && \
		./configure --with-opengl=yes --disable-locking --prefix=/usr/local && \
		make clean && \
		make -j$$(nproc) && \
		sudo make install
	@echo "Updating library cache..."
	sudo ldconfig
	@echo "Verifying installation..."
	@magic --version || echo "Magic installed but version check failed"
	@echo "Magic installation completed!"

check-magic-version:
	@echo "Checking Magic version compatibility..."
	@magic_version=$$(magic --version 2>/dev/null | head -1 || echo "not found"); \
	echo "Current Magic version: $$magic_version"; \
	if echo "$$magic_version" | grep -q "not found"; then \
		echo "ERROR: Magic is not installed or not in PATH"; \
		echo "Run 'make install-magic-local' or 'make install-magic-fedora'"; \
	elif echo "$$magic_version" | grep -q "0.0.0\|8.3.[0-3][0-9][0-9]\|8.[0-2]"; then \
		echo "WARNING: Magic version is too old for sky130A PDK (requires 8.3.411+)"; \
		echo "Run 'make install-magic-local' for a newer version"; \
	else \
		echo "Magic version should be compatible with sky130A PDK"; \
	fi

clean-magic-build:
	@echo "Cleaning up Magic build files..."
	rm -rf /tmp/magic
	@echo "Build cleanup completed!"

magic-local:
	magic -rcfile $(MAGIC_RCFILE_LOCAL) $(DESIGN_NAME).mag

magic-local-tech:
	magic -T $(TECH_FILE_LOCAL) $(DESIGN_NAME).mag

# ------------------------------
# Netgen
# ------------------------------
.PHONY: netgen
netgen:
	$(DOCKER_COMPOSE) run --rm netgen \
		netgen -batch lvs \
		"$(DESIGN_NAME).spice $(DESIGN_NAME)" \
		"$(DESIGN_NAME)_schematic.spice $(DESIGN_NAME)" \
		$(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl \
		| tee netgen_lvs.log

netgen-openlane:
	$(DOCKER_COMPOSE) run --rm openlane \
		netgen -batch lvs \
		"$(DESIGN_NAME).spice $(DESIGN_NAME)" \
		"$(DESIGN_NAME)_schematic.spice $(DESIGN_NAME)" \
		$(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl \
		| tee netgen_lvs.log

# ------------------------------
# Xschem
# ------------------------------
.PHONY: xschem
xschem:
	$(DOCKER_X11) xschem xschem $(DESIGN_NAME).sch -d XR
