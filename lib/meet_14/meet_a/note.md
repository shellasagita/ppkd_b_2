
# 📘 Flutter: Menampilkan Data Berdasarkan Kategori dengan Model & ListView

---

## 🎯 Tujuan Pembelajaran

- Memahami cara membuat model `Produk`
- Menampilkan daftar data dengan `ListView.builder`
- Melakukan filter berdasarkan kategori
- Refactoring data menjadi modular dan reusable

---

## 🧩 Model Produk

```dart
class Produk {
  final String nama;
  final int harga;
  final String kategori;

  Produk({required this.nama, required this.harga, required this.kategori});
}
```

---

## 📋 Data Dummy

```dart
final List<Produk> semuaProduk = [
  Produk(nama: 'Apel', harga: 10000, kategori: 'Buah-buahan'),
  Produk(nama: 'Mangga', harga: 12000, kategori: 'Buah-buahan'),
  Produk(nama: 'Bayam', harga: 5000, kategori: 'Sayuran'),
  Produk(nama: 'Laptop', harga: 7000000, kategori: 'Elektronik'),
  Produk(nama: 'Kaos', harga: 50000, kategori: 'Pakaian Pria'),
];
```

---

## 📂 List Kategori

```dart
List<String> kategori = [
  'Buah-buahan', 'Sayuran', 'Elektronik', 'Pakaian Pria'
];
```

---

## 🧭 Tampilan UI

### Pilih Kategori:

```dart
ListView.builder(
  itemCount: kategori.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(kategori[index]),
      onTap: () {
        setState(() {
          _kategoriDipilih = kategori[index];
        });
      },
    );
  },
);
```

### Tampilkan Produk Berdasarkan Kategori:

```dart
List<Produk> produkTersaring = semuaProduk
    .where((p) => p.kategori == _kategoriDipilih)
    .toList();

ListView.builder(
  itemCount: produkTersaring.length,
  itemBuilder: (context, index) {
    final produk = produkTersaring[index];
    return ListTile(
      title: Text(produk.nama),
      subtitle: Text("Rp ${produk.harga}"),
    );
  },
);
```

---

## 🔄 Output yang Diharapkan

1. Pengguna memilih kategori dari daftar
2. Hanya produk dalam kategori tersebut yang ditampilkan
3. UI diperbarui secara dinamis menggunakan `setState()`

---

## 💡 Bonus Tugas

- Tambahkan ikon atau gambar pada produk
- Gunakan `GridView` untuk variasi tampilan
- Buat widget khusus `ProdukCard`

---

## 🔖 Quote Penutup

> **“Data yang tertata akan menghasilkan UI yang bermakna.”**  
> Refactoring bukan hanya membuat kode lebih indah, tapi juga lebih siap untuk bertumbuh.

> **“Gunakan model untuk menata data, gunakan builder untuk menata tampilan.”**
