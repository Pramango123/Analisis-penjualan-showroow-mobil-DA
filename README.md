# Analisis Penjualan Showroom Mobil
Tools yang digunakan:  SQL (Google BigQuery) • Microsoft Excel • Python (Google Colab) • Power BI

## 🎯 Tujuan Proyek
Menganalisis data penjualan mobil showroom untuk menemukan pola penjualan, tren, faktor yang mempengaruhi harga, serta menyusun rekomendasi strategi bisnis.

## 📊 Data
- Sumber: Data penjualan 10 cabang showroom mobil
- Jumlah baris: 2.250 data
- Periode: 2025

## 📁 Bagian Proyek

### 📑 Microsoft Excel
- `showroom_mobil_10cabang_10k (Data Mentah).xlsx` → Data asli sebelum diproses
- `showroom_mobil_10cabang_10k (Data Hasil Dibersihkan...).xlsx` → Data setelah dibersihkan: perbaikan format, pembersihan nilai kosong, tabel ringkasan

### 📝 SQL — Google BigQuery
> Menjawab pertanyaan bisnis
- [Lihat kode lengkap → kueri penjualan-bigquery.sql]
- 📄 [Dokumentasi Lengkap - Penjelasan dan hasil output Query (PDF)][(https://github.com/Pramango123/Analisis-penjualan-showroow-mobil-DA/blob/main/Latihan%20soal%20SQL%20WITH%20GOOGLE%20BIGQUERY_Ananda%20Fikri%20Satriyo%20H.pdf)]
- Kueri meliputi:
  - Penjualan & pendapatan per produk 
  - Tren penjualan bulanan & tahunan
  - Kinerja per cabang/kota
  - Analisis harga rata-rata per kategori

### 🐍 Python — Google Colab
> Pembersihan data & analisis eksplorasi
- [Buka langsung di Colab → https://colab.research.google.com/drive/1JDLm_JgRrjH_60TlSb4XljEI7sqrhHqY?usp=sharing]
- Yang dilakukan:
  - Menangani nilai kosong & data duplikat
  - Analisis hubungan harga, tahun, jarak tempuh
  - Pola penjualan per kategori & merek

## 📈 Power BI — Dashboard Interaktif
Visualisasi hasil analisis penjualan showroom mobil

- 📄 [Dokumentasi Lengkap + Hasil Visualisasi(https://github.com/Pramango123/Analisis-penjualan-showroow-mobil-DA/blob/main/Dokumentasi%20Praktik%20Power%20BI_%20Ananda%20Fikri%20Satriyo.pdf)]
- 💾 [File Dashboard (.pbix)(https://github.com/Pramango123/Analisis-penjualan-showroow-mobil-DA/blob/main/Proyek%20Automatic%20Dashboard%20Ananda%20Fikri.pbix)]

📊 Ringkasan Hasil:
- Total Penjualan: Rp 3,09 Triliun | Total Transaksi: 10.000
- Tingkat Penyelesaian: 89,66%
- Produk Terlaris: Kategori SUV → Rp 1,68 Triliun
- Cabang Terbaik: Malang, Jakarta, Padang
- Bulan Tertinggi: Januari
- Metode Pembayaran Terbanyak: Kredit

💡 Temuan Utama:
1. Kategori SUV mendominasi penjualan
2. Cabang Malang, Jakarta, Padang mencatat penjualan tertinggi
3. Puncak penjualan terjadi di bulan Januari

✅ Rekomendasi Bisnis:
- Pertahankan stok & variasi produk SUV
- Terapkan strategi cabang Jakarta & Padang ke cabang lain
- Kurangi tingkat pembatalan transaksi
---
*Portofolio Data Analyst- Ananda Fikri Satriyo*
