import math

def hitung_jarak(titik1, titik2):
    return math.sqrt(
        (titik1[0] - titik2[0]) ** 2 +
        (titik1[1] - titik2[1]) ** 2 +
        (titik1[2] - titik2[2]) ** 2
    )

cluster_a = (2, 1, 3)
cluster_b = (1, -4, 6)
cluster_c = (-2, 3, -2)

try:
    x1 = float(input("Masukkan x1: "))
    x2 = float(input("Masukkan x2: "))
    x3 = float(input("Masukkan x3: "))

    titik_u = (x1, x2, x3)

    jarak_a = hitung_jarak(titik_u, cluster_a)
    jarak_b = hitung_jarak(titik_u, cluster_b)
    jarak_c = hitung_jarak(titik_u, cluster_c)

    minimum = min(jarak_a, jarak_b, jarak_c)

    if minimum == jarak_a:
        cluster = "A"
    elif minimum == jarak_b:
        cluster = "B"
    else:
        cluster = "C"

    print("\nHasil Perhitungan")
    print(f"Jarak ke Cluster A = {jarak_a:.3f}")
    print(f"Jarak ke Cluster B = {jarak_b:.3f}")
    print(f"Jarak ke Cluster C = {jarak_c:.3f}")
    print(f"Titik termasuk Cluster {cluster}")

except ValueError:
    print("Error: Input harus berupa angka.")
