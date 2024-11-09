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

# Tugas 8

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const digunakan untuk mendeklarasikan objek atau widget yang bersifat konstan dan tidak berubah, hal itu dapat membantu mengoptimalkan performa dan efisiensi memori dengan menghindari pembuatan objek yang sama berulang kali. Menggunakan const pada widget yang statis atau tidak bergantung pada perubahan data, memungkinkan Flutter untuk mempercepat rendering dan mengurangi overhead memori. Namun, const tidak cocok untuk widget yang bergantung pada state atau variabel yang dinamis, seperti widget yang teksnya berubah berdasarkan input pengguna. const sangat cocok digunakan ketika objek atau widget benar-benar immutabel dan tidak akan diubah selama siklus hidup aplikasi.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column digunakan untuk menyusun widget secara vertikal. Artinya, semua widget yang dimasukkan ke dalam Column akan diletakkan satu per satu di bawah (vertikal) dari widget sebelumnya.
```
body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun widget di tengah secara vertikal
          crossAxisAlignment: CrossAxisAlignment.center, // Menyusun widget di tengah secara horizontal
          children: const [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
```

Row digunakan untuk menyusun widget secara horizontal. Artinya, widget dalam Row akan diletakkan satu per satu secara bersebelahan (horizontal).
```
body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyusun widget dengan jarak yang merata
          crossAxisAlignment: CrossAxisAlignment.center, // Menyusun widget di tengah secara vertikal
          children: const [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.settings),
          ],
        ),
```

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Form tersebut menggunakan TextFormField untuk menerima input nama, harga, deskripsi, kuantitas, dan url gambar. Terdapat elemen form lain seperti Checkbox, RadioButton, DropdownButton, Switch, dan lainnya lebih relevan jika diperlukan untuk menangani tipe input lain yang tidak hanya berupa teks.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Tema diimplementasikan menggunakan ThemeData untuk mengonfigurasi tema aplikasi secara global melalui MaterialApp. Pada aplikasi ini, menggunakan colorScheme untuk menentukan warna primer dan sekunder.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Aplikasi ini menggunakan Navigator.pushReplacement() dan Navigator.push() untuk berpindah halaman. Navigator.pushReplacement() digunakan ketika ingin berpindah ke halaman utama atau home, sedangkan Navigator.push() digunakan untunk berpindah ke halaman AddProductFormPage. Perpindahan halaman tersebut dapat diakses melalui Left Drawer atau juga menu button pada halaman home.