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

## Tugas Individu 9
1. **Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?**
    - **Validasi tipe**
        - Dengan `Map<String, dynamic>` dart dan flutter hanya tau bahwa setiap nilai adalah dynamic sehingga harus melakukan casting manual tiap kali mau akses data.
        - Model Dart mengubah data menjadi objek yang sudah ditentukan typenya secara eksplisit 
    - **Null-safety**
        - Dengan `Map<String, dynamic>` nilai null akan lebih sulit untuk dikelola, harus menambahkan validasi pengecekan null di setiap akses ke map.
        - Model Dart memaksa untuk secara jelas mendeklarasikan field mana yang mungkin memiliki nilai null 
    - **maintainability**
        - Dengan `Map<String, dynamic>` Kode menjadi lebih berantakan karena harus casting manual.
        - Dengan `Map<String, dynamic>` Jika satu struktur JSON berubah maka harus mencari dan update di seluruh codebase (lebih rumit).
        - Model Dart mengganti akses string key menjadi akses property object yang lebih mudah untuk di baca dan di refactor.

2. **Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.**
    - **Http**
        - Untuk melakukan HTTP request ke web service
        - Melakukan general HTTP request tanpa peduli status session
        - Harus mengimplementasikan cookie secara manual 
    - **CookieRequest**
        - Mengelola dan mengirimkan cookies 
        - Melakukan request HTTP sekaligus mengelola cookies untuk menjaga auth session
        - Menyimpan session cookie secara otomatis dari response dan menyertakan ke semua request berikutnya


3. **Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
    - **Alasan Utama**
        - Karena fungsi utama nya adalah untuk mempertahankan dan mengelola session auth user di seluruh app. CookieRequest adalah sebagai "lock" dari session, sehingga instance yang sama harus digunakan oleh seluruh app untuk membuka session.
    - **Alasan Lainnya**
        - **Konsistensi session**
            - Menggunakan satu instance membuat setiap komponen dijamin mengakses session dan cookie yang sama
        - **Efisiensi**
            - Logika penanganan cookie akan terpusat disatu tempat sehingga mengurangi duplikasi kode dan mempermudah ketika debuggung

4. **Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?**
    - **Konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django.**
        - Menambahkan `ALLOWED_HOSTS = [..., ..., "10.0.2.2"]` di `settings.py`
        - Menambahkan kode berikut di `settings.py`
            ```
            CORS_ALLOW_ALL_ORIGINS = True
            CORS_ALLOW_CREDENTIALS = True
            CSRF_COOKIE_SECURE = True
            SESSION_COOKIE_SECURE = True
            CSRF_COOKIE_SAMESITE = 'None'
            SESSION_COOKIE_SAMESITE = 'None'
            ```
        - Menambahkan kode berikut di `android/app/src/main/AndroidManifest.xml`
            ```
            <!-- Required to fetch data from the Internet. -->
            <uses-permission android:name="android.permission.INTERNET" />
            ```
    - **Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android**
        - **Menambahkan 10.0.2.2**
            - Untuk mengizinkan Android Emulator untuk mengakses server Django. 
            - **Jika konfigurasi tidak dilakukan dengan benar**
                - Django akan menolak dengan response 400 Bad Request
        - **Mengaktifkan CORS dan pengaturan SameSite/cookie**
            - Cors untuk mengizinkan request dari flutter ke Django (defaultnya kebijakan keamanan di browser dan mobile membatasi request yang dilakukan antar origin berbeda sehingga harus explicitly mengizinkan request)
            - Cookie untuk mengirim cookie yang dapat digunakan oleh app mobile
            - **Jika konfigurasi tidak dilakukan dengan benar**
                - Request akan diblokir dan ditolak, karena cookie tidak disimpan dan dikirim kembali maka user akan menjadi anonim
        - **Menambahkan izin akses internet di Android**
            - Memberikan izin untuk app Android untuk menggunakan jaringan jaringan
            - **Jika konfigurasi tidak dilakukan dengan benar**
                - Aplikasi akan gagal mengakses koneksi jaringan sehingga dapat menyebabkan terjadinya error di flutter

