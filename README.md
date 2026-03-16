# minpro2-pab

# Aplikasi Catatan Pengeluaran Harian Mahasiswa (Dompet Nangis)

## 📌 Deskripsi Aplikasi

Aplikasi **Catatan Pengeluaran Harian Mahasiswa** merupakan aplikasi mobile yang dibuat menggunakan framework **Flutter** untuk membantu mahasiswa mencatat dan mengelola pengeluaran harian secara mudah dan terorganisir.

Aplikasi ini terhubung dengan database **Supabase** sehingga data pengeluaran dapat disimpan secara online dan dapat dikelola dengan fitur CRUD (Create, Read, Update, Delete).

Dengan aplikasi ini, pengguna dapat mengetahui daftar pengeluaran mereka sehingga dapat membantu dalam mengatur keuangan sehari-hari.

---

## 🎯 Tujuan Aplikasi

Tujuan dari pembuatan aplikasi ini adalah untuk:

* Membantu mahasiswa mencatat pengeluaran harian
* Memudahkan pengelolaan data pengeluaran
* Menyimpan data pengeluaran secara online menggunakan Supabase
* Mengimplementasikan konsep CRUD pada aplikasi mobile Flutter

---

## ⚙️ Teknologi yang Digunakan

Aplikasi ini dibuat menggunakan teknologi berikut:

* **Flutter** → Framework untuk membuat aplikasi mobile
* **Dart** → Bahasa pemrograman utama Flutter
* **Supabase** → Backend dan database
* **Git & GitHub** → Version control dan repository source code

---

## ✨ Fitur Aplikasi

Aplikasi memiliki beberapa fitur utama yaitu:

### 1. Menambahkan Data Pengeluaran

Pengguna dapat menambahkan data pengeluaran baru yang berisi:

* Judul pengeluaran
* Kategori pengeluaran
* Nominal pengeluaran

### 2. Menampilkan Daftar Pengeluaran

Aplikasi akan menampilkan seluruh data pengeluaran yang tersimpan di database Supabase dalam bentuk list.

### 3. Mengedit Data Pengeluaran

Pengguna dapat memperbarui atau mengubah data pengeluaran yang telah tersimpan.

### 4. Menghapus Data Pengeluaran

Pengguna dapat menghapus data pengeluaran yang tidak diperlukan.

### 5. Navigasi Antar Halaman

Aplikasi memiliki dua halaman utama:

* Halaman daftar pengeluaran
* Halaman form tambah/edit pengeluaran

---

## 🧩 Widget Flutter yang Digunakan

Beberapa widget Flutter yang digunakan dalam aplikasi ini antara lain:

* **MaterialApp** → Struktur utama aplikasi
* **Scaffold** → Layout dasar halaman
* **AppBar** → Header aplikasi
* **ListView** → Menampilkan daftar data
* **ListTile** → Menampilkan item pengeluaran
* **Card** → Tampilan data dalam bentuk kartu
* **TextField** → Input data pengguna
* **ElevatedButton** → Tombol aksi
* **FloatingActionButton** → Tombol tambah data
* **Icon** → Menampilkan ikon
* **Navigator** → Navigasi antar halaman

---

## 🗄️ Struktur Database (Supabase)

Tabel yang digunakan dalam database Supabase:

**Nama Tabel:** `pengeluaran`

| Field    | Tipe Data          |
| -------- | ------------------ |
| id       | int8 (Primary Key) |
| judul    | text               |
| kategori | text               |
| nominal  | int8               |

---
