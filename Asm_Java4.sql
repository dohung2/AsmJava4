CREATE DATABASE ASM_JAVA4
GO

USE ASM_JAVA4
GO

CREATE TABLE NguoiDung (
	ID_KH nvarchar(10) PRIMARY KEY,	-- Mã người dùng
	HoTen nvarchar(50), -- Tên người dùng
	NgaySinh date,	-- Ngày sinh
	GioiTinh bit,	-- Giới tính
	SoDT nchar(15),	-- SĐT
	Email nvarchar(50),
	DiaChi nvarchar(255),
	NgheNghiep nvarchar(50),
	Anh nvarchar (100),	-- ẢNh đại diện
	TenTK nvarchar(50), -- Tên tài khoản
	MatKhau nvarchar(50),	-- Mật khẩu
	VaiTro bit	-- Vai trò
)
GO

CREATE TABLE DanhMuc (
	ID_DM nvarchar(10) PRIMARY KEY,-- Mã danh mục
	TenDM nvarchar(50)	-- Tên danh mục
)
GO

CREATE TABLE SanPham (
	ID_SP nvarchar(15) PRIMARY KEY, -- Mã sản phẩm
	TenSP nvarchar(250),	-- Tên sản phẩm
	TrangThai bit,	-- Trạng thái còn/hết hàng
	Anh nvarchar(250),	-- Ảnh sản phẩm
	Gia decimal (9,0),	-- Giá
	SLTonKho int,	-- SL tồn kho
	MoTa nvarchar(250),	
	MauSac nvarchar(50),
	TenNhanHieu nvarchar(50),
	ID_DM nvarchar(10), -- Quần, Áo, Giày
	Loai nvarchar(20), -- Nam, Nữ, Trẻ em
	CONSTRAINT FK_SP_DM FOREIGN KEY (ID_DM) REFERENCES DanhMuc(ID_DM) ON DELETE SET NULL ON UPDATE NO ACTION
)
GO

