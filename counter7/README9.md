# Dhafiano Fadeyka Ghani Wiweko
# 2106751631
# PBP-E
# Tugas 9

Pertanyaan :

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Jawaban :

1. Dengan menggunakan Serializer built JSON Decoder maka pengambilan data JSON bisa atau dapat terjadi tanpa membuat modelnya terlebih dahulu, sehingga jawabannya adalah iya.
2. Row : Memberi tampilan widgets children pada format secara horizontal 
Column : Memberi tampilan widgets children pada format secara vertikal 
Text : Menampilkan text/kata pada string 
FutureBuilder : membuat builder yang dimana tergantung objek future-nya secara asynchronous
Drawer : Tampilan link navigasi 

3. Menambahkan kode pada AndroidManifest.xml yang dilanjutkan dengan membuat folder dan file pada model. Kemudian membuat kode menggunakan konversi json ke dart code. Terus mengambil data dengan method http.get. Menampilkan data pada Flutter menggunakan FutureBuilder.

4. - Menambahkan beberapa file mywatchlist pada flutter, kalau saya menambahkan 3 file mywatchlist. Yang pertama untuk model yang akan ditampilkan pada flutter.
 -  Yang kedua untuk pengaksesan link mywatchlist/json yang ada pada project django atau heroku.
 -  Dan yang ketiga untuk styling agar tampilan flutter bagian mywatchlist lebih menarik.
 -  Setelah semuanya selesai maka saya git commit dan push.
