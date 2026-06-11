import math

def cari_akar_kuadrat():
    print("=== Program Pencari Akar Persamaan Kuadrat ===")
    print("Bentuk umum: ax^2 + bx + c = 0")
    
    try:
        a = float(input("Masukkan nilai a: "))
        b = float(input("Masukkan nilai b: "))
        c = float(input("Masukkan nilai c: "))
    except ValueError:
        print("Input tidak valid. Harap masukkan angka.")
        return

    if a == 0:
        print("Nilai 'a' tidak boleh 0 karena ini bukan persamaan kuadrat.")
        return

    D = (b**2) - (4*a*c)

    if D > 0:
        x1 = (-b + math.sqrt(D)) / (2*a)
        x2 = (-b - math.sqrt(D)) / (2*a)
        print(f"Persamaan memiliki dua akar real:")
        print(f"x1 = {x1:.3f}")
        print(f"x2 = {x2:.3f}")
    elif D == 0:
        x = -b / (2*a)
        print(f"Persamaan memiliki akar real kembar:")
        print(f"x = {x:.3f}")
    else:
        print("Persamaan tersebut hanya memiliki akar-akar imajiner.")
        
if __name__ == "__main__":
    cari_akar_kuadrat()