CREATE TABLE KichCo (
	ID_KC int IDENTITY(1,1) PRIMARY KEY,
	ID_SP nvarchar(15),
	KichCo nvarchar(5), -- S, M, L
	CONSTRAINT FK_KC_SP FOREIGN KEY (ID_SP) REFERENCES SanPham(ID_SP) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

CREATE TABLE DonDatHang (
	ID_DDH int IDENTITY(1,1) PRIMARY KEY,
	NgayDat date,
	GhiChuKH nvarchar(250),
	TongTien decimal(9,0),
	TrangThai nvarchar(50),
	SoDT nchar(15),	-- SĐT sẽ gọi cho khách nhận hàng
	DiaChi nvarchar(255), -- Địa chỉ nhận hàng
	ID_KH nvarchar(10),
	CONSTRAINT FK_DDH_KH FOREIGN KEY (ID_KH) REFERENCES NguoiDung(ID_KH) ON DELETE NO ACTION ON UPDATE CASCADE
)
GO

CREATE TABLE DonDatChiTiet (
	ID_DDCT int IDENTITY(1,1) PRIMARY KEY,
	ID_DDH int,
	ID_SP nvarchar(15),
	SoLuong int,
	Gia decimal (9,0),	-- SL * Giá SP
	CONSTRAINT FK_DDCT_SP FOREIGN KEY (ID_SP) REFERENCES SanPham(ID_SP) ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT FK_DDCT_DDH FOREIGN KEY (ID_DDH) REFERENCES DonDatHang(ID_DDH) ON DELETE NO ACTION ON UPDATE CASCADE,
)
GO

CREATE TABLE FeedBack (
	ID_FB int IDENTITY(1,1) PRIMARY KEY,
	ID_KH nvarchar(10),
	ID_SP nvarchar(15),
	DanhGia float,
	NoiDung nvarchar(250),
	NgayDang date
	CONSTRAINT FK_FB_SP FOREIGN KEY (ID_SP) REFERENCES SanPham(ID_SP) ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT FK_FB_KH FOREIGN KEY (ID_KH) REFERENCES NguoiDung(ID_KH) ON DELETE NO ACTION ON UPDATE CASCADE
)
GO

----------------------------- TRIGGER -----------------------------
-- create trigger before insert
if(OBJECT_ID('tg_nguoidung')) is not null
	drop trigger tg_nd
go

create trigger tg_nd on NguoiDung
INSTEAD OF INSERT 
AS BEGIN
	SET NOCOUNT ON;
	DECLARE @HoTen NVARCHAR(50) = (SELECT HoTen FROM inserted)
	DECLARE @NgaySinh DATE =(SELECT NgaySinh FROM inserted)
	DECLARE @GioiTinh BIT = (SELECT GioiTinh FROM inserted)
	DECLARE @SoDT NCHAR(15) = (SELECT SoDT FROM inserted)
	DECLARE @Email NVARCHAR(50) = (SELECT Email FROM INSERTED)
	DECLARE @DiaChi NVARCHAR(255) = (SELECT DiaChi FROM INSERTED)
	DECLARE @NgheNghiep NVARCHAR(50) = (SELECT NgheNghiep FROM INSERTED)
	DECLARE @Anh NVARCHAR(100) = (SELECT Anh FROM inserted)
	DECLARE @TenTK NVARCHAR(50) = (SELECT TenTK FROM INSERTED)
	DECLARE @MatKhau NVARCHAR(50) = (SELECT MatKhau FROM INSERTED)
	DECLARE @VT BIT = (SELECT VaiTro FROM INSERTED)
	
	--SO ID GAN NHAT DUOC THEM VAO TRONG BANG
	DECLARE @PRE_ID NVARCHAR(10) = (SELECT TOP 1 CAST(REPLACE(ID_KH,left(ID_KH,2),'') AS INT)  IDN FROM NguoiDung WHERE VaiTro LIKE @VT ORDER BY IDN DESC)
	DECLARE @NEXT INT

	-- NEU LA RECORD DAU TIEN SO LA 1 HOAC @PRE_ID + 1
	IF(@PRE_ID IS NULL) SET @NEXT = 1 
	ELSE SET @NEXT = @PRE_ID + 1 
	-- TAO ID TU TANG CHO HANG CHUAN BI THEM
	DECLARE @CUR_ID NVARCHAR(10) = CASE WHEN @VT = 1 THEN ('AD' + RIGHT('000'+CONVERT(NVARCHAR(10),@NEXT),4)) 
										WHEN @VT = 0 THEN ('KH'+ RIGHT('000'+CONVERT(NVARCHAR(10),@NEXT),4)) END

	-- INSERT														
	INSERT INTO NguoiDung VALUES(@CUR_ID, @HoTen, @NgaySinh, @GioiTinh, @SoDT, @Email, @DiaChi, @NgheNghiep, @Anh, @TenTK, @MatKhau, @VT)

END
GO


-- delete trigger when existed
if(OBJECT_ID('tg_sp')) is not null
	drop trigger tg_sp
go
-- create trigger before insert SanPham
create trigger tg_sp on SanPham
INSTEAD OF INSERT 
AS BEGIN
	SET NOCOUNT ON;
	DECLARE @TenSP NVARCHAR(250) = (SELECT TenSP FROM INSERTED)
	DECLARE @TrangThai BIT = (SELECT TrangThai FROM INSERTED)
	DECLARE @Anh NVARCHAR(250) = (SELECT Anh FROM INSERTED)
	DECLARE @Gia DECIMAL = (SELECT Gia  FROM INSERTED)
	DECLARE @SLTonKho INT = (SELECT SLTonKho FROM INSERTED)
	DECLARE @MoTa NVARCHAR(250) = (SELECT MoTa  FROM INSERTED)
	DECLARE @MauSac NVARCHAR(50) = (SELECT MauSac FROM INSERTED)
	DECLARE @TenNhanHieu  NVARCHAR(50) = (SELECT TenNhanHieu FROM inserted)
	DECLARE @ID_DM  NVARCHAR(50) = (SELECT ID_DM FROM inserted)
	DECLARE @Loai  NVARCHAR(50) = (SELECT Loai FROM inserted)
	--SO ID GAN NHAT DUOC THEM VAO TRONG BANG
	DECLARE @PRE_ID NVARCHAR(15) = (SELECT TOP 1 CAST(REPLACE(ID_SP,left(ID_SP ,2),'') AS INT) IDN FROM SanPham ORDER BY IDN desc)
	DECLARE @NEXT INT

	-- NEU LA RECORD DAU TIEN SO LA 1 HOAC @PRE_ID + 1
	IF(@PRE_ID IS NULL) SET @NEXT = 1
	ELSE SET @NEXT = @PRE_ID + 1
	-- NEXT ID
	DECLARE @CUR_ID NVARCHAR(15) = ('SP' + RIGHT('000' + CONVERT(NVARCHAR(10), @NEXT), 4))
	-- INSERT										
	INSERT INTO SanPham VALUES(@CUR_ID, @TenSP, @TrangThai ,@Anh, @Gia, @SLTonKho, @MoTa, @MauSac, @TenNhanHieu, @ID_DM, @Loai)
END
GO

----------------------------- END -----------------------------

-- THÊM DỮ LIỆU BẢNG NGƯỜI DÙNG
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Phạm Hoàng Long','1998-10-18',0,'0985645231','hoanglong@gmail.com', '', '','user1.png','Hoanglong98','Longhoang9x',1)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Nguyễn Thị Nga','1997-07-28',1,'0977485234','nganguyen@gmail.com', '', '','user2.png','ngaNguyen97','Nga0797',1)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Nguyễn Thanh Loan','1996-05-15',1,'0995343221','loannguyen@gmail.com', '', '','user3.png','Thanhloan96','Loannguyen1505',1)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Trương Thế Thành','1997-02-05',0,'0755315241','thanhtruong@gmail.com', '', '','user4.png','Thethanh97','ThanhTruong97',1)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Trần Hoàng Kha','1989-05-25',0,'0884245251','khahoang@gmail.com', '', '','user5.png','Hoangkha8x','Khatran2505',1)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Tống Thanh Hàn','1998-10-07',0,'0883882943','thanhhan@gmail.com', '', '','user6.png','Tonghan98','Thanhhan9x10',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Nguyễn Tường Vy','1994-01-30',1,'0988392403','tuongvynguyen@gmail.com', '', '','user7.png','vyNguyen97','Tuongvy019x',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Nguyễn Ánh','1998-09-28',1,'0964011088','anhnguyen@gmail.com', '', '','user8.png','Nguyenanh9x','nguyenAnh98',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Phùng Thái Linh','1998-07-09',1,'0364444043','phunglinh@gmail.com', '', '','user9.png','Thailinh98','Linh98',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Nguyễn Lê Phương','1999-01-04',1,'0963324252','phuongnguyen@gmail.com', '', '','user11.png','Phuong99','Phuong0401',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Mai Nam Hải','1989-10-15',0,'0917229979','maihai@gmail.com','user12.png', '', '','Namhai89','Hai1089',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Trần Trà My','1996-12-07',1,'093942561','mytra@gmail.com','user13.png', '', '','Tramy96','Tramy1996',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Đoàn Nguyên Hải','1993-01-12',0,'0394040503','haidoan@gmail.com', '', '','user14.png','Haidoan9x','Hai0193',0)
INSERT NguoiDung  (HoTen ,NgaySinh ,GioiTinh ,SoDT ,Email, DiaChi, NgheNghiep, Anh , TenTK, MatKhau ,VaiTro )
	VALUES (N'Phùng Thanh Độ','1995-07-30',0,'0364461650','dophung@gmail.com', '', '','user15.png','Thanhdo95','Thanhdo9507',0)


