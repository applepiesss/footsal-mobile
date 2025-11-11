# Footsal. ⚽️

    Nama: Nadia Aisyah Fazila
    NPM: 2406495584
    Kelas: PBP - C

## Tugas Individu 7
1. **Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.**
    - **Widget Tree**
        - Logical representation dari semua user UI widget yang akan di jalankan ketika pengukuran layout dan digunakan ketika melakukan rendering dan hit testing.
    - **Parent**
        - Widget yang mengandung widget lain di dalamnya. Parent widget mengatur layout dan positioning dari child yang dikandungnya.
    - **Child**
        - Widget yang dikandung oleh widget lain. Memiliki constraint dari parent widgetnya, constraint tersebut mengatur layout dan positioning dari dirinya.

2. **Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.**
    - `MaterialApp` di `main.dart` = Sebagai widget root yang menyediakan skeleton untuk aplikasi.
    - `StatelessWidget` di `main.dart` dan `menu.dart` = Sebagai superclass untuk widget yang tidak memerlukan state untuk berubah.
    - `Scaffold` di `menu.dart` = Menyediakan layout untuk material design.
    - `AppBar` di `menu.dart` = Menampilkan judul dan menu pada aplikasi.
    - `ThemeData` di `main.dart` = Mendefinisikan tema yang digunakan seperti warna untuk tampilan pada aplikasi.
    - `Text` di `main.dart` dan `menu.dart` = Menampilkan text dengan styling.
    - `TextStyle` di `main.dart` dan `menu.dart` = Mendefinisikan gaya untuk text widget.
    - `Color` dan `ColorScheme` di `main.dart` dan `menu.dart` = Mendefinisikan warna yang digunakan pada aplikasi.
    - `Padding` di `menu.dart` = Menambahkan padding disekeliling child widgetnya.
    - `Column` di `menu.dart` = Menyusun child widgetnya ke arah vertikal.
    - `Row` di `menu.dart` = Menyusun child widgetnya ke arah horizontal.
    - `Center` di `menu.dart` = Menyusun child widgetnya di tengah-tengah.
    - `SizedBox` di `menu.dart` = Membuat kotak dengan ukuran yang tetap.
    - `GridView.count` di `menu.dart` = Menyusun child widgetnya dalam bentuk grid.
    - `Card` di `menu.dart` = Menampilkan informasi dalam kotak material design.
    - `Container` di `menu.dart` = Menyusun dan sebagai container untuk child widgetnya. 
    - `Icon` di `menu.dart` = Menampilkan ikon dari set ikon yang tersedia.
    - `Material` di `menu.dart` = Untuk menggunakan fitur material untuk child widgetnya.
    - `InkWell` di `menu.dart` = Untuk meresponse tap.
    - `ScaffoldMessenger` di `menu.dart` = Untuk mengelola SnackBar.
    - `SnackBar` di `menu.dart` = Untuk menampilkan pesan notifikasi di bawah layar.
    - `MediaQuery.of(context)` di `menu.dart` = Diakses melalui BuildContext untuk mendapatkan informasi ukuran dan karakteristik layar.
    - `BorderRadius.circular` di `menu.dart` = Mendefinisikan sudut melengkung pada widget 

3. **Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.**
    - **Fungsi**
        - Menyediakan theme untuk mendefinisikan tema seperti warna yang akan digunakan untuk widget material dibawahnya
    - **Mengapa digunakan sebagai widget root**
        - Karena menyediakan semua context yang dibutuhkan oleh widget material lainnya.

4. **Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?**
    - **Stateless Widget**
        - Tidak memiliki state sehingga tidak bisa diubah oleh interaksi dari user. Perubahan tampilan pada stateless widget terjadi jika ada perubahan input dari widget parentnya di widget tree.
    - **Stateful Widget**
        - Dapat mengubah deskripsi tampilannya sebagai response terhadap interaksi dari user.
    - **Pengunaan**
        - Stateless widget digunakan untuk elemen yang tampilannya tidak berubah. Sedangkan, Stateful widget digunakan ketika memerlukan tampilan yang dapat berubah. 

