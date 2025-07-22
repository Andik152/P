#!/bin/bash
# File: setup.sh
# Deskripsi: Setup mining Verus Coin di Google Colab

# Update sistem dan instal dependensi
apt update && apt install -y build-essential cmake libuv1-dev libssl-dev libhwloc-dev git curl tor cpulimit

# Mulai Tor untuk enkripsi jaringan
service tor start

# Unduh dan kompilasi ccminer
git clone https://github.com/monkins1010/VerusCoin.git
cd verus-miner
mkdir build && cd build
cmake ..
make
mv ccminer ../../system-service
cd ../..

# Beri izin eksekusi
chmod +x system-service start-mining.sh
