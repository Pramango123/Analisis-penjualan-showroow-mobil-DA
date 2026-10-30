# Mengambil semua kolom dari tabel data 10 cabang showroom
select * from showroom.data10cabang;

# ambil beberapa kolom dari tabel
select sales_date ,customer_name from showroom.data10cabang;

# ambil beberapa kolom dari tabel, namun membatasi 10 baris
select sales_date ,customer_name from showroom.data10cabang
limit 10;

# AMBIL DATA cabang
SELECT branch from showroom.data10cabang;

SELECT distinct branch from showroom.data10cabang; # mengambil data yang unik 

#mengurutkan data berdasarkan data sales date
select *
from showroom.data10cabang
order by sales_date desc
limit 5;

#ambil data penjualan hanya dari cabang bandung
select *
from showroom.data10cabang
where branch = 'Bandung'
limit 5;

#ambil data penjualan hanya untuk total sales lebih dari 50 juta
select * from showroom.data10cabang 
where total_sales > 50000000;

# gabungan pengkondisian syarat penyaringan dengan kondisi and, or, dan not
# studi kasus OR ambil data penjualan dari cabang bandung dan jakarta
select * from showroom.data10cabang
where branch = 'Bandung' OR  branch ='Jakarta';

# trik studi kasus ke 2 namun beda metode dengan in didepan nama query kolom tabel
select * from showroom.data10cabang
where branch in ('Bandung', 'Jakarta', 'Batam');

# filter data product terjual hanya untuk yang nama depan produknya 'Honda'
select *
from showroom.data10cabang
where product_name like 'Honda%';

#filter nama customer berakhiran angka 3
SELECT *
FROM showroom.data10cabang
where customer_name like '%3'; 

# ambil filter data dari tanggal 27 mei hingga 31 mei 2025 dengan menggabungkan semua query
select *
from showroom.data10cabang
where sales_date >= '2025-05-27'
AND sales_date <= '2025-05-31'
order by total_sales desc; 

# ambil filter data dari tanggal 27 mei hingga 31 mei 2025 dengan menggabungkan semua query dan tambahan fungsi between
select *
from showroom.data10cabang
where sales_date between'2025-05-27'
AND '2025-05-31'
order by total_sales desc; 

# studi kasus agregrasi
select sum (total_sales) as total_sales,
avg (total_sales) as rata_rata_sales
from showroom.data10cabang;

# studi kasus ambil atau filter data brdasarkan pengelompokkan kolom dengan group by
select branch,
sum(total_sales) as sum_total_sales
from showroom.data10cabang
group by branch 
order by sum_total_sales desc;


# soal latihan
# soal nomor 1

select distinct customer_name from showroom.data10cabang;

#soal nomor 2
SELECT order_id, branch, total_sales
FROM showroom.data10cabang
WHERE payment_type = 'Kredit';

#soal nomor 3
SELECT order_id, customer_name, product_name, quantity
FROM showroom.data10cabang
ORDER BY quantity desc
LIMIT 5;

#soal no 4
SELECT DISTINCT product_name
FROM showroom.data10cabang
WHERE color = 'Hitam Metalik';

#soal no 5
SELECT payment_type, COUNT(*) AS jumlah_transaksi
FROM showroom.data10cabang
GROUP BY payment_type
ORDER BY jumlah_transaksi DESC;  

#soal no 6
SELECT category, AVG(discount) AS rata_rata_diskon
FROM showroom.data10cabang
GROUP BY category
ORDER BY rata_rata_diskon DESC;


#soal no 7
SELECT branch, SUM(total_sales) AS total_pendapatan
FROM showroom.data10cabang
GROUP BY branch
HAVING SUM(total_sales) > 50000000000
ORDER BY total_pendapatan DESC;

#soal no 8
SELECT order_id,product_name, discount
FROM showroom.data10cabang
   WHERE discount > (
   SELECT AVG(discount)
   FROM showroom.data10cabang 
   )

#soal no 9
-- Menghitung rata-rata total sales untuk setiap kategori, hanya status "Completed"
SELECT 
  product_name AS kategori_produk,
  AVG(total_sales) AS rata_rata_penjualan
FROM showroom.data10cabang
WHERE status = 'Completed'
GROUP BY product_name
ORDER BY rata_rata_penjualan DESC;

#soal no 10
-- Menampilkan 3 produk dengan jumlah transaksi terbanyak
WITH jumlah_transaksi_per_produk AS (
  SELECT 
    product_name, 
    COUNT(order_id) AS total_transaksi
  FROM showroom.data10cabang
  GROUP BY product_name
)
SELECT 
  product_name, 
  total_transaksi
FROM jumlah_transaksi_per_produk
ORDER BY total_transaksi DESC
LIMIT 3;
