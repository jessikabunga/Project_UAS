Anggota Kelompok:
- Jessika Bunga Amalia    235150701111005
- Zahra Aura Nabila		    235150701111004
- Antike Rahma Safira		  235150707111009
- Besty Cintara			      235150707111036


Perbaikan API eksternal pada sistem Pemesanan Tiket Bisokop
1. Perbaikan Sumber Data Film: Dari CSV ke API TMDB pada file MovieSeeder.php di Movie-Service
  Pada implementasi awal sistem kami, data film diperoleh dari file CSV statis yang di-upload secara manual ke dalam database. Pendekatan ini memiliki beberapa keterbatasan, di antaranya:
    - Data film tidak dinamis dan cepat usang.
    - Sulit memperbarui data secara otomatis.
    - Tidak mencerminkan kondisi film yang sedang tayang saat ini.

  Perbaikan yang dilakukan:
  Kami mengubah pendekatan menjadi otomatisasi pengambilan data film menggunakan API eksternal dari The Movie Database (TMDB) https://www.themoviedb.org/. Perubahan ini diimplementasikan melalui file MovieSeeder.php, yang kini memanfaatkan GuzzleHttp Client untuk:
    - Mengambil daftar film populer dari endpoint movie/popular.
    - Mengambil daftar genre dari endpoint genre/movie/list.
    - Menyimpan data film ke database secara langsung dengan judul, genre, jadwal tayang, dan harga.
  Dengan pendekatan ini, data film kini:
    - Lebih aktual dan relevan.
    - Dapat diperbarui secara berkala hanya dengan menjalankan seeder.
    - Menyediakan beragam genre dan judul populer dari TMDB.

2. Perbaikan Sistem Autentikasi: Validasi Token JWT Saat Akses Data
  Sebelumnya pada versi awal sistem kami:
    - User tetap harus login terlebih dahulu melalui Auth Service.
    - Setelah login, user mendapatkan JWT token.
    - Namun, meskipun sudah login, endpoint seperti daftar film masih bisa diakses tanpa menyertakan token JWT di request.
    - Artinya, API Gateway tidak memverifikasi token JWT saat permintaan diteruskan ke Movie Service.

  Sistem kini telah diperbaiki sehingga:
    - Setiap permintaan ke layanan seperti Movie Service harus menyertakan JWT token di header.
    - API Gateway akan memvalidasi token JWT terlebih dahulu sebelum meneruskan request ke microservice terkait.
    - Jika token tidak valid, kadaluarsa, atau tidak dikirim, maka akses akan ditolak secara otomatis.
	



