USE [master]
GO
/****** Object:  Database [FPTBook]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE DATABASE [FPTBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPTBook', FILENAME = N'D:\SQL2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\FPTBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FPTBook_log', FILENAME = N'D:\SQL2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\FPTBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FPTBook] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FPTBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FPTBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FPTBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FPTBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FPTBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FPTBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [FPTBook] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FPTBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FPTBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FPTBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FPTBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FPTBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FPTBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FPTBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FPTBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FPTBook] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FPTBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FPTBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FPTBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FPTBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FPTBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FPTBook] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FPTBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FPTBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FPTBook] SET  MULTI_USER 
GO
ALTER DATABASE [FPTBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FPTBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FPTBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FPTBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FPTBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FPTBook] SET QUERY_STORE = OFF
GO
USE [FPTBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookCategories]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BookCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/1/2023 10:28:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[CartItem] [nvarchar](max) NULL,
	[Total] [float] NULL,
	[Phone] [nvarchar](max) NULL,
	[Orderdate] [datetime2](7) NULL,
	[Fullname] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223153519_Appppp', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223170126_Appppps', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230224051524_init', N'7.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'User', N'User', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Admin', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'Staff', N'Staff', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df4b8e15-ad49-436e-a370-2cfbdf7af70b', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e87545ea-3082-4443-a80c-3f03cd275d20', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e898d956-cc51-4403-ab46-854c1444dc0c', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df4b8e15-ad49-436e-a370-2cfbdf7af70b', N'User26102002', N'User@gmail.com', N'USER@GMAIL.COM', N'User@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPtkb8tS2FTFdp9nTtTAfVgW6GGx4Ip727zYtMWGgxikNJhV0oK8CBYT+C5A2kKGgQ==', N'BRSIYCWXE57AINMBY55HUWGA7GPKVYCB', N'51f6430f-3fc5-47bc-ac41-e5cc2199fd52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e87545ea-3082-4443-a80c-3f03cd275d20', N'Admin26102002', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKfaVgJRFpvSlyvvJnGBnY3Bn78pOfgQ5OgAhhe8jzfH5oEcE07W8zFcyx+Cq0vxsw==', N'34JPHZ4IJWROEPPNTZSO4PM3QUEVYM4X', N'6bdd691f-d9a1-4335-879c-87bf4f1a8e52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e898d956-cc51-4403-ab46-854c1444dc0c', N'Staff26102002', N'Staff@gmail.com', N'STAFF@GMAIL.COM', N'Staff@gmail.com', N'STAFF@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPR8g7trrTQAhz2Qk2X8LLz4PawQSsOe2I5NVfReXUemtKZqqBUoiGGHz/w60yvgDw==', N'VETADF2TFCEYUMTRRUBYGXMV4Q3TRNKW', N'edae955c-dcd4-46f3-b6e6-7bdb4788b3da', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BookCategories] ON 

INSERT [dbo].[BookCategories] ([CategoryId], [Name], [Description]) VALUES (2, N'Truyện Tranh', N'Truyện Tranh Nhật Bản')
INSERT [dbo].[BookCategories] ([CategoryId], [Name], [Description]) VALUES (3, N'Sách Hướng Dẫn', N'Nấu Ăn')
INSERT [dbo].[BookCategories] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách giáo khoa', N'Lớp 8')
INSERT [dbo].[BookCategories] ([CategoryId], [Name], [Description]) VALUES (5, N'Sách ôn luyện', N'Đại Học')
SET IDENTITY_INSERT [dbo].[BookCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (4, N'Truyện Doraemon tập 2', CAST(N'2023-02-27T16:27:00.0000000' AS DateTime2), 120, N'https://i0.wp.com/salt.tikicdn.com/cache/w1200/ts/product/34/09/48/fe2f092386d31a2b0a0aa999edabae34.jpg', 2)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (5, N'Truyện Conan', CAST(N'2023-02-27T16:33:00.0000000' AS DateTime2), 100, N'https://tuoitho.mobi/upload/doc-truyen/conan-truy-lung-to-chuc-ao-den/anh-dai-dien.jpg', 2)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (6, N'Sách nấu ăn', CAST(N'2023-02-27T19:43:00.0000000' AS DateTime2), 80, N'https://truongcaodangnauan.edu.vn/test_disk/photos/shares/S%C3%A1ch%20d%E1%BA%A1y%20n%E1%BA%A5u%20%C4%83n/sach-day-nau-an-chay-500.jpg', 3)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (7, N'Sách Toán 8', CAST(N'2023-02-27T19:44:00.0000000' AS DateTime2), 25, N'https://hieusach24h.com/wp-content/uploads/2021/09/Toan-8-Tap-1.jpg', 4)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (8, N'Món ngon mỗi ngày', CAST(N'2023-02-27T19:45:00.0000000' AS DateTime2), 150, N'https://salt.tikicdn.com/cache/w1200/media/catalog/product/i/m/img655.u547.d20160913.t134516.161562.jpg', 3)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (9, N'Truyện Doraemon (Ngoại truyện)', CAST(N'2023-02-27T19:48:00.0000000' AS DateTime2), 50, N'https://lh3.googleusercontent.com/-BaipTgwnGJY/XaaMCjVaUpI/AAAAAAAA7hw/JETuNBvitgU11Mlg6PwozFNJ7N-AYMdbwCNcBGAsYHQ/w1300/003.jpg', 2)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (10, N'Ôn thi trắc nghiệm', CAST(N'2023-02-27T19:48:00.0000000' AS DateTime2), 20, N'https://shopngoaingu.com/wp-content/uploads/H%C6%B0%E1%BB%9Bng-d%E1%BA%ABn-%C3%B4n-thi-tr%E1%BA%AFc-nghi%E1%BB%87m-m%C3%B4n-to%C3%A1n-v%C3%A0o-l%E1%BB%9Bp-10-THPT-chuy%C3%AAn-ngo%E1%BA%A1i-ng%E1%BB%AF-Ts.-Ph%E1%BA%A1m-V%C4%83n-Th%E1%BA%A1o.jpg', 5)
INSERT [dbo].[Books] ([Id], [Title], [ReleaseDate], [Price], [Image], [CategoryId]) VALUES (11, N'Truyện Conan tập 99', CAST(N'2023-03-13T09:35:00.0000000' AS DateTime2), 120, N'https://cf.shopee.vn/file/510df9c4781fec3532c03c59a355eaf0', 2)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Email], [CartItem], [Total], [Phone], [Orderdate], [Fullname]) VALUES (18, N'User@gmail.com', N' 
Book: Truyện Doraemon tập 2 - Quantity: 1', 120, NULL, CAST(N'2023-03-01T09:50:04.3485657' AS DateTime2), N'User26102002')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_CategoryId]    Script Date: 3/1/2023 10:28:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Books_CategoryId] ON [dbo].[Books]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_BookCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[BookCategories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_BookCategories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [FPTBook] SET  READ_WRITE 
GO