5. **Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?**
    - **Build Context**
        - Referensi address dari sebuah widget di dalam widget tree yang memberikan akses pada widget untuk melakukan interaksi dengan widget yang disekitarnya terutama widget diatasnya di widget tree.
    - **Mengapa Penting**
        - Karena, memungkinkan widget lain untuk mengakses data yang disediakan oleh widget diatasnya pada widget tree. 
    - **Pengunaan**
        - Contoh ketika menggunakan Theme.of(context), context akan mencari ke atas untuk menemukan theme terdekat.

6. **Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".**
    - **Hot Reload**
        - Load perubahan kode ke dalam virtual machine dan reload widget tree namun tetap mempertahankan state pada aplikasi.
    - **Hot Restart**
        - Load perubahan kode ke dalam virtual machine kemudian melakukan restart seluruh aplikasi flutternya sehingga tidak mempertahankan state aplikasi. 

## Tugas Individu 7
1. **Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?**
    - **Navigator.push()**
        - Menambahkan halaman baru di atas halaman sebelumya pada stack. Cocok digunakan ketika user perlu kembali ke halaman yang sebelumnya.
    - **Navigator.pushReplacement()**
        - Mengganti halaman saat ini dengan halaman baru. Cocok digunakan ketika halaman sebelumnya tidak perlu diakses lagi.
    - **Penerapan pada football shop**
        - Saya menggunakan `navigator.push()` di `left_drawer.dart` untuk `Add Product` karena menurut saya sebaiknya user dapat kembali ke halaman sebelumnya setelah selesai melakukan add product. Sedangkan, saya menggunakan `navigator.pushReplacement` di `left_drawer.dart` untuk `home` karena home adalah main page dari app sehingga ketika user memilih menu home dari drawer, sebaiknya halaman lain diganti dengan home supaya tidak terjadi penumpukan halaman.

2. **Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?**
    - **Scaffold**
        - Saya menggunakan `Scaffold` sebagai kerangka utama pada halaman tempat dimana saya meletakkan `AppBar`, `Drawer`, dan `body` dengan rapi. 
    - **AppBar**
        - Saya menggunakan `AppBar` untuk menampilkan judul dari masing-masing halaman. 
    - **Drawer**
        - Saya menggunakan `Drawer` sebagai menu navigasi yang ada di samping kiri yang berisi pilihan navigasi ke Home dan Add Product.

3. **Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.**
    - **Padding**
        - Menggunakan `Padding` untuk memberi jarak antar elemen supaya tampilannya tidak terlalu rapat.
        - **Contoh penerapan pada app**: adalah pada setiap input field di add product form dengan jarak 8 px.
    - **SingleChildScrollView**
        - Menggunakan `SingleChildScrollView` untuk halaman yang memiliki banyak elemen vertikal sehingga tinggi dari isi halamannya melebihi tinggi dari layar.
        - **Contoh penerapan pada app**: adalah pada add product form, supaya user tetap dapat scroll ke bawah untuk mengisi semua input field meskipun layarnya kecil.
    - **ListView**
        - Menggunakan `ListView` untuk menampilkan list yang dapat di scroll. Cocok digunakan untuk data yang bersifat list dan memiliki item banyak.
        - **Contoh penerapan pada app**: adalah pada add product form, `Column` menyusun input field secara vertikal.

4. **Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?**
    - Saya menyesuaikan warna tema aplikasi dengan membuat file `colors.dart` di folder `lib` sebagai tempat untuk mendefinisikan color pallete utama untuk app. Selain itu, saya juga mendefinisikan warna-warna tersebut ke `ThemeData` melalui `ColorScheme`. Sehingga pada aplikasi cukup untuk mengambil warna dari `Theme.of(context).colorScheme`.

# Footsal Mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.