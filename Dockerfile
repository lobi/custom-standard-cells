# =====================================
# Base image for OpenLane + Magic
# =====================================
FROM ubuntu:22.04 as openlane

# Prevent tzdata from asking questions
# Set non-interactive frontend
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Environment variables
ENV PDK_ROOT=/opt/pdk
ENV OPENLANE_ROOT=/opt/openlane

# Install dependencies
RUN apt-get update && apt-get install -y \
    git wget curl build-essential python3 python3-pip \
    tcl-dev tk-dev libcairo2-dev libncurses-dev libx11-dev \
    libxpm-dev libxaw7-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev \
    m4 bison flex gawk libreadline-dev libffi-dev \
    libboost-all-dev cmake swig zlib1g-dev \
    xterm vim nano unzip tzdata \
    && rm -rf /var/lib/apt/lists/*

RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && \
    apt-get update && \
    apt-get install -y \
        git build-essential automake libtool \
        libx11-dev libxaw7-dev libxpm-dev libxft-dev \
        tcl-dev tk-dev libcairo2-dev libxrender-dev \
        bison flex x11-apps \
        tzdata \
    && rm -rf /var/lib/apt/lists/*

# =====================================
# Build Magic
# =====================================
WORKDIR /tmp
RUN git clone https://github.com/RTimothyEdwards/magic.git && \
    cd magic && ./configure --with-opengl=yes --disable-locking && \
    make -j$(nproc) && make install && cd .. && rm -rf magic

# =====================================
# Get OpenLane
# =====================================
WORKDIR /opt
RUN git clone --depth=1 https://github.com/The-OpenROAD-Project/OpenLane.git openlane

# Install OpenLane Python requirements
WORKDIR /opt/openlane
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

# =====================================
# Get Netgen
# =====================================
WORKDIR /tmp
RUN git clone https://github.com/RTimothyEdwards/netgen.git && \
    cd netgen && ./configure --with-tcl=/usr/lib/x86_64-linux-gnu --with-tk=/usr/lib/x86_64-linux-gnu && \
    make -j$(nproc) && make install && \
    cd .. && rm -rf netgen

# =====================================
# Workspace
# =====================================
WORKDIR /project
