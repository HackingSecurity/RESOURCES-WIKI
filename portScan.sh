#!/bin/bash

#objetivo del scritp sería.
#necesitamos recorrer los 65535 puertos que hay 2^16

if [ $1 ]; then
    #Primer argumento
    ip_address=$1
    for port in $(seq 1 65535); do 
        #timeout 1 bash -c "echo '' > /dev/tcp/147.96.4.38/22" 2>/dev/null && echo "[*] Port x - Open"
        timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$port" 2>/dev/null && echo "[*] Port $port - Open" &
        
        #bash -c "echo '' > /dev/tcp/$ip_address/$port" 2>/dev/null && echo "[*] Port $port - Open" &
    done; wait
else

    #Informamos de errores 
    echo -e "\n[*] Uso: ./portScan.sh <ip-address>\n"
    exit 1
fi