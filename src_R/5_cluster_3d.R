hitung_jarak <- function(x1, x2, x3, y1, y2, y3) {
  jarak <- sqrt((x1 - y1)^2 +
                  (x2 - y2)^2 +
                  (x3 - y3)^2)
  return(jarak)
}
x1 <- as.numeric(readline("Masukkan x1 : "))
x2 <- as.numeric(readline("Masukkan x2 : "))
x3 <- as.numeric(readline("Masukkan x3 : "))
jarakA <- hitung_jarak(x1, x2, x3, 2, 1, 3)
jarakB <- hitung_jarak(x1, x2, x3, 1, -4, 6)
jarakC <- hitung_jarak(x1, x2, x3, -2, 3, -2)
if (jarakA <= jarakB && jarakA <= jarakC) {
  cluster <- "A"
} else if (jarakB <= jarakA && jarakB <= jarakC) {
  cluster <- "B"
} else {
  cluster <- "C"
}
cat("Jarak ke Cluster A =", jarakA, "\n")
cat("Jarak ke Cluster B =", jarakB, "\n")
cat("Jarak ke Cluster C =", jarakC, "\n")
cat("Titik termasuk Cluster", cluster)
