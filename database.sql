USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 11/6/2017 2:33:59 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/6/2017 2:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [varchar](50) NOT NULL,
	[AccessoriesColor] [varchar](50) NOT NULL,
	[AccessoriesSeason] [varchar](50) NULL,
	[AccessoriesOccassion] [varchar](50) NULL,
	[AccessoriesPhoto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/6/2017 2:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomsName] [varchar](50) NOT NULL,
	[BottomsColor] [varchar](50) NOT NULL,
	[BottomsSeason] [varchar](50) NULL,
	[BottomsOccassion] [varchar](50) NULL,
	[BottomsPhoto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/6/2017 2:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [varchar](50) NOT NULL,
	[ShoesColor] [varchar](50) NOT NULL,
	[ShoesSeason] [varchar](50) NULL,
	[ShoesOccassion] [varchar](50) NULL,
	[ShoesPhoto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/6/2017 2:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsName] [varchar](50) NOT NULL,
	[TopsColor] [varchar](50) NOT NULL,
	[TopsSeason] [varchar](50) NULL,
	[TopsOccassion] [varchar](50) NULL,
	[TopsPhoto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccassion], [AccessoriesPhoto]) VALUES (1, N'Top Hat', N'Black', N'Any', N'Formal events', N'~/Content/top_hat.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccassion], [AccessoriesPhoto]) VALUES (2, N'Pocket Watch', N'Gold', N'Any', N'Formal events', N'~/Content/pocket-watch-979240_960_720.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccassion], [AccessoriesPhoto]) VALUES (3, N'Bow Tie', N'Blue', N'Any', N'Formal events', N'~/Content/bow_tie.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsColor], [BottomsSeason], [BottomsOccassion], [BottomsPhoto]) VALUES (1, N'Work Pants', N'Beige', N'Fall', N'Work', N'~/Content/work_pants.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsColor], [BottomsSeason], [BottomsOccassion], [BottomsPhoto]) VALUES (2, N'Ripped Jeans', N'Denim', N'Spring', N'Casual', N'~/Content/ripped_jeans.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsColor], [BottomsSeason], [BottomsOccassion], [BottomsPhoto]) VALUES (3, N'Festive Pants', N'Green and White', N'Winter', N'Parties', N'~/Content/festive_pants.jpg')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesColor], [ShoesSeason], [ShoesOccassion], [ShoesPhoto]) VALUES (1, N'Work Shoes', N'Black', N'Any', N'Work', N'~/Content/work_shoes.jpg')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesColor], [ShoesSeason], [ShoesOccassion], [ShoesPhoto]) VALUES (2, N'Hiking Boots', N'Orange and Black', N'Fall/Winter', N'Recreation', N'~/Content/hiking_boots.jpg')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesColor], [ShoesSeason], [ShoesOccassion], [ShoesPhoto]) VALUES (3, N'Sneakers', N'Black', N'Summer', N'Casual', N'~/Content/sneakers.jpg')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsColor], [TopsSeason], [TopsOccassion], [TopsPhoto]) VALUES (1, N'Sleeveless Shirt', N'Yellow', N'Summer', N'Casual', N'~/Content/Tagless_yellow_shirt.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsColor], [TopsSeason], [TopsOccassion], [TopsPhoto]) VALUES (2, N'White Shirt', N'White', N'Summer', N'Any', N'~/Content/white_shirt.png')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsColor], [TopsSeason], [TopsOccassion], [TopsPhoto]) VALUES (3, N'Red Devils', N'Red and White', N'Fall', N'Recreation', N'~/Content/red_devils_shirt.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