-- THÊM BẢNG DỮ LIỆU DANH MỤC
INSERT INTO DanhMuc VALUES 
	('Ao',N'Áo'),
	('Quan',N'Quần'),
	('Dam',N'Đầm'),
	('Vay',N'Váy'),
	('Giay',N'Giày'),
	('Dep',N'Dép'),
	('PhuKien',N'Phụ kiện')
GO


-- THÊM BẢNG DỮ LIỆU SẢN PHẨM
-- Áo
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Disney Mickey Black', 1, 'Ao-Thun-Disney-Mickey-Black.jpg', 1300, 20, N'', N'Đen', N'Adidas', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Jordan Flight Heritage', 1, 'Jordan-Flight-Heritage.jpg', 1400, 24, N'', N'Đen', N'Christian Dior', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Basketball T-Shirt Black', 1, 'Basketball-T-Shirt-Black.jpg', 1100, 8, N'', N'Trắng', N'Nike', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Basketball T-Shirt White', 1, 'Basketball-T-Shirt-White.jpg', 1100, 19, N'', N'Trắng', N'Nike', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike Dri FIT Sport Clash Black', 1, 'Nike-Dri-FIT-Sport-Clash-Black.jpg', 1000, 26, N'', N'Đen', N'Adidas', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike Sportswear Black', 1, 'Nike-Sportswear-Black.jpg', 1000, 26, N'', N'Đen', N'Adidas', N'Ao', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Sweater', 1, 'Sweater.jpg', 1200, 24, N'', N'Đen', N'Gucci', 'Ao', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Hoodie Lửng Black', 1, 'Ao-Hoodie-Lung-Black.jpg', 1200, 15, N'', N'Đen', N'Adidas', N'Ao', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Karl Lagerfeld Black', 1, 'Ao-Phong-Karl-Lagerfeld-Black.jpg', 1500, 12, N'', N'Đen', N'Puma', N'Ao', N'Nữ')

