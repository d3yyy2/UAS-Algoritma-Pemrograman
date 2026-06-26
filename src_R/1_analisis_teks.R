# PROGRAM 1 - ANALISIS TEKS

# Input teks
teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."

# Memisahkan teks menjadi kata-kata
daftar_kata <- strsplit(teks, "\\s+")[[1]]

# Menghitung jumlah kata
jumlah_kata <- length(daftar_kata)

# Menghitung jumlah kalimat
jumlah_kalimat <- length(gregexpr("\\.", teks)[[1]])

# Menampilkan hasil
cat("Jumlah kata =", jumlah_kata, "\n")
cat("Jumlah kalimat =", jumlah_kalimat, "\n")
