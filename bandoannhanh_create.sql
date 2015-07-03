-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-03 22:44:05.672




-- tables
-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD varchar(10)  NOT NULL,
    MaKH varchar(10)  NOT NULL,
    MaNV varchar(10)  NOT NULL,
    NgayLapHD datetime  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY (MaHD)
)
;





-- Table: HoaDonChiTiet
CREATE TABLE HoaDonChiTiet (
    MaHD varchar(10)  NOT NULL,
    MaSP varchar(10)  NOT NULL,
    TenSP nvarchar(30)  NOT NULL,
    GiaBan money  NOT NULL,
    SoLuong int  NOT NULL,
    DonViTinh int  NOT NULL,
    GhiChu nvarchar(50)  NOT NULL,
    CONSTRAINT HoaDonChiTiet_pk PRIMARY KEY (MaHD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH varchar(10)  NOT NULL,
    TenKH nvarchar(30)  NOT NULL,
    DiaChi nvarchar(50)  NOT NULL,
    SDT int  NOT NULL,
    Email varchar(50)  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY (MaKH)
)
;





-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLoai varchar(10)  NOT NULL,
    TenLoai nvarchar(30)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY (MaLoai)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    MaSP varchar(10)  NOT NULL,
    MaLoai varchar(10)  NOT NULL,
    TenSP nvarchar(30)  NOT NULL,
    GiaBan money  NOT NULL,
    SoLuong int  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY (MaSP)
)
;









-- foreign keys
-- Reference:  HoaDonChiTiet_SanPham (table: HoaDonChiTiet)


ALTER TABLE HoaDonChiTiet ADD CONSTRAINT HoaDonChiTiet_SanPham 
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP)
;

-- Reference:  HoaDon_HoaDonChiTiet (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_HoaDonChiTiet 
    FOREIGN KEY (MaHD)
    REFERENCES HoaDonChiTiet (MaHD)
;

-- Reference:  HoaDon_KhachHang (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang 
    FOREIGN KEY (MaHD)
    REFERENCES KhachHang (MaKH)
;

-- Reference:  SanPham_LoaiSanPham (table: SanPham)


ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham 
    FOREIGN KEY (MaLoai)
    REFERENCES LoaiSanPham (MaLoai)
;





-- End of file.

