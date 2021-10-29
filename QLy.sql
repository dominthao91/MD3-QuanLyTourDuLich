create database TourListTravel;
use TourListTravel;
create table LoaiHinhTour
(
    ltID      int auto_increment primary key,
    ltMaLoai  varchar(20),
    ltTenLoai varchar(20)
);
create table DiemDenDuLich
(
    dID         int auto_increment primary key,
    dTenDiemDen varchar(50),
    dMoTa       varchar(50),
    dGiaTB      double not null,
    tpID        int,
    foreign key (tpID) references ThanhPho (tpID)
);
create table ThanhPho
(
    tpID   int auto_increment primary key,
    tpName varchar(50)
);
create table Tour
(
    tID         int auto_increment primary key,
    tMaTour     varchar(20),
    ltID        int,
    tGiaDiemDen double,
    tIDCheckIn  datetime,
    tIDCheckOut datetime,
    foreign key (ltID) references loaihinhtour (ltID)
);
create table KhachHangDatTour
(
    kID      int auto_increment primary key,
    kName    varchar(20),
    kCMND    varchar(20),
    kNamSinh varchar(10),
    tpID     int,
    foreign key (tpID) references ThanhPho (tpID)
);
create table HoaDon
(
    hID    int auto_increment primary key,
    tID    int,
    kID    int,
    status bit,
    foreign key (tID) references Tour (tID),
    foreign key (kID) references KhachHangDatTour (kID)
);
select *
from LoaiHinhTour;
insert into loaihinhtour (ltMaLoai, ltTenLoai) value ('T01', 'HaNoi-SaPa');
insert into loaihinhtour (ltMaLoai, ltTenLoai) value ('T02', 'HaNoi-NinhBinh');
update loaihinhtour
set ltTenLoai ='1 tuan'
where ltID = 2;

select *
from ThanhPho;
insert into thanhpho (tpName) value ('Ha noi');
insert into thanhpho (tpName) value ('SaPa');
insert into thanhpho (tpName) value ('Da Lat');
insert into thanhpho (tpName) value ('Ninh Binh');
insert into thanhpho (tpName) value ('Da Nang');
select *
from khachhangdattour;
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Toan', 'c111', '1988', 1);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Tuan', 'c112', '1997', 2);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Long', 'c113', '1998', 3);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Cuong', 'c114', '1998', 4);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Truong', 'c115', '1998', 5);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Dinh', 'c116', '1997', 5);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('Y', 'c117', '1997', 4);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('TuanCho', 'c118', '1995', 3);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('ToanGau', 'c119', '1988', 2);
insert into khachhangdattour (kName, kCMND, kNamSinh, tpID) value ('LongCon', 'c1191', '1999', 1);
select *
from diemdendulich;
insert into diemdendulich(dTenDiemDen, dMoTa, dGiaTB, tpID) value ('Ha Noi', 'di bo pho co', 1000, 1);
insert into diemdendulich(dTenDiemDen, dMoTa, dGiaTB, tpID) value ('SaPa', 'Ga doi ca song', 1200, 2);
insert into diemdendulich(dTenDiemDen, dMoTa, dGiaTB, tpID) value ('Da Lat', 'hau bien', 1000, 3);
insert into diemdendulich(dTenDiemDen, dMoTa, dGiaTB, tpID) value ('Ninh Binh', 'leo nui', 5000, 4);
insert into diemdendulich(dTenDiemDen, dMoTa, dGiaTB, tpID) value ('Da Nang', 'so bien', 4000, 5);
select *
from tour;
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t01', 1, 1000, '2021-11-21 12:00:00', '2021-11-24 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t02', 1, 1100, '2021-11-22 12:00:00', '2021-11-25 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t03', 1, 1200, '2021-11-23 12:00:00', '2021-11-26 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t04', 1, 1300, '2021-11-24 12:00:00', '2021-11-27 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t05', 1, 1400, '2021-11-25 12:00:00', '2021-11-28 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t06', 2, 1000, '2021-11-20 12:00:00', '2021-11-26 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t07', 2, 2000, '2021-12-20 12:00:00', '2021-12-26 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t08', 2, 3000, '2021-11-24 12:00:00', '2021-11-30 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t09', 2, 4000, '2021-11-23 12:00:00', '2021-11-29 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t10', 2, 5000, '2021-12-01 12:00:00', '2021-12-05 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t11', 2, 6000, '2021-11-19 12:00:00', '2021-11-25 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t12', 1, 1000, '2021-11-28 12:00:00', '2021-11-30 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t13', 2, 2000, '2021-11-01 12:00:00', '2021-12-07 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t14', 1, 3000, '2021-11-28 12:00:00', '2021-11-30 12:00:00');
insert into tour (tMaTour, ltID, tGiaDiemDen, tIDCheckIn, tIDCheckOut) value ('t15', 1, 2000, '2021-11-21 12:00:00', '2021-11-24 12:00:00');
select *
from HoaDon;
insert into hoadon (tID, kID, status) value (1, 1, true);
insert into hoadon (tID, kID, status) value (2, 2, true);
insert into hoadon (tID, kID, status) value (1, 3, true);
insert into hoadon (tID, kID, status) value (2, 4, true);
insert into hoadon (tID, kID, status) value (1, 5, true);
#Thong ke so luong tour cua cac thanh pho.
select TP.tpName, count(TP.tpID)
from khachhangdattour kh
         join ThanhPho TP on TP.tpID = kh.tpID
group by TP.tpName;
# Tính số tour có ngày bắt đầu trong tháng 11 năm 2021 -))))
select count(tIDCheckIn) as ' Tour thang 11'
from tour
where  month(tIDCheckIn) = 11;
# Tính số tour có ngày kết thúc trong tháng 12 năm 2021 -)))
select count(tIDCheckIn) as ' Tour thang 12'
from tour
where  month(tIDCheckIn) =12;

