#Program Menghitung Jumlah Kata dan Jumlah Kalimat
teks=input("Masukkan teks:")

import re

# Menghitung jumlah kata
jumlah_kata = len(teks.split())

# Menghitung jumlah kalimat
# Menggunakan regex untuk memisahkan kalimat berdasarkan tanda baca (. ! ?)
jumlah_kalimat = len(re.split(r'[.!?]+', teks.strip()))

# Handle cases where the last split creates an empty string if text ends with punctuation
if not re.split(r'[.!?]+', teks.strip())[-1]:
    jumlah_kalimat -= 1

# Menampilkan hasil
print("Jumlah kata:", jumlah_kata)
print("Jumlah kalimat:", jumlah_kalimat)
