USE [master]
GO
/****** Object:  Database [asp_mvc_2]    Script Date: 14.08.2020 14:05:42 ******/
CREATE DATABASE [asp_mvc_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'asp_mvc_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asp_mvc_2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'asp_mvc_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asp_mvc_2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [asp_mvc_2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [asp_mvc_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [asp_mvc_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [asp_mvc_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [asp_mvc_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [asp_mvc_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [asp_mvc_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [asp_mvc_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [asp_mvc_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [asp_mvc_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [asp_mvc_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [asp_mvc_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [asp_mvc_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [asp_mvc_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [asp_mvc_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [asp_mvc_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [asp_mvc_2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [asp_mvc_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [asp_mvc_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [asp_mvc_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [asp_mvc_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [asp_mvc_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [asp_mvc_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [asp_mvc_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [asp_mvc_2] SET RECOVERY FULL 
GO
ALTER DATABASE [asp_mvc_2] SET  MULTI_USER 
GO
ALTER DATABASE [asp_mvc_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [asp_mvc_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [asp_mvc_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [asp_mvc_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [asp_mvc_2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'asp_mvc_2', N'ON'
GO
ALTER DATABASE [asp_mvc_2] SET QUERY_STORE = OFF
GO
USE [asp_mvc_2]
GO
/****** Object:  Table [dbo].[arac_bilgileri]    Script Date: 14.08.2020 14:05:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arac_bilgileri](
	[arac_id] [int] IDENTITY(1,1) NOT NULL,
	[arac_plaka] [nvarchar](20) NOT NULL,
	[arac_marka] [nvarchar](20) NOT NULL,
	[arac_renk] [nvarchar](20) NOT NULL,
	[kisi_id] [int] NOT NULL,
 CONSTRAINT [PK_arac_bilgileri] PRIMARY KEY CLUSTERED 
(
	[arac_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kisi_bilgileri]    Script Date: 14.08.2020 14:05:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisi_bilgileri](
	[kisi_id] [int] IDENTITY(1,1) NOT NULL,
	[tc_kimlik] [nvarchar](11) NOT NULL,
	[ad] [nvarchar](30) NOT NULL,
	[soyad] [nvarchar](30) NOT NULL,
	[cep_telefonu] [nvarchar](11) NOT NULL,
	[Adres] [ntext] NOT NULL,
 CONSTRAINT [PK_kisi_bilgileri] PRIMARY KEY CLUSTERED 
(
	[kisi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[park_yeri]    Script Date: 14.08.2020 14:05:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[park_yeri](
	[parkyeri_id] [int] IDENTITY(1,1) NOT NULL,
	[Parkyeri] [nvarchar](20) NOT NULL,
	[arac_id] [int] NOT NULL,
 CONSTRAINT [PK_park_yeri] PRIMARY KEY CLUSTERED 
(
	[parkyeri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[arac_bilgileri] ON 

INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (1, N'10LD238', N'renaultt', N'Beyaz', 2)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (6, N'10LD222', N'Dacia', N'Sarı', 5)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (7, N'34 NZR 123', N'Alfa Romeo', N'Mavi', 6)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (8, N'34 AKB 312', N'Aston Martin', N'Kırmızı', 2)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (9, N'34 BYR 345', N'Bugatti', N'Mavi', 1)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (10, N'34 AAA 123', N'Cadillac', N'Beyaz', 7)
INSERT [dbo].[arac_bilgileri] ([arac_id], [arac_plaka], [arac_marka], [arac_renk], [kisi_id]) VALUES (11, N'15 AAB 544', N'BMW', N'Mavi', 7)
SET IDENTITY_INSERT [dbo].[arac_bilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[kisi_bilgileri] ON 

INSERT [dbo].[kisi_bilgileri] ([kisi_id], [tc_kimlik], [ad], [soyad], [cep_telefonu], [Adres]) VALUES (1, N'17414428146', N'Volkan', N'Korkmaz', N'05532006652', N'Burdur')
INSERT [dbo].[kisi_bilgileri] ([kisi_id], [tc_kimlik], [ad], [soyad], [cep_telefonu], [Adres]) VALUES (2, N'17411548963', N'Yağız Onur', N'Kolcu', N'05532004487', N'Muğla')
INSERT [dbo].[kisi_bilgileri] ([kisi_id], [tc_kimlik], [ad], [soyad], [cep_telefonu], [Adres]) VALUES (5, N'17425587432', N'Hanım', N'Hanım', N'0553644985', N'Onlar Benim Yavyulayım')
INSERT [dbo].[kisi_bilgileri] ([kisi_id], [tc_kimlik], [ad], [soyad], [cep_telefonu], [Adres]) VALUES (6, N'4758878218', N'Günşen ', N'Sugötüren', N'8681582345', N'Daire 3')
INSERT [dbo].[kisi_bilgileri] ([kisi_id], [tc_kimlik], [ad], [soyad], [cep_telefonu], [Adres]) VALUES (7, N'7284153234', N'Elanur', N'Arpacı', N'2816632585', N'Daire 4')
SET IDENTITY_INSERT [dbo].[kisi_bilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[park_yeri] ON 

INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (1, N'Parkyeri-1', 1)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (5, N'Parkyeri-4', 6)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (7, N'Parkyeri-3', 7)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (8, N'Parkyeri-2', 8)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (9, N'Parkyeri-5', 9)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (10, N'Parkyeri-6', 10)
INSERT [dbo].[park_yeri] ([parkyeri_id], [Parkyeri], [arac_id]) VALUES (11, N'Parkyeri-7', 11)
SET IDENTITY_INSERT [dbo].[park_yeri] OFF
GO
ALTER TABLE [dbo].[arac_bilgileri]  WITH CHECK ADD  CONSTRAINT [FK_arac_bilgileri_kisi_bilgileri] FOREIGN KEY([kisi_id])
REFERENCES [dbo].[kisi_bilgileri] ([kisi_id])
GO
ALTER TABLE [dbo].[arac_bilgileri] CHECK CONSTRAINT [FK_arac_bilgileri_kisi_bilgileri]
GO
ALTER TABLE [dbo].[park_yeri]  WITH CHECK ADD  CONSTRAINT [FK_park_yeri_arac_bilgileri] FOREIGN KEY([arac_id])
REFERENCES [dbo].[arac_bilgileri] ([arac_id])
GO
ALTER TABLE [dbo].[park_yeri] CHECK CONSTRAINT [FK_park_yeri_arac_bilgileri]
GO
USE [master]
GO
ALTER DATABASE [asp_mvc_2] SET  READ_WRITE 
GO
