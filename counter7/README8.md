# Dhafiano Fadeyka Ghani Wiweko
# 2106751631
# PBP-E
# Tugas 7

Pertanyaan:

1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Jawaban:

1. Navigator.pushReplacement merupakan yang memberi jalan rute ke banyak rute yang jika dijalankan maka rute sebelum akan ditutup dan lanjut ke rute selanjutnya, sedangkan Navigator.push memberi jalan dari rute ke banyak rute, lalu nantinya diatur sama navigator.

2. Ada Text, Icon, Scaffold, Drawer, Column, AppBar, Form dan Material App. Fungsi dari text adalah menampilkan string katanya, kemudian Icon sebagai tempat desainnya, selanjutnya Scaffold berfungsi sebagai perlengkapan styling. Drawer berfungsi untuk tampilan link dalam appnya,
Column berfungsi menjadi anakan dari display, lalu AppBar untuk toolbar widgetnya, Form untuk pengisian opsi dari beberapa widget, dan yang terakhir adalah Material App sebagai induk dari function2 tadi untuk rooting ke app.

3. onChanged, ErrorEvent, AnimationEvent.

4. Nantinya navigator.push akan menjalankan sebuah stack yang dimana akan berganti ke stack berikutnya, nantinya peran dari navigator.pushReplacement adalah menutup rute dari stack yang sudah berjalan.

5. Pada create app tambahkan drawer dan tiga navigator didalam drawer. Kemudian tambahkan beberapa data tipe seperti String, int, dan lain sebagainya. selanjutnya tambahkan tombol-tombol yang diperlukan. Lalu tambahkan beberapa fungsi untuk link dari home ke page lainnya. Dan yang terakhir ketika sudah selesai semua maka dikumpulkan ke github.





