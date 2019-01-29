untuk menampilkan pesanan yang di order pada tanggal 28 april 2018

SELECT p.Nama_Pelanggan, o.Berat_Laundry, o.Tanggal_Order, o.Status_Order FROM pelanggan p, orderan o WHERE p.Kode_Pelanggan = o.Kode_Pelanggan AND o.Tanggal_Order = "04/28/2018";

untuk menampilkan nama karyawan yang merakap oada tanggal 28 april 2018
SELECT k.Nama_Karyawan, r.Kode_Rekap, r.Tanggal FROM karyawan k, rekap r WHERE k.NIK = r.NIK AND r.Tanggal = "04/28/2018";

untuk menampilkan semua orderan yang berstatus sudah selesai dikerjakan
SELECT * from orderan WHERE Status_Order = "Selesai";