USE [master]
GO
/****** Object:  Database [RentCar3]    Script Date: 11/28/2023 3:54:02 PM ******/
CREATE DATABASE [RentCar3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentCar3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\RentCar3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RentCar3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\RentCar3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RentCar3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentCar3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentCar3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentCar3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentCar3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentCar3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentCar3] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentCar3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RentCar3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentCar3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentCar3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentCar3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentCar3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentCar3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentCar3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentCar3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentCar3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RentCar3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentCar3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentCar3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentCar3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentCar3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentCar3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentCar3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentCar3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentCar3] SET  MULTI_USER 
GO
ALTER DATABASE [RentCar3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentCar3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentCar3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentCar3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RentCar3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RentCar3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RentCar3] SET QUERY_STORE = ON
GO
ALTER DATABASE [RentCar3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RentCar3]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[MaNV] [varchar](100) NOT NULL,
	[TenDN] [varchar](100) NULL,
	[Pass] [varchar](100) NULL,
	[Quyen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[MaKH] [varchar](100) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[GT] [nvarchar](10) NULL,
	[Mail] [varchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[DC] [nvarchar](100) NULL,
	[NgayThem] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](100) NOT NULL,
	[MaKH] [varchar](100) NULL,
	[MaNV] [varchar](100) NULL,
	[MaXe] [varchar](100) NULL,
	[NgayThue] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[TinhTrangTruoc] [nvarchar](100) NULL,
	[NgayThemDH] [datetime] NULL,
	[CheckReturn] [varchar](5) NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangInfo]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangInfo](
	[MaInfo] [varchar](100) NOT NULL,
	[MaDH] [varchar](100) NULL,
	[DateOfPayment] [datetime] NULL,
	[TongSoLuong] [int] NULL,
	[TotalPrice] [float] NULL,
	[TinhTrangSau] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[MaNV] [varchar](100) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 11/28/2023 3:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[MaXe] [varchar](100) NOT NULL,
	[Mau] [nvarchar](100) NULL,
	[LoaiXe] [nvarchar](100) NULL,
	[Hang] [nvarchar](100) NULL,
	[LoaiNhienLieu] [nvarchar](100) NULL,
	[DungTich] [float] NULL,
	[Registration] [nvarchar](100) NULL,
	[MauSac] [nvarchar](100) NULL,
	[TinhNang] [nvarchar](100) NULL,
	[GiaThue] [float] NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[Note] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV01', N'admin', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', N'Manager')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV02', N'user', N'04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb', N'Manager')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV03', N'staff', N'1562206543da764123c21bd524674f0a8aaf49c8a89744c97352fe677f7e4006', N'Staff')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV04', N'accountant', N'29d8c99ec25b271007f05eace87ec00959746687aa96ed783dd7a2f3bfdb398b', N'Accountant')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV05', N'admin1', N'998ed4d621742d0c2d85ed84173db569afa194d4597686cae947324aa58ab4bb', N'Manager')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV06', N'landuy', N'15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', N'Manager')
