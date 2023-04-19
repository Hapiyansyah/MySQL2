# PRAKTIKUM 2

## praktikum 2.1

Buatlah DDL Script berdasarkan skema E-RD dan jalankan script tersebut pada DBMS MySQL !

   - SCRIPT ADA DI FOLDER 
   
1. Tabel mahasiswa (nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kodepos, no_hp, kd_ds)

![foto0](foto/S0.png)

2. Tabel dosen (kd_ds, nama)

![foto1](foto/S1.png)

3. Tabel matakuliah (kd_mk, nama, SKS)

![foto2](foto/S2.png)

4. Tabel krsmahasiswa (kd_ds, kd_mk, hari, jam, ruang)

![foto3](foto/S3.png)

5. Tabel jadwalmengajar (nim, kd_mk, kd_ds, semester, nilai)

![foto4](foto/S4.png)

## praktikum 2.2
1. Tampilkan semua isi / record tabel !
```
select * from data_mhs;
```
![foto1](foto/ss1.png)

2. Ubah data tanggal lahir mahasiswa yang bernama Ari menjadi: 1979-08-31 !
```
update data_mhs set tgl_lahir = '1979-08-31' where nim = '11223344';
```
![foto2](foto/ss2.png)

3. Tampilkan satu baris / record data yang telah diubah tadi !
```
select * from data_mhs where < 11223344;
```
![foto3](foto/ss3.png)

4. Hapus data mahasiswa yang bernama Dina !
```
delete from data_mhs where nim = '11223346';
```
![foto4](foto/ss4.png)

5. Tampilkan record / data yang tanggal kelahirannya lebih dari atau sama dengan 1996-01-02 !
```
select * from data_mhs where tgl lahir >= 1996-01-02;
```
![foto5](foto/ss5.png)

6. Tampilkan semua Mahasiswa yang berasal dari Bekasi dan berjenis kelamin Perempuan !
```
select * from data_mhs where kota = 'Bekasi' and jenis_kelamin = 'Perempuan';
```
![foto6](foto/ss6.png)

7. Tampilkan semua mahasiswa yang berasal dari bekasi dengan kelamin laki-laki atau mahasiswa yang berumur lebih dari 22 tahun dengan kelamin perempuan !
```
select * from data_mhs where kota = 'Bekasi' and jenis_kelamin = 'Laki-laki' or tgl_lahir > 1979-08-31 and jenis_kelamin = 'Perempuan';
```
![foto7](foto/ss7.png)

8. Tampilkan data nama dan alamat mahasiswa saja dari tabel tersebut !
```
select nama, kota from mahasiswa;
```
![foto8](foto/ss8.png)

9. Tampilkan data mahasiswa terurut berdasarkan nama !
```
select * from data_mhs order by nama ASC;
```
![foto9](foto/ss9.png)

## Evaluasi dan Pertanyaan

1. Apa bedanya penggunaan BETWEEN dan penggunaan operator >= dan <= ?

   • misal : tgl_lahir BETWEEN '1991-11-1' AND '1992-04-01'.

   • misal : tgl_lahir >= '1991-11-1' AND tgl_lahir <= '1992-04-01'.

Kedua pernyataan tersebut memiliki makna yang sama, yaitu mencari data yang memiliki nilai tanggal lahir '1991-11-1' dan '1992-04-01'. Perbedaan hanya terletak pada sintaks penggunaanya. Penggunaan BETWEEN lebih mudah dibaca dan ditulis, sedangkan penggunaan operator >= dan <= lebih fleksibel karena dapat digunakan untuk membandingkan nilai selain tanggal.
