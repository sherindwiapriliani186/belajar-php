CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);
insert into jurusan (kode,nama) values ('ABCD','informtika');

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8)NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki','perempuan')NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY(id_jurusan) REFERENCES jurusan(id)
);

 select * from mahasiswa;
 insert into mahasiswa (id_jurusan,nim,nama,jenis_kelamin,tempat_lahir,tanggal_lahir,alamat) values ('2','20192002','dwi','perempuan','Balikpapan','2001-01-02','jl.bpp-handil');
 update mahasiswa set Alamat = "jl.bpp-handil II" where id = 1;
 delete * from mahasiswa where id = 2 ;