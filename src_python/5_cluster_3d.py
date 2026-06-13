import math
def hitung_jarak(x1, x2, x3, y1, y2, y3):
    jarak = math.sqrt((x1 - y1)**2 +
                      (x2 - y2)**2 +
                      (x3 - y3)**2)
    return jarak
x1 = float(input("Masukkan x1 : "))
x2 = float(input("Masukkan x2 : "))
x3 = float(input("Masukkan x3 : "))
jarakA = hitung_jarak(x1, x2, x3, 2, 1, 3)
jarakB = hitung_jarak(x1, x2, x3, 1, -4, 6)
jarakC = hitung_jarak(x1, x2, x3, -2, 3, -2)
if jarakA <= jarakB and jarakA <= jarakC:
    cluster = "A"
elif jarakB <= jarakA and jarakB <= jarakC:
    cluster = "B"
else:
    cluster = "C"
print("Jarak ke Cluster A =", jarakA)
print("Jarak ke Cluster B =", jarakB)
print("Jarak ke Cluster C =", jarakC)
print("Titik termasuk Cluster", cluster)
