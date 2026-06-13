# Flowchart
<img width="1024" height="1536" alt="Flowchart Menghitung Kata" src="https://github.com/user-attachments/assets/5810460b-9817-4f00-b7cd-1baa46a10880" />

# Pseudocode
Algoritma Hitung_Kata_dan_Kalimat

Deklarasi:
teks : string
c : character
i, n : integer
jumlahKata : integer
jumlahKalimat : integer
dalamKata : boolean

Deskripsi:
Input(teks)

    i ← 0
    n ← panjang(teks)
    jumlahKata ← 0
    jumlahKalimat ← 0
    dalamKata ← FALSE

    WHILE i < n DO

        c ← teks[i]

        IF c = '.' THEN
            jumlahKalimat ← jumlahKalimat + 1
        ENDIF

        IF c <> ' ' THEN

            IF dalamKata = FALSE THEN
                jumlahKata ← jumlahKata + 1
                dalamKata ← TRUE
            ENDIF

        ELSE
            dalamKata ← FALSE
        ENDIF

        i ← i + 1

    ENDWHILE

    Output("Jumlah Kata = ", jumlahKata)
    Output("Jumlah Kalimat = ", jumlahKalimat)

Selesai

# R studio
    1.input teks
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

# Python
    #Program Menghitung Jumlah Kata dan Jumlah Kalimat
    teks=input("Masukkan teks:")
    
    import re
    
    # Menghitung jumlah kata
    jumlah_kata = len(teks.split())
    
    # Menghitung jumlah kalimat
    # Menggunakan regex untuk memisahkan kalimat berdasarkan tanda baca (. ! ?)
    jumlah_kalimat = len(re.split(r'[.!?]+', teks.strip()))
    
    # Handle cases where the last split creates an empty string if text ends with punctuation
    if not re.split(r'[.!?]+', teks.strip())[-1]:
        jumlah_kalimat -= 1
    
    # Menampilkan hasil
    print("Jumlah kata:", jumlah_kata)
    print("Jumlah kalimat:", jumlah_kalimat)
