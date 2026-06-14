nip <- readline("Masukkan NIP ASN: ")

tahun <- substr(nip, 1, 4)
bulan <- as.numeric(substr(nip, 5, 6))
tanggal <- substr(nip, 7, 8)

if (bulan == 1) {
  nama_bulan <- "Januari"
} else if (bulan == 2) {
  nama_bulan <- "Februari"
} else if (bulan == 3) {
  nama_bulan <- "Maret"
} else if (bulan == 4) {
  nama_bulan <- "April"
} else if (bulan == 5) {
  nama_bulan <- "Mei"
} else if (bulan == 6) {
  nama_bulan <- "Juni"
} else if (bulan == 7) {
  nama_bulan <- "Juli"
} else if (bulan == 8) {
  nama_bulan <- "Agustus"
} else if (bulan == 9) {
  nama_bulan <- "September"
} else if (bulan == 10) {
  nama_bulan <- "Oktober"
} else if (bulan == 11) {
  nama_bulan <- "November"
} else if (bulan == 12) {
  nama_bulan <- "Desember"
} else {
  cat("Bulan tidak valid\n")
  quit()
}

cat("Tanggal lahir ASN adalah",
    tanggal, nama_bulan, tahun, "\n")
