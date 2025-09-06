FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    git build-essential automake libtool \
    libx11-dev libxaw7-dev libxpm-dev libxft-dev \
    tcl-dev tk-dev libcairo2-dev libxrender-dev \
    bison flex x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Build and install xschem
RUN git clone https://github.com/StefanSchippers/xschem.git /opt/xschem && \
    cd /opt/xschem && ./configure && make && make install

# Add to PATH
ENV PATH="/usr/local/bin:$PATH"

WORKDIR /workspace
