USE [master]
GO
/****** Object:  Database [dbSatyamSir]    Script Date: 06/06/2020 12:26:17 ******/
CREATE DATABASE [dbSatyamSir] ON  PRIMARY 
( NAME = N'dbSatyamSir', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.UMARA\MSSQL\DATA\dbSatyamSir.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbSatyamSir_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.UMARA\MSSQL\DATA\dbSatyamSir_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbSatyamSir] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbSatyamSir].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbSatyamSir] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dbSatyamSir] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dbSatyamSir] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dbSatyamSir] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dbSatyamSir] SET ARITHABORT OFF
GO
ALTER DATABASE [dbSatyamSir] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [dbSatyamSir] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dbSatyamSir] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dbSatyamSir] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dbSatyamSir] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dbSatyamSir] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dbSatyamSir] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dbSatyamSir] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dbSatyamSir] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dbSatyamSir] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dbSatyamSir] SET  ENABLE_BROKER
GO
ALTER DATABASE [dbSatyamSir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dbSatyamSir] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dbSatyamSir] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [dbSatyamSir] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dbSatyamSir] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dbSatyamSir] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dbSatyamSir] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dbSatyamSir] SET  READ_WRITE
GO
ALTER DATABASE [dbSatyamSir] SET RECOVERY FULL
GO
ALTER DATABASE [dbSatyamSir] SET  MULTI_USER
GO
ALTER DATABASE [dbSatyamSir] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [dbSatyamSir] SET DB_CHAINING OFF
GO
USE [dbSatyamSir]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 06/06/2020 12:26:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Pass_word] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON
INSERT [dbo].[tbl_user] ([id], [UserName], [Pass_word]) VALUES (1, N'Satyam', N'123')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 06/06/2020 12:26:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[cust_id] [int] IDENTITY(1,1) NOT NULL,
	[cust_name] [nvarchar](100) NULL,
	[cust_age] [int] NULL,
	[cust_email] [nvarchar](100) NULL,
	[cust_address] [nvarchar](500) NULL,
	[cust_pincode] [nvarchar](10) NULL,
	[cust_contact] [nvarchar](20) NULL,
	[createdby] [int] NULL,
	[createddate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_customer] ON
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (1, N'nanhe', 34, N'nanhesiddi58@gmail.com', N'Rampur Hiraman Deoria UttarPardesh', N'274405', N'8447813817', 1, CAST(0xABD10051 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (3, N'dhanesh', 32, N'dhanesh@gmail.com', N'lllllll', N'170025', N'8888888888', NULL, NULL)
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (5, N'rakab', 23, N'nnnn', N'vv', N'svsvs', N'sgfdsgsfgf', NULL, NULL)
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (6, N'suraj', 23, N'suraj@gmail.com', N'dfdf', N'7894589', N'122387965', NULL, NULL)
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (7, N'suraj', 23, N'suraj@gmail.com', N'dfdf', N'7894589', N'122387965', NULL, NULL)
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (8, N'suraj', 23, N'suraj@gmail.com', N'dfdf', N'7894589', N'122387965', NULL, NULL)
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (9, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (10, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (11, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (12, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (13, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (14, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (15, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (16, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (17, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (18, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (19, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (20, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (21, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (22, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (23, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (24, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (25, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (26, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (27, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (28, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (29, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (30, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (31, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (32, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (33, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (34, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (35, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (36, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (37, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (38, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (39, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (40, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (41, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (42, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (43, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (44, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (45, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (46, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (47, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (48, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (49, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (50, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (51, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (52, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (53, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (54, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (55, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (56, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (57, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (58, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (59, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (60, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (61, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (62, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (63, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (64, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (65, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (66, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (67, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (68, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (69, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (70, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (71, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (72, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (73, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (74, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (75, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (76, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (77, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (78, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (79, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (80, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (81, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (82, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (83, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (84, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (85, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (86, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (87, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (88, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (89, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (90, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (91, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (92, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (93, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (94, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (95, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (96, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (97, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (98, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (99, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (100, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (101, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (102, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (103, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (104, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (105, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (106, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (107, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (108, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (109, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (110, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (111, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (112, N'satyamsir', 36, N'satyam@fmail.com', N'jaunpur', N'5869473', N'123432144', 1, CAST(0xABD202C8 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (113, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (114, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (115, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (116, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (117, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (118, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (119, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (120, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (121, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (122, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (123, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (124, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (125, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (126, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (127, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (128, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (129, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (130, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (131, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (132, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (133, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (134, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (135, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (136, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (137, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (138, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (139, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (140, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (141, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (142, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (143, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (144, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (145, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (146, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (147, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (148, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (149, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (150, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (151, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (152, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (153, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (154, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (155, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (156, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (157, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (158, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (159, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (160, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (161, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (162, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (163, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (164, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (165, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (166, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (167, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (168, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (169, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (170, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (171, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (172, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (173, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (174, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (175, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (176, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (177, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (178, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (179, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (180, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (181, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (182, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (183, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (184, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (185, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (186, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (187, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (188, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (189, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (190, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (191, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (192, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (193, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (194, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (195, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (196, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (197, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (198, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (199, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (200, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (201, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (202, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (203, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (204, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
INSERT [dbo].[tbl_customer] ([cust_id], [cust_name], [cust_age], [cust_email], [cust_address], [cust_pincode], [cust_contact], [createdby], [createddate]) VALUES (205, N'mukesh', 36, N'mukesh@fmail.com', N'bhagalpur', N'854758', N'9856321478', 1, CAST(0xABD202C9 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
/****** Object:  StoredProcedure [dbo].[spGetCustomer]    Script Date: 06/06/2020 12:26:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGetCustomer]
(
@PageNumber int,
@PageSize int
)
as 
Begin
Declare @StartRow int
Declare @EndRow int
Set @StartRow = ((@PageNumber-1) * @PageSize) +1
Set @EndRow = @PageNumber * @PageSize;
With Result as
(
Select *, ROW_NUMBER() over(Order By cust_id ASC) RowNumber from tbl_customer
)
Select cust_id,cust_name,cust_age,cust_email,cust_address,cust_pincode,cust_contact,RowNumber from Result
Where RowNumber Between @StartRow AND @EndRow;
End
GO
/****** Object:  Default [DF__tbl_custo__creat__08EA5793]    Script Date: 06/06/2020 12:26:19 ******/
ALTER TABLE [dbo].[tbl_customer] ADD  DEFAULT (getdate()) FOR [createddate]
GO