-- Quần
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Jordan Sport Dri FIT', 1, 'Jordan-Sport-Dri-FIT.jpg', 1200, 36, N'', N'Đen Trắng', N'Nike', N'Quan', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike Dri FIT', 1, 'Nike-Dri-FIT.jpg', 1000, 30, N'', N'Đen', N'Nike', N'Quan', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike Pro 365', 1, 'Nike-Pro-365.jpg', 1600, 24, N'', N'Đen', N'Nike', N'Quan', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike SB', 1, 'Nike-SB.jpg', 1300, 24, N'', N'Đen', N'Nike', N'Quan', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Nike Sportswear', 1, 'Nike-Sportswear.jpg', 1800, 24, N'', N'Đen', N'Gucci', N'Quan', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'High Rise Shorts', 1, 'High-Rise-Shorts.jpg', 2000, 24, N'', N'Đen', N'Gucci', N'Quan', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Washed Jersey Shorts', 1, 'Washed-Jersey-Shorts.jpg', 3200, 24, N'', N'Đen', N'Gucci', N'Quan', N'Nữ')

-- Đầm
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Belted Wool Jumpsuit', 1, 'Belted-wool-crepe-jumpsuit.jpg', 3600, 4, N'', N'Trắng', N'Gucci', N'Dam', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Crpe De Dress', 1, 'Crpe-de-chine-dress.jpg', 4500, 30, N'', N'Xanh', N'Gucci', N'Dam', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Chiffon Ruffle Dress', 1, 'Chiffon-ruffle-dress.jpg', 3000, 12, N'', N'Hồng', N'Gucci', N'Dam', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'G-Technical Jersey Dress', 1, 'Interlocking-G-technical-jersey-dress.jpg', 2700, 16, N'', N'Trắng', N'Gucci', N'Dam', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Wool GG Dress', 1, 'Wool-GG-piquet-jacquard-polo-dress.jpg', 3200, 9, N'', N'Trắng đen', N'Gucci', N'Dam', N'Nữ')

-- Váy
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'DIORIVIERA FLARED SKIRT', 1, 'DIORIVIERA-FLARED-SKIRT.jpg', 1600, 10, N'', N'Hồng', N'Gucci', N'Vay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'MID-LENGTH SKIRT', 1, 'MID-LENGTH-SKIRT.jpg', 2900, 16, N'', N'Trắng Đen', N'Gucci', N'Vay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'SKORT', 1, 'SKORT.jpg', 3900, 7, N'', N'Trắng Đen', N'Gucci', N'Vay', N'Nữ')