INSERT [dbo].[Account] ([MaNV], [TenDN], [Pass], [Quyen]) VALUES (N'NV07', N'giakhang', N'17f765d5b7ccdf685bd13ff61ff5d5676f7c4e76c7a7197468bf2651bd3f19ec', N'Manager')
GO
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH01', N'Phương Lan', N'Female', N'phuonglan@gmail.com', N'0234234432', N'đồng nai', CAST(N'2023-11-20T10:21:02.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH02', N'Linh Duy', N'Male', N'linhduy@gmail.com', N'0234234439', N'sài gòn', CAST(N'2023-11-20T10:23:33.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH03', N'Thùy Linh', N'Male', N'abc@gmail.com', N'0123123777', N'biên hòa', CAST(N'2023-11-20T10:27:20.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH04', N'Minh Nhật', N'Male', N'abc@gmail.com', N'0123123299', N'biên hòa', CAST(N'2023-11-20T10:27:25.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH05', N'Minh Minh', N'Female', N'xyz@gmail.com', N'0234234234', N'đồng tháp', CAST(N'2023-11-20T10:28:04.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH06', N'Anh Tú', N'Male', N'atu12@gamil.com', N'0453543534', N'hà nội', CAST(N'2023-11-20T20:48:05.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH07', N'Thùy Chi', N'Female', N'chichi2@gmail.com', N'0438593473', N'bến tre', CAST(N'2023-11-20T20:48:33.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH08', N'Lê Huy', N'Male', N'huy@gmail.com', N'0569967856', N'cao bằng', CAST(N'2023-11-23T00:43:00.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH09', N'Quang Huy', N'Male', N'huydz@gmail.com', N'0324343242', N'đồng nai', CAST(N'2023-11-23T01:04:46.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH10', N'Phương Trâm', N'Female', N'tramtram@gmail.com', N'0235635754', N'đồng nai', CAST(N'2023-11-26T19:59:47.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH11', N'Lan Duy', N'Male', N'landuy123@gmail.com', N'0355757888', N'đồng nai', CAST(N'2023-11-27T23:54:00.000' AS DateTime))
INSERT [dbo].[Client] ([MaKH], [TenKH], [GT], [Mail], [SDT], [DC], [NgayThem]) VALUES (N'KH12', N'Gia Huy', N'Male', N'giahuy123@gmail.com', N'0377858977', N'bến tre', CAST(N'2023-11-28T00:06:57.000' AS DateTime))
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH01', N'KH01', N'NV01', N'XE02', CAST(N'2023-11-24T01:34:00.000' AS DateTime), CAST(N'2023-11-25T01:34:00.000' AS DateTime), N'New', CAST(N'2023-11-23T01:34:51.000' AS DateTime), N'1', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH02', N'KH02', N'NV02', N'XE03', CAST(N'2023-11-24T01:35:52.000' AS DateTime), CAST(N'2023-11-25T01:35:52.000' AS DateTime), N'New', CAST(N'2023-11-23T01:36:05.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH03', N'KH03', N'NV04', N'XE04', CAST(N'2023-11-26T01:38:17.000' AS DateTime), CAST(N'2023-11-29T01:38:17.000' AS DateTime), N'Old', CAST(N'2023-11-23T01:38:38.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH04', N'KH02', N'NV03', N'XE02', CAST(N'2023-11-28T16:40:00.000' AS DateTime), CAST(N'2023-11-30T16:40:00.000' AS DateTime), N'Old', CAST(N'2023-11-23T16:40:41.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH05', N'KH06', N'NV04', N'XE18', CAST(N'2023-11-27T16:46:45.000' AS DateTime), CAST(N'2023-11-29T16:46:45.000' AS DateTime), N'Bad', CAST(N'2023-11-23T16:47:08.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH06', N'KH03', N'NV04', N'XE02', CAST(N'2023-12-02T00:56:24.000' AS DateTime), CAST(N'2023-12-05T00:56:24.000' AS DateTime), N'Good', CAST(N'2023-11-27T00:56:45.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH07', N'KH07', N'NV05', N'XE09', CAST(N'2024-01-09T00:56:24.000' AS DateTime), CAST(N'2024-01-16T00:56:24.000' AS DateTime), N'Good', CAST(N'2023-11-27T00:57:18.000' AS DateTime), N'0', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH08', N'KH05', N'NV04', N'XE07', CAST(N'2023-11-28T22:54:24.000' AS DateTime), CAST(N'2023-11-30T22:54:24.000' AS DateTime), N'Good', CAST(N'2023-11-27T22:55:06.000' AS DateTime), N'1', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaNV], [MaXe], [NgayThue], [NgayTra], [TinhTrangTruoc], [NgayThemDH], [CheckReturn], [GhiChu]) VALUES (N'DH09', N'KH05', N'NV05', N'XE05', CAST(N'2023-11-29T00:11:15.000' AS DateTime), CAST(N'2023-11-30T00:11:15.000' AS DateTime), N'Good', CAST(N'2023-11-28T00:11:43.000' AS DateTime), N'1', N'')
GO
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO01', N'DH01', CAST(N'2023-11-27T00:57:59.000' AS DateTime), 1, 300000, N'Same')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO02', N'DH02', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, 750000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO03', N'DH03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 3, 999000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO04', N'DH04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2, 600000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO05', N'DH05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2, 1560000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO06', N'DH06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 3, 900000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO07', N'DH07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 7, 4690000, N'')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO08', N'DH08', CAST(N'2023-11-27T22:56:13.000' AS DateTime), 2, 1340000, N'Good')
INSERT [dbo].[DonHangInfo] ([MaInfo], [MaDH], [DateOfPayment], [TongSoLuong], [TotalPrice], [TinhTrangSau]) VALUES (N'INFO9', N'DH09', CAST(N'2023-11-28T00:12:37.000' AS DateTime), 1, 750000, N'Good')
GO
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV01', N'Quỳnh Hương', N'Female', N'ww@gmail.com', N'0123123223', N'sài gòn')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV02', N'Phương Lan', N'Female', N'sfdf@gmail.com', N'0436384635', N'đồng nai')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV03', N'Thành Kiên', N'Male', N'sdf@gmail.com', N'0327429355', N'hà nội')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV04', N'Linh Đan', N'Female', N'sadad@gmail.com', N'0423743855', N'kiên giang')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV05', N'Mai Giang', N'Male', N'dsf@gmail.com', N'0453453453', N'an giang')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV06', N'lan duy', N'Male', N'landuy@gmail.com', N'0366757899', N'đồng nai')
INSERT [dbo].[Staff] ([MaNV], [Ten], [GioiTinh], [Email], [Phone], [DiaChi]) VALUES (N'NV07', N'Gia Khang', N'Male', N'giakhang123@gmail.com', N'0377784899', N'đồng tháp')
GO
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE01', N'Corolla Altis', N'4 chỗ (Hatchback)', N'Toyota', N'Xăng', 400, N'60C2DS34', N'đỏ đen', N'Bluetooth, Khe cắm USB, Cửa sổ trời, ', 500000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE02', N'Vios', N'5 chỗ (CUV Gầm cao)', N'Toyota', N'Dầu Diesel', 100, N'703C264', N'trắng', N'Camera hành trình, Cảm biến va chạm, Định vị GPS, ', 300000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE03', N'Innova', N'7 chỗ (MPV Gầm thấp)', N'Toyota', N'Điện', 450, N'2374SA3', N'xanh đen', N'Camera 360, Camera lùi, Cảnh báo tốc độ, ', 750000, N'Đang cho thuê', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE04', N'Chevrolet Colorado', N'5 chỗ (CUV Gầm cao)', N'Chevrolet', N'Xăng', 450, N'234SSA2', N'trắng', N'Bản đồ, Camera cập lề, Cảm biến lốp, Camera hành trình, ', 333000, N'Đang cho thuê', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE05', N'Trailblazer', N'7 chỗ (CUV Gầm cao)', N'Chevrolet', N'Xăng', 550, N'3247SS3', N'trắng xám', N'Camera hành trình, Cảm biến va chạm, Cảnh báo tốc độ, ', 750000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE06', N'Ranger', N'Bán tải', N'Ford', N'Xăng', 800, N'SDS435', N'xanh', N'Khe cắm USB, Cửa sổ trời, Camera 360, Camera lùi, Cảnh báo tốc độ, ', 800000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE07', N'Explorer', N'7 chỗ (MPV Gầm thấp)', N'Ford', N'Xăng', 560, N'34D245', N'nâu', N'Cảm biến lốp, Khe cắm USB, Camera hành trình, Cảnh báo tốc độ, ', 670000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE08', N'Brio', N'7 chỗ (CUV Gầm cao)', N'Honda', N'Điện', 450, N'FF23FS', N'trắng', N'Khe cắm USB, Định vị GPS, Camera 360, Camera lùi, Cảnh báo tốc độ, ', 760000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE09', N'HR-V', N'5 chỗ (CUV Gầm cao)', N'Honda', N'Xăng', 450, N'60C2321', N'đen', N'Khe cắm USB, Cửa sổ trời, Camera hành trình, Định vị GPS, ', 670000, N'Đang cho thuê', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE10', N'Santafe', N'5 chỗ (CUV Gầm cao)', N'Hyundai', N'Xăng', 760, N'753DD32', N'vàng nâu', N'Camera cập lề, Cảm biến lốp, Khe cắm USB, Cửa sổ trời, Cảm biến va chạm, Camera 360, Camera lùi, ', 450000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE11', N'Celerio', N'4 chỗ (Hatchback)', N'Suzuki', N'Xăng', 450, N'DFD4543', N'bạc', N'Camera hành trình, Cảm biến va chạm, Định vị GPS, ', 100000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE12', N'RX 450h', N'4 chỗ (Mini)', N'Lexus', N'Điện', 450, N'45D2D3', N'đen', N'Bản đồ, Camera cập lề, Cảm biến lốp, Khe cắm USB, Cửa sổ trời, ', 700000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE13', N'Mazda CX-5', N'5 chỗ (CUV Gầm cao)', N'Mazda', N'Điện', 457, N'43D256', N'đỏ', N'Định vị GPS, Camera 360, Camera lùi, Cảnh báo tốc độ, ', 670000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE14', N'Range Rover', N'5 chỗ (CUV Gầm cao)', N'Land Rover', N'Điện', 750, N'345GH323', N'xanh', N'Khe cắm USB, Camera hành trình, Cảm biến va chạm, Định vị GPS, ', 660000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE15', N'Traveller', N'5 chỗ (CUV Gầm cao)', N'Peugeot', N'Dầu Diesel', 380, N'34DTG65', N'bạc', N'Bản đồ, Cảm biến lốp, Camera hành trình, Cảm biến va chạm, Camera lùi, Cảnh báo tốc độ, ', 890000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE16', N'SUV Cayenne', N'7 chỗ (CUV Gầm cao)', N'Porsche', N'Dầu Diesel', 450, N'342DFDG546', N'xanh lam', N'Bản đồ, Camera cập lề, Khe cắm USB, Cửa sổ trời, Cảm biến va chạm, Camera 360, ', 1111000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE17', N'Maybach', N'5 chỗ (CUV Gầm cao)', N'Mercedes Benz', N'Xăng', 676, N'34DFS342', N'trắng', N'Bản đồ, Camera cập lề, Cảm biến lốp, Định vị GPS, ', 324000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE18', N'BMW 7 Series Sedan', N'7 chỗ (CUV Gầm cao)', N'BMW', N'Điện', 345, N'43DFG454', N'xanh lam', N'Khe cắm USB, Camera hành trình, Định vị GPS, Camera lùi, ', 780000, N'Đang cho thuê', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE19', N'A3', N'4 chỗ (Hatchback)', N'Audi', N'Xăng', 250, N'453TUTY444', N'xanh ngọc', N'Camera cập lề, Khe cắm USB, Cảm biến va chạm, Camera 360, Camera lùi, ', 780000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE20', N'Urus', N'4 chỗ (Hatchback)', N'Lamborghini', N'Điện', 350, N'34KTRO435', N'vàng', N'Bản đồ, Cảm biến lốp, Cảm biến va chạm, Định vị GPS, ', 990000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE21', N'Vios 5', N'4 chỗ (Hatchback)', N'Lamborghini', N'Điện', 350, N'39KTRO435', N'vàng', N'Bản đồ, Cảm biến lốp, Cảm biến va chạm, Định vị GPS, ', 990000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE22', N'Vios 6', N'4 chỗ (Hatchback)', N'Lamborghini', N'Điện', 490, N'39KTRO435', N'vàng', N'Bản đồ, Cảm biến lốp, Cảm biến va chạm, Định vị GPS, ', 990000, N'Trống', N' ')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE23', N'Vios 5', N'4 chỗ (Hatchback)', N'Toyota', N'Xăng', 300, N'60SS2323', N'trắng', N'Bản đồ, Camera cập lề, Khe cắm USB, Định vị GPS, Camera lùi, ', 3000000, N'Trống', N'')
INSERT [dbo].[Vehicle] ([MaXe], [Mau], [LoaiXe], [Hang], [LoaiNhienLieu], [DungTich], [Registration], [MauSac], [TinhNang], [GiaThue], [TinhTrang], [Note]) VALUES (N'XE24', N'SUV Cayenne', N'7 chỗ (CUV Gầm cao)', N'Porsche', N'Dầu Diesel', 450, N'342DFDG546', N'xanh lam', N'Bản đồ, Camera cập lề, Khe cắm USB, Cửa sổ trời, Cảm biến va chạm, Camera 360, ', 1111000, N'Trống', N' ')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Client__CA1930A54FEDA568]    Script Date: 11/28/2023 3:54:02 PM ******/
ALTER TABLE [dbo].[Client] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Staff__5C7E359EBF2BD1ED]    Script Date: 11/28/2023 3:54:02 PM ******/
ALTER TABLE [dbo].[Staff] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[Staff] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Client] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[Staff] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Vehicle] ([MaXe])
GO
ALTER TABLE [dbo].[DonHangInfo]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
USE [master]
GO
ALTER DATABASE [RentCar3] SET  READ_WRITE 
GO
