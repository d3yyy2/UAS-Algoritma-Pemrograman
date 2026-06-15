# Program Interval Kepercayaan Proporsi Populasi

# Input data
p_hat = float(input("Masukkan proporsi sampel (p̂): "))
n = int(input("Masukkan ukuran sampel (n): "))
alpha = float(input("Masukkan nilai alpha (0.10 atau 0.05): "))

# Validasi proporsi
if p_hat < 0 or p_hat > 1:
    print("Error: Proporsi harus berada antara 0 dan 1.")
else:
    # Menentukan nilai z
    if alpha == 0.10:
        z = 1.645
    elif alpha == 0.05:
        z = 1.96
    else:
        print("Error: Nilai alpha hanya boleh 0.10 atau 0.05.")
        exit()

    # Menghitung standar error
    se = ((p_hat * (1 - p_hat)) / n) ** 0.5

    # Menghitung batas interval kepercayaan
    batas_bawah = p_hat - z * se
    batas_atas = p_hat + z * se

    # Menampilkan hasil
    print(f"\nInterval Kepercayaan {(1-alpha)*100:.0f}%")
    print(f"{batas_bawah:.4f} < p < {batas_atas:.4f}")