-- Giày
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Bryony', 1, 'bryony.jpg', 1600, 20, N'', N'Vàng', N'Adidas', N'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Archlight Slingback Pump', 1, 'louis-vuitton-archlight-slingback-pump-shoes.jpg', 3000, 24, N'', N'Xanh Đen', N'LouisVuitton', 'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Louis Vuitton Blue', 1, 'louis-vuitton-blue.jpg', 3200, 6, N'', N'Xanh Trắng', N'LouisVuitton', N'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Personse Super 2.0', 1, 'Personse-super-2.0.jpg', 2200, 18, N'', N'Đen Hồng', N'Adidas', N'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Superstar', 1, 'Superstar.jpg', 1200, 10, N'', N'Trắng', N'Adidas', N'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Ultraboost 22 W', 1, 'Ultraboost-22-w.jpg', 1600, 29, N'', N'Hồng', N'Adidas', N'Giay', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Men-Super 2.0', 1, 'Men-response-super-2.0.jpg', 3200, 14, N'', N'Trắng', N'Adidas', N'Giay', 'Nam')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'ZX 22 Boost', 1, 'ZX-22-Boost.jpg', 1900, 24, N'', N'Trắng', N'Adidas', N'Giay', 'Nam')

-- Dép
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Electric Sandal', 1, 'electric-sandal.jpg', 1200, 24, N'', N'Trắng', N'Hermes', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Izmir Sandal', 1, 'izmir-sandal.jpg', 1600, 14, N'', N'Đen', N'Hermes', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Jordan-LS', 1, 'Jordan-LS.jpg', 1300, 32, N'', N'Đen', N'Nike', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Jordan-LS-1', 1, 'Jordan-LS-1.jpg', 1000, 15, N'', N'Vàng Nâu', N'Nike', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'LV Horizon Flat', 1, 'louis-vuitton-horizon-flat.jpg', 1800, 17, N'', N'Vàng Nâu', N'LouisVuitton', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'LV Maia Wedge', 1, 'louis-vuitton-maia-wedge.jpg', 1900, 8, N'', N'Xanh', N'LouisVuitton', N'Dep', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'LV Pool Pillow', 1, 'louis-vuitton-pool-pillow.jpg', 1700, 9, N'', N'Trắng', N'LouisVuitton', N'Dep', N'Nữ')

-- Phụ kiện
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Gucci Horsebit 1955', 1, 'Gucci-Horsebit-1955.jpg', 2000, 24, N'', N'Trắng Nâu', N'Gucci', N'PhuKien', N'Nữ')
INSERT SanPham (TenSP ,TrangThai ,Anh ,Gia ,SLTonKho ,MoTa ,MauSac ,TenNhanHieu , Id_DM, Loai)
	VALUES (N'Gucci Jackie 1961', 1, 'Gucci-Jackie-1961.jpg', 2200, 24, N'', N'Trắng Nâu', N'Gucci', N'PhuKien', N'Nữ')


-- THÊM DỮ LIỆU BẢNG KÍCH CỠ
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0001', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0001', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0001', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0002', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0002', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0002', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0003', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0003', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0003', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0004', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0004', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0004', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0005', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0005', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0005', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0006', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0006', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0006', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0007', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0007', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0007', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0008', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0008', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0008', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0009', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0009', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0009', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0010', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0011', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0011', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0012', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0012', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0013', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0013', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0014', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0014', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0015', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0015', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0016', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0016', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0017', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0017', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0018', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0018', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0015', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0015', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0016', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0016', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0017', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0017', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0018', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0018', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0019', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0019', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0020', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0020', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0021', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0021', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0022', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0022', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0022', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0023', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0023', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0023', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0024', 'S')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0024', 'M')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0024', 'L')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0025', '27')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0026', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0027', '29')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0028', '29')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0028', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0028', '31')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0029', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0030', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0031', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0032', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0033', '28')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0034', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0035', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0036', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0037', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0038', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0039', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0040', '30')
INSERT KichCo(ID_SP, KichCo)
	VALUES ('SP0041', '30')

