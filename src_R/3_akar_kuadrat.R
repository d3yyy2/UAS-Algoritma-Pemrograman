cari_akar_kuadrat <- function() {
  cat("=== Program Pencari Akar Persamaan Kuadrat ===\n")
  cat("Bentuk umum: ax^2 + bx + c = 0\n")
  
  # Membaca koefisien dari pengguna
  a <- as.numeric(readline(prompt="Masukkan nilai a: "))
  b <- as.numeric(readline(prompt="Masukkan nilai b: "))
  c <- as.numeric(readline(prompt="Masukkan nilai c: "))
  
  # Validasi input angka
  if (is.na(a) || is.na(b) || is.na(c)) {
    cat("Input tidak valid. Harap masukkan angka.\n")
    return()
  }
  
  if (a == 0) {
    cat("Nilai 'a' tidak boleh 0 karena ini bukan persamaan kuadrat.\n")
    return()
  }
  
  # Menghitung diskriminan
  D <- (b^2) - (4*a*c)
  
  # Menentukan akar berdasarkan nilai diskriminan
  if (D > 0) {
    x1 <- (-b + sqrt(D)) / (2*a)
    x2 <- (-b - sqrt(D)) / (2*a)
    cat("Persamaan memiliki dua akar real:\n")
    cat(sprintf("x1 = %.3f\n", x1))
    cat(sprintf("x2 = %.3f\n", x2))
  } else if (D == 0) {
    x <- -b / (2*a)
    cat("Persamaan memiliki akar real kembar:\n")
    cat(sprintf("x = %.3f\n", x))
  } else {
    cat("Persamaan tersebut hanya memiliki akar-akar imajiner.\n")
  }
}

# Untuk menjalankan program di konsol R, panggil fungsi di bawah ini:
# cari_akar_kuadrat()
