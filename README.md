# happy_farmer_shop

# Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget di Flutter yang tidak memiliki keadaan (state) yang berubah, sehingga tampilan tetap sama selama siklus hidupnya, cocok untuk tampilan statis seperti Text atau Icon. Sebaliknya, stateful widget memiliki keadaan yang dapat berubah dan dapat memperbarui tampilan sesuai dengan perubahan tersebut, sehingga ideal untuk elemen interaktif seperti Checkbox atau TextField.

Perbedaan utama antara keduanya terletak pada pengelolaan keadaan: stateless widget sederhana dan efisien, sedangkan stateful widget lebih kompleks dan memerlukan metode untuk mengelola perubahan keadaan.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Scaffold: struktur dasar untuk halaman dalam Flutter.
- AppBar: bagian atas layar yang sering digunakan untuk menampilkan judul aplikasi, ikon, atau elemen navigasi.
- Text: untuk menampilkan teks di layar.
- Padding: untuk memberikan ruang di sekitar widget.
- Column: untuk menyusun elemen-elemen secara vertikal.
- Row: untuk menyusun elemen-elemen secara horizontal.
- SizedBox: untuk memberikan ukuran tertentu atau jarak antara widget.
- Center: untuk menempatkan widget di tengah-tengah area yang tersedia.
- GridView.count: untuk menyusun elemen-elemen dalam bentuk grid.
- Card: untuk membuat elemen dengan tampilan seperti kartu.
- Material: untuk memberikan efek visual dari Material Design, seperti animasi ripple pada interaksi pengguna.
- InkWell: untuk memberikan efek ripple ketika widget ditekan.
- Icon: untuk menampilkan ikon.
- SnackBar: untuk menampilkan pesan sementara di bagian bawah layar.
- TextStyle: untuk mengatur gaya teks, seperti ukuran font, warna, dan berat teks.
- ColorScheme: untuk pengaturan warna yang digunakan untuk mendefinisikan tema warna aplikasi.
- MaterialApp: widget utama yang membungkus seluruh aplikasi Flutter dan memberikan tema serta pengaturan umum untuk aplikasi.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() dalam Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada state dari widget stateful, yang memicu pembaruan tampilan (UI) untuk mencerminkan perubahan tersebut. Ketika setState() dipanggil, semua variabel yang terlibat dalam metode build() dan diubah dalam fungsi setState() akan mempengaruhi tampilan widget, seperti variabel yang menyimpan data, status, atau properti yang mengontrol tampilan. Misalnya, saat mengubah nilai counter dan memanggil setState(), Flutter akan menggambar ulang widget untuk menampilkan nilai counter yang diperbarui.

### Jelaskan perbedaan antara const dengan final.
final dan const digunakan untuk mendeklarasikan variabel yang tidak dapat diubah setelah diinisialisasi, tetapi ada perbedaan penting di antara keduanya. Variabel final dapat diinisialisasi dengan nilai yang ditentukan saat runtime dan memungkinkan objek yang direferensikan untuk dimodifikasi, sedangkan const mengharuskan nilai ditentukan pada compile-time, menjadikannya konstan dan tidak dapat diubah, termasuk objek yang dibuat dengan const.
```dart
final List<int> numbers = [1, 2, 3];
numbers.add(4); // Tidak error
```

```dart
const List<int> numbers = [1, 2, 3];
numbers.add(4); // Error
```
### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat project baru flutter
2. Menjalankan project pada android emulator
3. Mengikuti kode dari tutorial
4. Mengubah nama aplikasi menjadi happy farmer shop
5. Menyesuaikan text pada button
6. Memberi warna yang perbeda pada ketiga button