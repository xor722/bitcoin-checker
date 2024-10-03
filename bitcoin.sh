#!/bin/bash

# Ambil harga Bitcoin dalam USD dan IDR
harga=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd,idr")

# Parsing harga USD dan IDR menggunakan jq
harga_usd=$(echo $harga | jq '.bitcoin.usd')
harga_idr=$(echo $harga | jq '.bitcoin.idr')

# Tampilkan harga Bitcoin dalam USD dan IDR
echo "Harga Bitcoin saat ini:"
echo "USD: $harga_usd USD"
echo "IDR: Rp$harga_idr"
