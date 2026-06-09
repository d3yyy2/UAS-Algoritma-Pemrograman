1. Input Teks
teks <- readline(prompt = "masukkan teks: ")
masukkan teks:
if (teks == "") {
  teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
}

2. Menghitung Jumlah Kalimat
list_kalimat <- strsplit(trimws(teks), "\\.")[[1]]
list_kalimat <- list_kalimat[list_kalimat != ""]
jumlah_kalimat <- length(list_kalimat)

3. Menghitung Jumlah Kata
teks_bersih <- gsub(",", "", teks)
list_kata <- strsplit(teks_bersih, "\\s+")[[1]]
jumlah_kata <- length(list_kata)

4. Menampilkan Hasil
cat("\n--- HASIL ANALISIS TEKS ---\n")
--- HASIL ANALISIS TEKS ---
cat("Jumlah Kalimat : ", jumlah_kalimat, "kalimat\n")
Jumlah Kalimat :  5 kalimat
cat("Jumlah Kata    : ", jumlah_kata, "kata\n")
Jumlah Kata    :  92 kata
