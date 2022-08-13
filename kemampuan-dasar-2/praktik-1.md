# Praktik 1

## [Getting Started](https://medium.com/@jonathanmines/the-ultimate-github-collaboration-guide-df816e98fb67).

## Langkah 1: Inisialisasi Proyek Baru

Buka Github dan klik tombol '+' di pojok kanan rop dan pilih 'New Repository'.

![Screenshot_1](https://user-images.githubusercontent.com/110981711/184479160-46ab4a8e-c28b-463a-b6d3-d0bcee90b29f.png)

 Kemudian isi kolom Repository name dan Description. Tetap publik,jangan mengaktifkan checkbox Initialize this repository with a README. Jangan mengubah apa pun. Klik "Buat repositori".
 
 ![Screenshot_2](https://user-images.githubusercontent.com/110981711/184479311-ef0528f1-c21b-4440-aaa9-df958feb5e64.png)
 
Selanjutnya Anda akan melihat halaman setup. Ini adalah petunjuk untuk menghubungkan Repo yang baru saja Anda buat di Github (Remote) ke direktori yang Anda buat di terminal Anda (Lokal).

sebelumnya buat folder lokal dulu di computer anda dengan nana "github_guide"

Isi command/perintah yang ada di gambar yang ditandai dengan kotak berwarna merah secara satu per satu ke dalam git bash dimulai dengan "echo..." ke terminal saat Anda sedang memasukkan cd ke direktori yang baru saja Anda buat secara lokal.

![Screenshot_3](https://user-images.githubusercontent.com/110981711/184479458-ae4f2c68-83fe-4bdc-9087-a438568a6c36.png)

Sekarang mari kita perbarui Repo ini. dengan menmbahkan sebuah file di dalam folder "github_guide" yang telah anda buat.

![Screenshot_10](https://user-images.githubusercontent.com/110981711/184479679-c4a9aa72-2d58-4500-9c90-b3ba9afbc9be.png)

Kembali ke terminal Anda dan git add, git commit, dan git Push:

```
$ git add .
$ git commit -m "Second commit"
$ git push
```

![Screenshot_6](https://user-images.githubusercontent.com/110981711/184479809-730be518-dd85-4f81-841c-1dd4ce719d23.png)

Sekarang periksa repo Anda. dan lihat file yang telah anda tambahkan di dalam folder "github_guide". seharusnya akan terlihat seperti ini

![Screenshot_7](https://user-images.githubusercontent.com/110981711/184479796-bf0ea585-e90f-49a2-93d3-398dbae3e1f7.png)

Anda telah diinisialisasi dan siap untuk mulai bekerja!!

## Langkah 2: Siapkan Tim Anda

Anda adalah pemain tim, jadi Anda perlu menambahkan tim Anda ke repo agar mereka dapat berkolaborasi. Setelah tim Anda ditambahkan sebagai kolaborator, mereka akan dapat mendorong, menggabungkan, dan banyak hal merusak lainnya, jadi pastikan Anda hanya menambahkan rekan satu tim Anda.

Klik pada tab "Settings" perwakilan Anda, lalu "Collaborators" lalu cari pengguna Github dan tambahkan mereka dengan mengklik "Add Collaborator":

![Screenshot_1](https://user-images.githubusercontent.com/110981711/184480090-e828c05c-87cd-452c-a04b-5e72abf9eead.png)

Mereka akan menerima email yang memberitahukan bahwa Anda menambahkan mereka dan akan terdaftar sebagai kolaborator.

![Screenshot_2](https://user-images.githubusercontent.com/110981711/184480147-684f221e-954f-46ef-bb71-1666c8b26225.png)

 Anda ingin berkolaborasi di Repo Github yang sama dengan rekan satu tim Anda. Jika Anda seorang kolaborator, buka halaman Github Repo, Git Clone proyek, dan cd ke direktori.
 
 ![Screenshot_10](https://user-images.githubusercontent.com/110981711/184480593-07453d2b-bd50-43ab-8904-ee913fc8804d.png)
 
 ```
 $ git clone https://github.com/fauzanantony/github_guide.git
$cd github_guide/
 ```
 
 Dan sekarang Anda siap untuk berkolaborasi!!
 
 ## Langkah 3: Berkolaborasi
 
 Saat Anda menggunakan git untuk mengerjakan proyek yang sama dengan banyak orang, ada satu aturan utama yang harus Anda ikuti:

**CABANG UTAMA HARUS SELALU DIPLOYABLE**

Cara agar Master dapat digunakan adalah dengan membuat cabang baru untuk fitur baru dan menggabungkannya ke dalam Master setelah selesai. Inilah cara kerjanya.

### Langkah 3a: Cabang

Untuk memulai, cabang harus selalu mewakili fitur. Misalnya, jika Anda ingin menambahkan kemampuan bagi pengguna untuk masuk, Anda mungkin harus membuat cabang yang disebut "user_authentication" dan di cabang itu Anda hanya perlu memperbarui apa yang Anda perlukan untuk memungkinkan pengguna masuk.

Penting juga saat berkolaborasi agar tim Anda memilih fitur yang tidak memiliki kode yang tumpang tindih. Misalnya, Anda tidak boleh mengerjakan cabang "user_login" pada saat yang sama dengan rekan satu tim Anda bekerja di cabang "user_logout" karena kemungkinan Anda mengerjakan file yang sama dan menulis kode yang tumpang tindih sangat tinggi .

Jadi katakanlah Anda ingin membuat model Pengguna. Di terminal Anda, buat cabang baru:

```
$ git checkout -b create_user
```
“checkout” yang digunakan untuk berpindah antar cabang. Menambahkan "-b" dan nama di akhir membuat cabang baru dan kemudian pindah ke cabang baru itu untuk kita.

Anda bisa melihat apakah kita sudah membuat cabang baru dengan cara

```
$ git branch
```
Yang harus menghasilkan:

![Screenshot_1](https://user-images.githubusercontent.com/110981711/184496656-1c0bfc50-f3bf-49b8-b68c-8468a4e67b75.png)

Anda sekarang berada di cabang baru dan dapat mulai membuat kode.

Catatan: Sebagai aturan umum, Anda harus sering git add dan git commit ketika Anda menyelesaikan sesuatu yang memungkinkan kode Anda berfungsi (berakhir menjadi beberapa kali dalam satu jam). Misalnya, ketika Anda menyelesaikan suatu metode dan basis kode berfungsi, git commit seperti ini:

```
$ git commit -m "test branch baru"
```

*pastikan sebelumnya anda sudah membuat file terlebih dahulu sebelum **$ git commit** anda bebas membuat file apa saja

```
(use "git add/rm <file>..." to update what will be committed)
```

jika sudah menambahkan sebuah file di dalam branch "create_user" maka anda bisa melakukan **$ git commit**

### Langkah 3b: Mengirimkan Permintaan Tarik

Tim Anda menghabiskan sepanjang hari dan malam mengerjakan fitur terpisah mereka di berbagai cabang mereka. Mereka kembali keesokan harinya dengan fitur lengkap mereka dan ingin menggabungkan mereka kembali ke Master untuk digunakan.

Pertama, tentukan siapa yang akan bertanggung jawab menangani penggabungan. Semakin sedikit orang yang bertindak secara independen dalam penggabungan, semakin baik sehingga untuk tim yang terdiri dari 4 orang, Anda mungkin perlu memiliki satu "Reviewer" atau "Merge Master" resmi.

Selanjutnya, minta semua orang git Push cabang mereka:

```
$ git push -u origin create_user
```

Sekarang pergi ke halaman Repo Github. Anda akan melihat cabang yang Anda dorong di bilah kuning di bagian atas halaman dengan tombol "Bandingkan & tarik permintaan".

![Screenshot_2](https://user-images.githubusercontent.com/110981711/184497230-30abf099-25d2-4bee-8fd1-a63c05165a84.png)

Klik "Bandingkan & tarik permintaan". Ini akan membawa Anda ke halaman "Buka permintaan tarik". Dari sini, Anda harus menulis deskripsi singkat tentang apa yang sebenarnya Anda ubah. Dan Anda harus mengklik tab “Reviewers” ​​dan memilih siapa pun yang diputuskan oleh tim Anda sebagai “Merge Master”. Setelah selesai, klik "Buat permintaan tarik".

![Screenshot_3](https://user-images.githubusercontent.com/110981711/184497416-8d05a087-497c-4ece-8fc1-3f7096a3f9d1.png)

### Langkah 3c: Menggabungkan Permintaan Tarik

Perhatikan bahwa jika Anda seorang kolaborator, Anda dapat menggabungkan permintaan tarik Anda sendiri. Namun, sekali lagi, jika Anda bekerja dalam tim, lebih masuk akal jika satu orang melakukan semua penggabungan dan semua orang lainnya mengirimkan "Permintaan Tarik" dan menetapkan "Penggabungan Utama" sebagai peninjau hanya untuk memastikan Anda berurusan dengan konflik gabungan apa pun satu cabang pada satu waktu.

Jadi, dengan asumsi Anda adalah orang yang bertanggung jawab untuk mengurus semua penggabungan dan seseorang telah menugaskan Anda sebagai "Peninjau" pada permintaan tarik, ketika Anda masuk ke Github Anda, Anda akan melihat Anda memiliki pemberitahuan yang memberi tahu Anda bahwa seseorang telah menugaskan Anda sebagai pengulas. Anda juga akan melihat bilah kuning yang menunjukkan salah satu rekan tim Anda sebagai “meminta ulasan Anda pada permintaan tarik ini.”

Silakan dan klik tombol “Add your review”

![Screenshot_4](https://user-images.githubusercontent.com/110981711/184497586-50da0cb5-56e9-4074-b2da-c29dc4fbb6e6.png)

![Screenshot_5](https://user-images.githubusercontent.com/110981711/184497739-55748a9d-dc00-43b3-a383-02eac20db3a3.png)

Saat Anda puas dengan pull request, pergi ke bagian bawah pull request dan klik “Merge pull request”.

![Screenshot_6](https://user-images.githubusercontent.com/110981711/184497788-3923ce4c-bae2-40a7-9513-1e3f7eae7412.png)

Anda kemudian akan melihat pesan "Pull request successfully merged and closed" dan tombol "Delete branch" yang harus Anda klik.

![Screenshot_7](https://user-images.githubusercontent.com/110981711/184497828-b46010c1-2460-4333-9eaa-8e3cd155759d.png)

## Selesai !!
