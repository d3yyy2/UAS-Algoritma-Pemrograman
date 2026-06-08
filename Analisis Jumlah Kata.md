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
