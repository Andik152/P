#!/bin/bash
# File: setup.sh
# Deskripsi: Setup mining Verus Coin di Google Colab dengan RAM disk

# Instal dependensi
apt update && apt install -y build-essential cmake libuv1-dev libssl-dev libhwloc-dev git curl tor cpulimit

# Mulai Tor untuk enkripsi jaringan
service tor start

# Buat direktori di RAM disk
mkdir -p /dev/shm/verus-mining
cd /dev/shm/verus-mining

# Unduh dan kompilasi ccminer
git clone https://github.com/monkins1010/VerusCoin.git
cd verus-miner
mkdir build && cd build
cmake ..
make
mv ccminer ../../system-service
cd ../..

# Salin start-mining.sh ke RAM disk
cp /content/verus-mining-colab/start-mining.sh .
chmod +x system-service start-mining.sh
