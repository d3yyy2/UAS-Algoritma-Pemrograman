hitung_jarak <- function(titik1, titik2) {
  sqrt(
    (titik1[1] - titik2[1])^2 +
      (titik1[2] - titik2[2])^2 +
      (titik1[3] - titik2[3])^2
  )
}

cluster_a <- c(2, 1, 3)
cluster_b <- c(1, -4, 6)
cluster_c <- c(-2, 3, -2)

input_titik <- readline("Masukkan titik U (format: x1,x2,x3): ")

titik_u <- as.numeric(unlist(strsplit(input_titik, ",")))

if(length(titik_u) != 3 || any(is.na(titik_u))) {
  
  cat("Error: Masukkan tepat 3 angka dengan format x1,x2,x3\n")
  
} else {
  
  jarak_a <- hitung_jarak(titik_u, cluster_a)
  jarak_b <- hitung_jarak(titik_u, cluster_b)
  jarak_c <- hitung_jarak(titik_u, cluster_c)
  
  minimum <- min(jarak_a, jarak_b, jarak_c)
  
  if(minimum == jarak_a) {
    cluster <- "A"
  } else if(minimum == jarak_b) {
    cluster <- "B"
  } else {
    cluster <- "C"
  }
  
  cat("\n===== HASIL PERHITUNGAN =====\n")
  cat("Titik U =", paste(titik_u, collapse=","), "\n")
  cat("Jarak ke Cluster A =", round(jarak_a, 3), "\n")
  cat("Jarak ke Cluster B =", round(jarak_b, 3), "\n")
  cat("Jarak ke Cluster C =", round(jarak_c, 3), "\n")
  cat("Titik termasuk Cluster", cluster, "\n")
}