-- THÊM DỮ LIỆU BẢNG ĐƠN ĐẶT HÀNG
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi,ID_KH) 
	VALUES ('2022-03-30', N'',2400, 'Đang giao', '0985645231', '357 Lê Văn Thọ, Phường 9, Gò Vấp, TPHCM', N'KH0001')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-03-31', N'',2700, 'Đang giao', '0977485234', '200 Đường 3/2, Phường 12, Quận 10, TPHCM', N'KH0002')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH)
	VALUES ('2022-04-02', N'',2600, 'Đã giao', '0884245251', '686 Trường Chinh, Phường 15, Tân Bình, TPHCM', N'KH0005')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH)
	VALUES ('2022-04-05', N'',4200, 'Đang giao', '0995343221', '107 Đường Công Chúa Ngọc Hân, Phường 7, Đà Lạt', N'KH0003')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-10', N'',1100, 'Đã giao', '0364444043', '309 Lê Chí Dân, Tân An, Bến Cát, Bình Dương', N'KH0009')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-20', N'',2200, 'Đang giao', '0988392403', '357 Trần Quốc Toản, Hoà Lợi, Bến Cát, Bình Dương', N'KH0007')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-22', N'',3600, 'Đang giao', '0883882943', '408 Tôn Đức Thắng, Hoà Minh, Liên Chiểu, Đà Nẵng', N'KH0006')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-10', N'',1200, 'Đã giao', '0364444043', '309 Lê Chí Dân, Tân An, Bến Cát, Bình Dương', N'KH0009')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-20', N'',4000, 'Chờ xác nhận', '0988392403', '357 Trần Quốc Toản, Hoà Lợi, Bến Cát, Bình Dương', N'KH0007')
INSERT DonDatHang(NgayDat ,GhiChuKH ,TongTien, TrangThai, SoDT, DiaChi, ID_KH) 
	VALUES ('2022-04-22', N'',2200, 'Chờ xác nhận', '0883882943', '408 Tôn Đức Thắng, Hoà Minh, Liên Chiểu, Đà Nẵng', N'KH0006')


-- THÊM DỮ LIỆU BẢNG ĐƠN HÀNG CHI TIẾT
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 1, 'SP0001', 2, 1200 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 2, 'SP0003', 1, 1200 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 2, 'SP0004', 1, 1500 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 3, 'SP0007', 2, 1300 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 4, 'SP0010', 3, 1400 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 5, 'SP0015', 1, 1100 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 6, 'SP0018', 2, 1100 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 7, 'SP0020', 3, 1200 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 8, 'SP0021', 1, 1200 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 9, 'SP0014', 4, 1000 )
INSERT DonDatChiTiet(ID_DDH ,ID_SP, SoLuong ,Gia ) VALUES ( 10, 'SP0018', 2, 1100 )

-- THÊM DỮ LIỆU BẢNG FEED BACK
INSERT FeedBack (ID_KH , ID_SP ,DanhGia ,NoiDung ,NgayDang ) 
	VALUES (N'KH0001',N'SP0001', 5, N'Chất lượng sản phẩm tốt', '2022-03-31')
INSERT FeedBack (ID_KH , ID_SP ,DanhGia ,NoiDung ,NgayDang ) 
	VALUES (N'KH0002',N'SP0003', 3, N'Giao hàng lâu', '2022-04-15')
INSERT FeedBack (ID_KH , ID_SP ,DanhGia ,NoiDung ,NgayDang ) 
	VALUES (N'KH0009', N'SP0010', 2, N'Giao sai Size', '2022-04-12')
INSERT FeedBack (ID_KH , ID_SP ,DanhGia ,NoiDung ,NgayDang ) 
	VALUES (N'KH0007', N'SP0008', 5, N'Sản phẩm tốt', '2022-04-22')
