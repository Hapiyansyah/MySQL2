CREATE DATABASE data_mhs (
    nim int primary key,
    nama varchar(25) not null,
    jenis_kelamin varchar(15) not null,
    tgl_lahir varchar(20) not null,
    jalan varchar(50) not null,
    kota varchar(25) not null,
    kodepos varchar(15) not null,
    no_hp varchar(15) not null,
    kd_ds int not null,
    FOREIGN KEY ('kd_ds') REFERENCES Dosen ('kd_ds')
);

CREATE TABLE Dosen (
    nama varchar(20) not null,
    kd_ds int primary key
);

CREATE TABLE MataKuliah (
    kd_mk int primary key,
    nama varchar(20) not null,
    sks int not null
);

CREATE TABLE JadwalMengajar (
    kd_mk int primary key,
    kd_ds int primary key,
    hari date not null,
    jam time not null,
    ruang int not null,
    FOREIGN KEY ('kd_mk') REFERENCES 'MataKuliah' ('kd_mk'),
    FOREIGN KEY ('kd_ds') REFERENCES 'MataKuliah' ('kd_ds')
);

CREATE TABLE KRSMahasiswa (
    nim int primary key,
    kd_mk int primary key,
    kd_ds int primary key,
    semester int not null,
    nilai int not null,
    FOREIGN KEY ('nim') REFERENCES 'data_mhs' ('nim'),
    FOREIGN KEY ('kd_mk') REFERENCES 'JadwalMengajar' ('kd_mk'),
    FOREIGN KEY ('kd_ds') REFERENCES 'JadwalMengajar' ('kd_ds') 
);
