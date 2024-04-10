USE [master]
GO
/****** Object:  Database [login]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE DATABASE [login]
 
GO
ALTER DATABASE [login] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [login] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [login] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [login] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [login] SET ARITHABORT OFF 
GO
ALTER DATABASE [login] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [login] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [login] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [login] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [login] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [login] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [login] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [login] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [login] SET  DISABLE_BROKER 
GO
ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [login] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [login] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [login] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [login] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [login] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [login] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [login] SET RECOVERY FULL 
GO
ALTER DATABASE [login] SET  MULTI_USER 
GO
ALTER DATABASE [login] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [login] SET DB_CHAINING OFF 
GO
ALTER DATABASE [login] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [login] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [login] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [login] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'login', N'ON'
GO
ALTER DATABASE [login] SET QUERY_STORE = OFF
GO
USE [login]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
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
	[id_dv] [char](10) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/8/2024 12:40:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoQuanSo]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoQuanSo](
	[id_bcqs] [int] IDENTITY(1,1) NOT NULL,
	[id_dv] [char](10) NULL,
	[ngay] [date] NULL,
	[tong_qs] [int] NULL,
	[qs_vang] [int] NULL,
	[dao_ngu] [int] NULL,
	[di_vien] [int] NULL,
	[benh_xa] [int] NULL,
	[di_hoc] [int] NULL,
	[di_thuc_te] [int] NULL,
	[di_thuc_tap] [int] NULL,
	[di_tt] [int] NULL,
	[di_ctac] [int] NULL,
	[thai_san] [int] NULL,
	[ly_do_khac] [int] NULL,
	[chu_thich] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bcqs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[id_dv] [char](10) NOT NULL,
	[ten_dv] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhHinhDonVi]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhHinhDonVi](
	[id_thdv] [int] IDENTITY(1,1) NOT NULL,
	[ten_tb] [nvarchar](50) NULL,
	[nvvs] [nvarchar](max) NULL,
	[canh_gac] [nvarchar](max) NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[id_dv] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_thdv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [char](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[username] [char](10) NULL,
	[password] [char](10) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [char](10) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231212111442_init', N'8.0.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'805f2eb4-84b9-4837-adc3-b8d7570d5813', N'user', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8a2299bb-1b33-48e4-9d0a-2c231e1e047d', N'admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0694b0f1-a869-4247-8167-ff868e877091', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'11c6fbd5-33d3-401b-aacf-100bf0b30d83', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f4d42f8-9656-437f-9cf1-f52a53745916', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'21fa2b96-a7cd-4de7-8390-513d2a09b12c', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27b6e789-a48e-4e36-84cc-5f6a26304c94', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5365d50f-1bbd-4f61-b617-19221cb1fd5b', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6700d80b-3f5c-4a04-a8c2-165288da37dd', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7db2742c-412d-4c95-b7cc-13b8ae566fe5', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8022fe42-40e4-400f-8105-2860d857883c', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8592a045-a11f-41fa-ae10-ced97cafc59a', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'859e51f3-e81c-40d6-96b4-c232ed2f8df6', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e731800-2863-4a48-9c00-7f2756bf199a', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd40bd253-e4ee-4b85-9e7c-b5b9e169c679', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff1ef2e4-efc2-45bd-97e2-44f40484b105', N'805f2eb4-84b9-4837-adc3-b8d7570d5813')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f17b938-4d3b-4372-bac0-2af321f00abc', N'8a2299bb-1b33-48e4-9d0a-2c231e1e047d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'0694b0f1-a869-4247-8167-ff868e877091', N'Trần', N'Tăng', NULL, N'p5', N'P5', N'phongban5@gmail.com', N'PHONGBAN5@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAECHcKUlRZGJrDUsvXNmJvtnjanVrQSgeDG0/3OTfrXLgUP6TE7I7c7QqKw+VQ7lrLA==', N'IC2KQFLSBL3BCAED5CSCNBRCXPOTES5M', N'a617a438-6fb4-4fc1-8792-020130264fd8', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'11c6fbd5-33d3-401b-aacf-100bf0b30d83', N'Nguyễn', N'Hoàng', NULL, N'd4', N'D4', N'tieudoan4@gmail.com', N'TIEUDOAN4@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELHmKkfx1YdolGFTWZ4KxFNc3jCD4qkYpa4abKsCoZ5OaxaHoFQBE8UvI1X8aunOZQ==', N'VYJUFYHQIBEBD7AHFHAMQACRK4OECEHQ', N'47417a68-4e5a-4176-8838-d640ded9eff7', NULL, 1, 0, NULL, 1, 0, N'd4        ')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'1f4d42f8-9656-437f-9cf1-f52a53745916', N'Ngô', N'Long', NULL, N'v4', N'V4', N'vien4@gmail.com', N'VIEN4@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJ6ROo2RRuaC/C/C6Rl80m0WYiCemwSRKmGeR6J4+9Y20Fh3C6N0dWuL39jdReRZdQ==', N'XXZFAQH7HPEZ4E7S373DTXBDNUXRXLTX', N'4493a3c3-c0f6-4721-b105-869a1f5562a2', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'21fa2b96-a7cd-4de7-8390-513d2a09b12c', N'Vũ', N'Khoa', NULL, N'd5', N'D5', N'tieudoan5@gmail.com', N'TIEUDOAN5@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEK6IkZMW0vEL3yARX82ue2rDYYbE/mlf2/EDBtqpR5PhmnSyzCkD/RnXw2HkRXGufw==', N'B3EXNNUDAQNSHASU3DFUJNZB45GVY4E2', N'53e09577-55bc-4313-971e-773e577e2717', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'27b6e789-a48e-4e36-84cc-5f6a26304c94', N'Phạm', N'Đông', NULL, N'd3', N'D3', N'tieudoan3@gmail.com', N'TIEUDOAN3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAKDZe6Zm432lbCB88M2CkdYB3RtohpVGrMtVRK3Ko1aOv/gD5Qyd0CVM6sWxgW5gQ==', N'ETHPBVU3JVSCWSU3DAXCPK72FNGAUEBE', N'75f4b212-72a7-4be1-9b96-a61adb77fffb', NULL, 1, 0, NULL, 1, 0, N'd3        ')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'5365d50f-1bbd-4f61-b617-19221cb1fd5b', N'Chu', N'Mỳ', NULL, N'v1', N'V1', N'vien1@gmail.com', N'VIEN1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEEdwfAZNjTCI7mB1ZNNrzZp6KdemAuzZgLOmAZB6F2jcKwFwdnkEmC/ChdxVXHHHzQ==', N'HX2EG7L7LB3QZJOZOWJLYXAFVQKAF2YS', N'31546972-d2d6-4d92-8367-0e65e88f08ef', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'6700d80b-3f5c-4a04-a8c2-165288da37dd', N'Vũ', N'Mùi', NULL, N'd1', N'D1', N'tieudoan1@gmail.com', N'TIEUDOAN1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBb5vXJd9X0qcGc04u9eOhJgLOPp3HGL9t9hwQQOGS3emGDfCvJdxznJQLLSWh8Smw==', N'X7UZSJUVTWB6NV3FP5DLSNI6HVX23SQ7', N'fa31ec45-33cf-41ef-9767-49f8c6bc5353', NULL, 1, 0, NULL, 1, 0, N'd1        ')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'7db2742c-412d-4c95-b7cc-13b8ae566fe5', N'Nguyễn ', N'Lưu', NULL, N'p3', N'P3', N'phongban3@gmail.com', N'PHONGBAN3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEA9YkCNbMces7F5xuoXpwSMRAoWC3VFYuBHz8eTuTKdwxfzOWpkpK4ecYTGqzvXnDg==', N'QUGCXUQB4CUHWSUWWTVSGMZO3NSI46GL', N'99652cde-4ba8-401e-a079-a97121a6f610', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'8022fe42-40e4-400f-8105-2860d857883c', N'Nguyễn ', N'Công', NULL, N'p4', N'P4', N'phongban4@gmail.com', N'PHONGBAN4@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBcfVHckox4QjvCNOs5rKPqb7TOXnjND4UZG0NGzgJthAK7Q0ymNvmbA8QM4U0JGAg==', N'FQAXDMKM6DGLQ6RYU7K574F6HOBDUVYN', N'5c869f0d-1011-4f8f-bf06-3f91c45b4b47', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'8592a045-a11f-41fa-ae10-ced97cafc59a', N'Trần', N'Đăng', NULL, N'd2', N'D2', N'tieudoan2@gmail.com', N'TIEUDOAN2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHSP7+yKuVfQHt8Ns3HT0S9uE6YP6T58StK/JfXLACnZcZ3hDmxo0pBWsdm/Ep3QGg==', N'WNEPGYQTT5GJKDAEIUQGZ3HAXLILAYL6', N'c324e752-bc57-46df-bb2e-9f1d481076b7', NULL, 1, 0, NULL, 1, 0, N'd2        ')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'859e51f3-e81c-40d6-96b4-c232ed2f8df6', N'Trần', N'Thành', NULL, N'p1', N'P1', N'phongban1@gmail.com', N'PHONGBAN1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEB96KNtXVlFiJrjLSTbLeg2ox/2hDUf78VaKgcbPoQKxQmuBEc58p9r9QWRG6IGMyA==', N'Z4GPYZRAYA7VIE4XS5Q55GOKGM4LGLIF', N'096f6ef1-3f12-4970-841b-f06b6300706e', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'8f17b938-4d3b-4372-bac0-2af321f00abc', N'Vũ ', N'An', NULL, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELh/K0o3VEkwXFhP6xua1WacJPDHtkXwTk28AHex9U7Uw9ENzwVRS4ivRrjR8v7tDQ==', N'SUEOKZX2TDMXGNQHWS4RXSBF4ZI5WDTV', N'a44fb7e2-363e-49d1-9005-2bce1ac2f1bd', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'9e731800-2863-4a48-9c00-7f2756bf199a', N'Hoàng', N'Phúc', NULL, N'v3', N'V3', N'vien3@gmail.com', N'VIEN3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPM2EnBDxXr3vbdwxWI6stnitpjQ/10MGYIX1zZW4lmg05kd1bMNna2nX6MFGbFc8g==', N'DHUZBNAZRTHMBWWH6ONEXWMW4NGLDOC7', N'd2297a94-601c-41be-9739-b64b6bcde8a1', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'd40bd253-e4ee-4b85-9e7c-b5b9e169c679', N'Cao', N'Hà', NULL, N'p2', N'P2', N'phongban2@gmail.com', N'PHONGBAN2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEMsBRBNg8jnAtR4P4XhVVo9j901LTNfdTphwQu6ul6EJxIKx94973HhMXxWd57DjuQ==', N'LARZBDARJO7CXP4KKRQQI3FCYDBPAIRV', N'e2e2d20d-617c-4ec4-9cf9-d0af776cd474', NULL, 1, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [id_dv]) VALUES (N'ff1ef2e4-efc2-45bd-97e2-44f40484b105', N'Vũ', N'Quang', NULL, N'v2', N'V2', N'vien2@gmail.com', N'VIEN2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFSIV34YtDZQkSQZldv54kKX0AS3GkXVp3zE/Wj/aSpm+lx7j9tBAkFhCYDl3Sp3bQ==', N'U6KMPMF3LAINNMNTZGXTV6Q5XZMJXEAE', N'50c55427-1f95-45c7-8c50-affdcad76746', NULL, 1, 0, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[BaoCaoQuanSo] ON 

INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (1, N'd1        ', CAST(N'2024-03-27' AS Date), 82, 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (2, N'd2        ', CAST(N'2024-03-27' AS Date), 80, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (3, N'k1        ', CAST(N'2024-03-27' AS Date), 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (4, N'd3        ', CAST(N'2024-03-27' AS Date), 78, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (5, N'd4        ', CAST(N'2023-12-02' AS Date), 82, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (6, N'd5        ', CAST(N'2023-12-02' AS Date), 82, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaoCaoQuanSo] ([id_bcqs], [id_dv], [ngay], [tong_qs], [qs_vang], [dao_ngu], [di_vien], [benh_xa], [di_hoc], [di_thuc_te], [di_thuc_tap], [di_tt], [di_ctac], [thai_san], [ly_do_khac], [chu_thich]) VALUES (9, N'k10       ', CAST(N'2024-04-06' AS Date), 81, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, N'a')
SET IDENTITY_INSERT [dbo].[BaoCaoQuanSo] OFF
GO
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'd1        ', N'Tiểu đoàn 1')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'd2        ', N'Tiểu đoàn 2')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'd3        ', N'Tiểu đoàn 3')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'd4        ', N'Tiểu đoàn 4')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'd5        ', N'Tiểu đoàn 5')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'k1        ', N'Khoa Hóa - Lý kĩ thuật')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'k10       ', N'Khoa Công tác Đảng - Công tác Chính trị')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'k2        ', N'Khoa Ngoại ngữ')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'k3        ', N'Khoa Cơ khí')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'k4        ', N'Khoa Động lực')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'p1        ', N'Văn phòng')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'p2        ', N'Phòng Chính trị')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'p3        ', N'Phòng Đào tạo')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'p4        ', N'Phòng Hậu cần - Kĩ thuật')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'p5        ', N'Phòng Khoa học quân sự')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'v1        ', N'Viện Công nghệ mô phỏng')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'v2        ', N'Viện Kĩ thuật công trình đặc biệt')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'v3        ', N'Viện Tích hợp hệ thống')
INSERT [dbo].[DonVi] ([id_dv], [ten_dv]) VALUES (N'v4        ', N'Viện Công nghệ thông tin và truyền thông')
GO
SET IDENTITY_INSERT [dbo].[TinhHinhDonVi] ON 

INSERT [dbo].[TinhHinhDonVi] ([id_thdv], [ten_tb], [nvvs], [canh_gac], [ghi_chu], [id_dv]) VALUES (1, N'Nguyễn Văn A', N'Bảo đảm', N'Bảo đảm', NULL, N'd1        ')
INSERT [dbo].[TinhHinhDonVi] ([id_thdv], [ten_tb], [nvvs], [canh_gac], [ghi_chu], [id_dv]) VALUES (2, N'Nguyễn Văn B', N'Bảo đảm', N'Bảo đảm', NULL, N'd2        ')
SET IDENTITY_INSERT [dbo].[TinhHinhDonVi] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/8/2024 12:40:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaoCaoQuanSo] ADD  DEFAULT (getdate()) FOR [ngay]
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
ALTER TABLE [dbo].[BaoCaoQuanSo]  WITH CHECK ADD FOREIGN KEY([id_dv])
REFERENCES [dbo].[DonVi] ([id_dv])
GO
ALTER TABLE [dbo].[BaoCaoQuanSo]  WITH CHECK ADD FOREIGN KEY([id_dv])
REFERENCES [dbo].[DonVi] ([id_dv])
GO
ALTER TABLE [dbo].[TinhHinhDonVi]  WITH CHECK ADD FOREIGN KEY([id_dv])
REFERENCES [dbo].[DonVi] ([id_dv])
GO
ALTER TABLE [dbo].[TinhHinhDonVi]  WITH CHECK ADD FOREIGN KEY([id_dv])
REFERENCES [dbo].[DonVi] ([id_dv])
GO
/****** Object:  StoredProcedure [dbo].[AddQuanSo]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[AddQuanSo]
@id_dv char(10), @ngay date, @tong_qs int, @qs_vang int, @dao_ngu int, @di_vien int, @benh_xa int, @di_hoc int, @di_thuc_te int, @di_thuc_tap int, @di_tt int,
@di_ctac int, @thai_san int, @ly_do_khac int, @chu_thich nvarchar(100) 
as
begin
INSERT INTO [dbo].[BaoCaoQuanSo]
           ([id_dv]
           ,[ngay]
           ,[tong_qs]
           ,[qs_vang]
           ,[dao_ngu]
           ,[di_vien]
           ,[benh_xa]
           ,[di_hoc]
           ,[di_thuc_te]
           ,[di_thuc_tap]
           ,[di_tt]
           ,[di_ctac]
           ,[thai_san]
           ,[ly_do_khac]
           ,[chu_thich])
     VALUES
          (@id_dv, @ngay, @tong_qs, @qs_vang, @dao_ngu, @di_vien, @benh_xa, @di_hoc, @di_thuc_te, @di_thuc_tap, @di_tt, @di_ctac, @thai_san, @ly_do_khac, @chu_thich)
end
GO
/****** Object:  StoredProcedure [dbo].[deleteBaoCaoQuanSo]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleteBaoCaoQuanSo]
@id_dv char(10)
as
begin
DELETE FROM [dbo].[BaoCaoQuanSo]
      WHERE id_dv = @id_dv
end
GO
/****** Object:  StoredProcedure [dbo].[deleteDonVi]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleteDonVi]
@id_dv char(10)
as
begin
DELETE FROM [dbo].[DonVi]
      WHERE id_dv = @id_dv
end
GO
/****** Object:  StoredProcedure [dbo].[deleteTHDV]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[deleteTHDV]
@id_dv char(10)
as
begin
DELETE FROM [dbo].[TinhHinhDonVi]
      WHERE id_dv = @id_dv
end
GO
/****** Object:  StoredProcedure [dbo].[getBaoCaoQuanSo]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getBaoCaoQuanSo]
as
begin
select * from BaoCaoQuanSo
order by id_dv
end 
GO
/****** Object:  StoredProcedure [dbo].[getBaoCaoQuanSoById]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getBaoCaoQuanSoById]
@id_dv char(10)
as
begin
select * from BaoCaoQuanSo
where id_dv = @id_dv

end 
GO
/****** Object:  StoredProcedure [dbo].[getDonVi]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getDonVi]
as
begin
select * from DonVi
end
GO
/****** Object:  StoredProcedure [dbo].[getTHDV]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getTHDV]
as
begin
select * from TinhHinhDonVi
end
GO
/****** Object:  StoredProcedure [dbo].[insertTinhHinhDonVi]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertTinhHinhDonVi]
@ten_tb nvarchar(50),
@nvvs nvarchar(max),
@canh_gac nvarchar(max),
@ghi_chu nvarchar(max),
@id_dv char(10)
as
begin
INSERT INTO [dbo].[TinhHinhDonVi]
           ([ten_tb]
           ,[nvvs]
           ,[canh_gac]
           ,[ghi_chu]
           ,[id_dv])
     VALUES
           (@ten_tb,@nvvs,@canh_gac,@ghi_chu,@id_dv)
end
GO
/****** Object:  StoredProcedure [dbo].[updateBaoCaoQuanSo]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[updateBaoCaoQuanSo]
@id_dv char(10), @ngay date, @tong_qs int, @qs_vang int, @dao_ngu int, @di_vien int, @benh_xa int, @di_hoc int, @di_thuc_te int, @di_thuc_tap int, @di_tt int,
@di_ctac int, @thai_san int, @ly_do_khac int, @chu_thich nvarchar(100), @id_dv_old char(10) 
as
begin
UPDATE [dbo].[BaoCaoQuanSo]
	set id_dv = @id_dv,
		ngay = @ngay,
		tong_qs = @tong_qs,
		qs_vang = @qs_vang,
		dao_ngu = @dao_ngu,
		di_vien = @di_vien,
		benh_xa = @benh_xa,
		di_hoc = @di_hoc,
		di_thuc_te = @di_thuc_te,
		di_thuc_tap = @di_thuc_tap,
		di_tt = @di_tt,
		di_ctac = @di_ctac,
		thai_san = @thai_san,
		ly_do_khac = @ly_do_khac,
		chu_thich = @chu_thich
	
 WHERE id_dv = @id_dv_old
end
GO
/****** Object:  StoredProcedure [dbo].[updateTHDV]    Script Date: 4/8/2024 12:40:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[updateTHDV]
@id_dv_old char(10), @ten_tb nvarchar(50), @nvvs nvarchar(max), @canh_gac nvarchar(max), @ghi_chu nvarchar(max), @id_dv char(10)
as
begin
UPDATE [dbo].[TinhHinhDonVi]
   SET ten_tb = @ten_tb,
		nvvs = @nvvs,
		canh_gac = @canh_gac,
		ghi_chu = @ghi_chu,
		id_dv = @id_dv
 WHERE id_dv = @id_dv_old
end
GO
USE [master]
GO
ALTER DATABASE [login] SET  READ_WRITE 
GO
