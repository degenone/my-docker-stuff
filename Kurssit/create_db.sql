USE [master]
GO
/****** Object:  Database [KurssiDB]    Script Date: 3.6.2021 0.42.31 ******/
CREATE DATABASE [KurssiDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KurssiDB', FILENAME = N'/var/opt/mssql/data/KurssiDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KurssiDB_log', FILENAME = N'/var/opt/mssql/data/KurssiDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KurssiDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KurssiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KurssiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KurssiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KurssiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KurssiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KurssiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [KurssiDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KurssiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KurssiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KurssiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KurssiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KurssiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KurssiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KurssiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KurssiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KurssiDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KurssiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KurssiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KurssiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KurssiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KurssiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KurssiDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KurssiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KurssiDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KurssiDB] SET  MULTI_USER 
GO
ALTER DATABASE [KurssiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KurssiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KurssiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KurssiDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KurssiDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KurssiDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KurssiDB', N'ON'
GO
ALTER DATABASE [KurssiDB] SET QUERY_STORE = OFF
GO
USE [KurssiDB]
GO
/****** Object:  Table [dbo].[Kurssit]    Script Date: 3.6.2021 0.42.32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurssit](
	[KurssiID] [int] IDENTITY(1,1) NOT NULL,
	[Nimi] [nvarchar](50) NOT NULL,
	[Laajuus] [int] NULL,
	[OpettajaID] [int] NULL,
 CONSTRAINT [PK_Kurssit] PRIMARY KEY CLUSTERED 
(
	[KurssiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opettajat]    Script Date: 3.6.2021 0.42.32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opettajat](
	[OpettajaID] [int] IDENTITY(1000,1) NOT NULL,
	[Etunimi] [nvarchar](15) NOT NULL,
	[Sukunimi] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Puhelin] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OpettajaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kurssit] ON 
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (2, N'Ohjelmoinnin perusteet C#:lla', 2, 1000)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (3, N'Python perusteet', 3, 1000)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (4, N'Docker ja ohjelmistojen jakelu', 3, 2001)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (5, N'Django sovellusten kehittäminen', 7, 2002)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (6, N'SQL perusteet', 2, 1000)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (7, N'Tietokantasovellusten toteuttaminen', 5, 1000)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (8, N'Mobiiliappsien toteuttaminen visual studiolla', 7, 2001)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (9, N'JavaScript peruskurssi', 4, 2002)
GO
INSERT [dbo].[Kurssit] ([KurssiID], [Nimi], [Laajuus], [OpettajaID]) VALUES (3013, N'Testaus', 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Kurssit] OFF
GO
SET IDENTITY_INSERT [dbo].[Opettajat] ON 
GO
INSERT [dbo].[Opettajat] ([OpettajaID], [Etunimi], [Sukunimi], [Email], [Puhelin]) VALUES (1000, N'Jussi', N'Jokunen', N'jussi.jokunen@careeria.fi', N'040 842 1239')
GO
INSERT [dbo].[Opettajat] ([OpettajaID], [Etunimi], [Sukunimi], [Email], [Puhelin]) VALUES (1001, N'Maija', N'Mallinen', N'maija.mallinen@careeria.fi', N'040 123 1632')
GO
INSERT [dbo].[Opettajat] ([OpettajaID], [Etunimi], [Sukunimi], [Email], [Puhelin]) VALUES (2001, N'Tero', N'Kilpeläinen', N'tero.kilpelainen@student.careeria.fi', N'040 123 1234')
GO
INSERT [dbo].[Opettajat] ([OpettajaID], [Etunimi], [Sukunimi], [Email], [Puhelin]) VALUES (2002, N'Erkki', N'Esimerkki', N'erkki@esim.fi', N'09 349 1234')
GO
SET IDENTITY_INSERT [dbo].[Opettajat] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Opettaja__A9D10534E357C54D]    Script Date: 3.6.2021 0.42.32 ******/
ALTER TABLE [dbo].[Opettajat] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Opettaja__BF886337E6967AC5]    Script Date: 3.6.2021 0.42.32 ******/
ALTER TABLE [dbo].[Opettajat] ADD UNIQUE NONCLUSTERED 
(
	[Puhelin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kurssit]  WITH CHECK ADD FOREIGN KEY([OpettajaID])
REFERENCES [dbo].[Opettajat] ([OpettajaID])
GO
USE [master]
GO
ALTER DATABASE [KurssiDB] SET  READ_WRITE 
GO
