create DATABASE db_laundryuk;
create table Pelanggan
(
	Kode_Pelanggan varchar(20),
	Nama_Pelanggan varchar(50),
	No_Telepon int(13),
	Alamat varchar(100),
	Email varchar(50),
	primary key (Kode_Pelanggan)
);

create table Jasa
(
	Kode_Jasa varchar(20),
	Nama_Jasa varchar(20),
	Harga int(6),
	primary key (Kode_Jasa)
);

create table Karyawan
(
	NIK varchar(30),
	Nama_Karyawan varchar(50),
	Alamat varchar(100),
	No_Telepon int(13),
	jobs varchar(20),
	Username varchar(20),
	Password varchar(30),
	Kelas varchar(1),
	primary key (NIK)
);

create table Rekap
(
	Kode_Rekap varchar(20),
	Tanggal varchar(20),
	NIK varchar(30),
	primary key (Kode_Rekap),
	foreign key(NIK) references Karyawan(NIK) on delete cascade
);

create table Pembayaran
(
	Kode_Pembayaran varchar(20),
	Kode_Rekap varchar(20),
	Tanggal varchar(20),
	Jumlah varchar(20),
	Status varchar(20),
	primary key (Kode_Pembayaran),
	foreign key(Kode_Rekap) references Rekap(Kode_Rekap) on delete cascade
);

create table Orderan
(
	Id_Order varchar(20),
	Kode_Jasa varchar(20),
	Kode_Pelanggan varchar(20),
	Kode_Pembayaran varchar(20),
	Berat_Laundry varchar(5),
	Tanggal_Order varchar(20),
	Status_Order varchar(20),
	primary key(Id_Order),
	foreign key(Kode_Jasa) references Jasa(Kode_Jasa) on delete cascade,
	foreign key(Kode_Pelanggan) references Pelanggan(Kode_Pelanggan) on delete cascade,
	foreign key(Kode_Pembayaran) references Pembayaran(Kode_Pembayaran) on delete cascade
);