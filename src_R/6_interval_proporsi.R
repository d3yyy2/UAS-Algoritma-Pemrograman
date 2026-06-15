# Program Interval Kepercayaan Proporsi Populasi

# Input data
p_hat <-"Masukkan proporsi sampel (p_hat)"
n <-"Masukkan ukuran sampel (n)"
alpha <- "Masukkan nilai alpha (0.10 atau 0.05)"

# Validasi proporsi
if (p_hat < 0 || p_hat > 1) {
  cat("Error: Proporsi harus berada antara 0 dan 1\n")
} else {
  
  # Menentukan nilai z
  if (alpha == 0.10) {
    z <- 1.645
  } else if (alpha == 0.05) {
    z <- 1.96
  } else {
    cat("Error: Nilai alpha hanya boleh 0.10 atau 0.05\n")
    quit()
  }
  
  # Menghitung standar error
  se <- sqrt((p_hat * (1 - p_hat)) / n)
  
  # Menghitung interval kepercayaan
  batas_bawah <- p_hat - z * se
  batas_atas <- p_hat + z * se
  
  # Menampilkan hasil
  cat("\nInterval Kepercayaan", (1 - alpha) * 100, "%:\n")
  cat(round(batas_bawah, 4), "< p <", round(batas_atas, 4), "\n")
}


