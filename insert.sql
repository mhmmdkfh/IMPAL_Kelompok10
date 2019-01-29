INSERT INTO Pelanggan (Kode_Pelanggan, Nama_Pelanggan, No_Telepon, Alamat, Email) VALUES
('PL40274', 'Rafqi', '085956243643', 'Komp. Ciganitri', 'rafqi@gmail.com'),
('PL63862', 'Manuel', '085956243643', 'PGA kost pernah ada', 'manuel@gmail.com'),
('PL80150', 'Jofardho', '089429102', 'Pesona Bali blok b11 no 16', 'jo@gmail.com'),
('R84114', 'Whafa', '081366649092', 'Pesona Bali Blok D2 No 6', 'whafa@gmail.com');

INSERT INTO Jasa (Kode_Jasa, Nama_Jasa, Harga) VALUES
('J001', 'Reguler', 6000),
('J002', 'Kilat', 10000);

INSERT INTO Karyawan (NIK, Nama_Karyawan, Alamat, No_Telepon, jobs, Username, Password, Kelas) VALUES
('1301162759', 'Nurul Afnii Z', 'The Pine', '081293028491', 'Admin', 'admin1', 'admin1', '2'),
('1301164730', 'Hanuji R', 'Pesona Bali Recidence D2 No 6', '08990075668', 'Admin', 'admin2', 'admin2', '2'),
('1301164672', 'Devina Adinda', 'The Pine', '089503097057', 'Petugas', 'petugas', 'petugas', '3'),
('1301164697', 'Muhammad Kifahi', 'Pesona Bali Recidence B11 No.16', '089503097057', 'Super Admin', 'superadmin', 'superadmin', '1');

INSERT INTO Rekap (Kode_Rekap, Tanggal, NIK) VALUES
('R29291', '05/09/2018', '1301162759'),
('RK001', '04/26/2018', '1301162759'),
('RK002', '04/27/2018', '1301164730'),
('RK003', '04/28/2018', '1301164697');

INSERT INTO Pembayaran (Kode_Pembayaran, Kode_Rekap, Tanggal, Jumlah, Status) VALUES
('PM23983', 'RK003', '04/28/2018', 12000, 'LUNAS'),
('PM31562', 'R29291', '05/09/2018', 6000, 'BELUM LUNAS'),
('PM74175', 'RK001', '04/26/2018', 10000, 'BELUM LUNAS'),
('PM98680', 'RK002', '04/27/2018', 120000, 'LUNAS');

INSERT INTO Orderan (Id_Order, Kode_Jasa, Kode_Pembayaran, Kode_Pelanggan, Berat_Laundry, Tanggal_Order, Status_Order) VALUES
('908212', 'J001', 'PM23983', 'PL40274', 2, '04/28/2018', 'Selesai'),
('O12741', 'J001', 'PM31562', 'PL63862', 1, '05/09/2018', 'Dalam Pengerjaan'),
('O14556', 'J002', 'PM74175', 'PL80150', 1, '04/26/2018', 'Selesai'),
('O69705', 'J002', 'PM98680', 'R84114', 12, '04/27/2018', 'LUNAS');