5. **Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.** 
    - **Melakukan input dan validasi di Flutter**
        - User mengisi form 
        - Setiap input pada field akan dicek menggunakan validator
        - Jika berhasil maka lanjut mengirim data
    - **Mengirimkan data ke Django**
        - CookieRequest mengirimkan HTTP request (POST) ke endpoint Django dengan body JSON yang berisi data input 
    - **Melakukan pemrosesan di Django** 
        - Django akan memproses request dan membuat response kembali ke flutter
    - **Menampilkan daftar produk** 
        - Flutter akan melakukan pengecekan jika produk berhasil dibuat atau tidak, jika berhasil maka flutter akan menampilkan list datanya. 

6. **Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
    - **Login**
        - User mengisi login page
        - Flutter akan mengirim request ke Django
        - Django akan melakukan cek kredensial
        - Jika valid maka Django akan membuat session baru dan server mengirimkan cookies `sessionid`
        - `CookieRequest` di flutter akan menyimpan `sessionid` (request berikutnya otomatis menyertakan cooki, sehingga server dapat mengenali user sebagai logged in (sudah login))
        - Flutter akan melakukan mengarahkan user ke halaman utama.
    - **Register**
        - User mengisi registration page
        - Flutter melakukan validasi lokal jika berhasil maka
        - Flutter mengirimkan request JSON (POST) ke endpoint di Django
        - Django akan melakukan validasi data
        - Jika sukses maka flutter akan mengarahkan user ke halaman login.
    - **Logout**
        - User menekan logout button 
        - Session user di server dihapus
        - Flutter menghapus state login yang tersimpan di CookiesRequest
        - Flutter akan mengarahkan user ke halaman login.

7. **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
    - **Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.**
        - Menjalankan local server Django dengan `python3 manage.py runserver`
    - **Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.**
        - Membuat dan mengisi file `register.dart` di direktori `lib/screens`
    - **Membuat halaman login pada proyek tugas Flutter.**
        - Membuat dan mengisi file `login.dart` di direktori `lib/screens`
    - **Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.**
        - Menambahkan endpoint login, register, dan logout pada `views.py` app `authentication` di Django
        - Mengaktifkan session dan middleware di `settings.py` di Django
        - Menggunakan package `pbp_django_auth` dan membagi `CookieRequest` dengan `Provider`
    - **Membuat model kustom sesuai dengan proyek aplikasi Django.**
        - Membuat file `product_entry.dart` pada direktori `lib/models`
        - Mengisi file tersebut dengan data JSON yang sudah diubah dengan tools `app.quicktype.io`
    - **Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.**
        - Mengambil data dari endpoint `/json/` di Django yang akan mengembalikan JSON list produk 
    - **Tampilkan name, price, description, thumbnail, category, dan is_featured dari masing-masing item pada halaman ini (Dapat disesuaikan dengan field yang kalian buat sebelumnya).**
        - Membuat dan mengisi file `product_entry_card.dart` pada direktori `lib/widgets`
    - **Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.**
        - Membuat dan mengisi file `product_detail.dart` pada direktori `lib/screens`
    - **Halaman ini dapat diakses dengan menekan salah satu card item pada halaman daftar Item.**
        - Menambahkan kode berikut pada file `product_entry_list.dart` pada direktori `lib/screens`
        ```
        itemBuilder: (_, index) => ProductEntryCard(
            product: snapshot.data![index],
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailPage(product: snapshot.data![index]),
                ),
                );
            },
        ),
        ```
    - **Tampilkan seluruh atribut pada model item kamu pada halaman ini.**
        - Membuat dan mengisi file `product_entry_list.dart` pada direktori `lib/screens`
    - **Tambahkan tombol untuk kembali ke halaman daftar item.**
        - Menambahkan kode berikut pada file `product_detail.dart` pada direktori `lib/screens`
        ```
        TextButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.black87),
            label: const Text(
            'Back to Product',
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
            ),
        ),
        ```
    - **Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.**
        - Membuat endpoint baru pada Django `/my-products-json/` yang mengembalikan produk yang dibuat oleh user yang sedang login
        - Pada file `product_entry_list.dart` pada direktori `lib/screens` akan memilih endpoint sesuai dengan filter dan menampilkan daftar produknya

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