# Projek-1

## Dataset
Di tengah derasnya persaingan bisnis retail di Amerika Serikat, ribuan toko berjuang setiap hari 
untuk menarik perhatian pelanggan. Mulai dari kursi kantor ergonomis, printer dengan teknologi 
terbaru, hingga rak buku minimalis yang mempercantik ruang tamu. Semuanya dipajang demi satu 
tujuan, terjual. Pelanggan datang dan pergi, melakukan pemesanan, memilih cara pengiriman, hingga 
menyelesaikan pembayaran. Semua tampak berjalan lancar. 
Namun, di balik setiap transaksi itu, ada pertanyaan penting yang tak selalu terlihat 
Kategori produk mana yang benar-benar menghasilkan keuntungan terbesar? Apakah diskon yang 
diberikan justru membunuh profit perusahaan? Siapa pelanggan paling loyal, dan di wilayah mana 
bisnis ini harus memperluas pasarnya? dan tentu, masih banyak pertanyaan penting lainnya yang 
menanti untuk ditemukan jawabannya melalui data. 
Dataset penjualan ini menyimpan lebih dari seribu catatan transaksi dari tahun 2016 hingga 2017. Di 
dalamnya terekam detail siapa pelanggan kita, di kota mana mereka tinggal, bagaimana mereka 
membeli, produk apa yang paling mereka minati, hingga berapa banyak keuntungan atau kerugian 
yang dihasilkan dari setiap transaksi. 
Sepintas, ini hanya lembaran data biasa. Tapi bagi seorang analis bisnis sejati, ini adalah peta emas. 
Peta yang jika ditelusuri dengan benar, bisa menjadi kunci keputusan strategis bagi perusahaan retail 
masa depan. 
Selamat datang di dunia nyata penjualan ritel. 
Kini saatnya kamu bukan hanya membaca data, tetapi mengubahnya menjadi keputusan 
bisnis yang berdampak.

## SQL
- Pembuatan Tabel superstore dalam file Create Tables
- Import Dataset:
  - Dataset berada di folder secure_file_priv
- Berikut adalah hasil eksplorasi data yang telah dilakukan untuk query dapat dilihat di Eksplorasi Data:
  - Menampilkan banyaknya data 
  - Menampilkan tabel, telah dilakukan pengecekan terhadap tabel yang tersedia di database.
  - Menampilkan data awal, ditampilkan 10 baris pertama dari tabel untuk eksplorasi awal struktur data.
  - Cek duplikasi, dilakukan dengan menggunakan kombinasi kolom logis seperti Order_ID, Product_ID, Quantity, Sales, Discount, dan Profit.
  - Cek data kosong (NULL), analisis menyeluruh dilakukan pada semua kolom untuk mendeteksi nilai yang kosong.
  - Cek tanggal rusak / salah format, menggunakan fungsi STR_TO_DATE untuk memastikan data tanggal valid dan terformat dengan benar.
    
    Hasil dapat dilihat di Hasil Eksplorasi Data with SQL:
    - Terdapat 1 duplikasi kombinasi kolom logis seperti Order_ID, Product_ID, Quantity, Sales, Discount, dan Profit, maka dilakukan penghapusan duplikasi
 
   Preprocessing:
    - Menghapus kolom duplikat dengan 6 kolom dengan Order_ID, Product_ID, Quantity, Sales, Discount, dan Profit sama.
      
- Bisnis Intelegence, query dapat dilihat di Eksplorasi Data
    Pertanyaan Bisnis?
    Problem Framing 
    1. Produk mana yang paling laris?
    2. Apakah diskon meningkatkan penjualan atau malah menurunkan profit?
    3. Wilayah mana yang perlu ditingkatkan pemasarannya?
    Jawaban bisnis dapat dilihat di Hasil Eksplorasi Data with SQL
       
## Python
Berikut adalah hasil eksplorasi data yang telah dilakukan untuk query dapat dilihat di eksplorasi data dengan set up python 3.12.7 dan mysql.connector 9.3.0:
  - Menampilkan data awal, ditampilkan 10 baris pertama dari tabel untuk eksplorasi awal struktur data.
  - Cek duplikasi, dilakukan dengan menggunakan kombinasi kolom logis seperti Order_ID, Product_ID, Quantity, Sales, Discount, dan Profit.
  - Cek data kosong (NULL), analisis menyeluruh dilakukan pada semua kolom untuk mendeteksi nilai yang kosong.
  - Cek tanggal rusak / salah format
    
Preprocesing:
  - Mengubah Type Data Order_Date dan Ship_Date menjadi datetime

- Bisnis Intelegence
    Pertanyaan Bisnis?
    Problem Framing
    1. Produk mana yang paling laris?
    2. Apakah diskon meningkatkan penjualan atau malah menurunkan profit?
    3. Wilayah mana yang perlu ditingkatkan pemasarannya?
    Jawaban bisnis dapat dilihat di 
