USE [master]
GO
/****** Object:  Database [XPOS336]    Script Date: 11/12/2023 14:21:54 ******/
CREATE DATABASE [XPOS336]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XPOS336', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\XPOS336.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'XPOS336_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\XPOS336_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [XPOS336] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XPOS336].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XPOS336] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [XPOS336] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [XPOS336] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [XPOS336] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [XPOS336] SET ARITHABORT OFF 
GO
ALTER DATABASE [XPOS336] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [XPOS336] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [XPOS336] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [XPOS336] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [XPOS336] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [XPOS336] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [XPOS336] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [XPOS336] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [XPOS336] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [XPOS336] SET  ENABLE_BROKER 
GO
ALTER DATABASE [XPOS336] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [XPOS336] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [XPOS336] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [XPOS336] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [XPOS336] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [XPOS336] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [XPOS336] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [XPOS336] SET RECOVERY FULL 
GO
ALTER DATABASE [XPOS336] SET  MULTI_USER 
GO
ALTER DATABASE [XPOS336] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [XPOS336] SET DB_CHAINING OFF 
GO
ALTER DATABASE [XPOS336] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [XPOS336] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [XPOS336] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [XPOS336] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'XPOS336', N'ON'
GO
ALTER DATABASE [XPOS336] SET QUERY_STORE = OFF
GO
USE [XPOS336]
GO
/****** Object:  Table [dbo].[Tbl_M_Category]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](100) NOT NULL,
	[description] [varchar](max) NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Customer]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[phone] [varchar](15) NULL,
	[role_id] [int] NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Product]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[price] [decimal](18, 0) NULL,
	[stock] [int] NULL,
	[varian_id] [int] NOT NULL,
	[image] [varchar](max) NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NULL,
	[create_date] [datetime] NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_M_Variant]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_M_Variant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_T_Order_Detail]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_T_Order_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_header_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_T_Order_Header]    Script Date: 11/12/2023 14:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_T_Order_Header](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trx_code] [varchar](100) NOT NULL,
	[customer_id] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[total_qty] [int] NOT NULL,
	[is_checkout] [bit] NOT NULL,
	[is_deleted] [bit] NULL,
	[create_by] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[update_by] [int] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_M_Category] ADD  CONSTRAINT [DF_Tbl_M_Categories_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_M_Category] ADD  CONSTRAINT [DF_Tbl_M_Categories_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_M_Customer] ADD  CONSTRAINT [DF_Tbl_M_Customer_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_M_Customer] ADD  CONSTRAINT [DF_Tbl_M_Customer_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_M_Product] ADD  CONSTRAINT [DF_Tbl_M_Product_price]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Tbl_M_Product] ADD  CONSTRAINT [DF_Tbl_M_Product_stock]  DEFAULT ((0)) FOR [stock]
GO
ALTER TABLE [dbo].[Tbl_M_Product] ADD  CONSTRAINT [DF_Tbl_M_Product_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_M_Product] ADD  CONSTRAINT [DF_Tbl_M_Product_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_M_Variant] ADD  CONSTRAINT [DF_Tbl_M_Variant_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_M_Variant] ADD  CONSTRAINT [DF_Tbl_M_Variant_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Detail] ADD  CONSTRAINT [DF_Tbl_T_Order_Detail_qty]  DEFAULT ((0)) FOR [qty]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Detail] ADD  CONSTRAINT [DF_Tbl_T_Order_Detail_price]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Detail] ADD  CONSTRAINT [DF_Tbl_T_Order_Detail_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Detail] ADD  CONSTRAINT [DF_Tbl_T_Order_Detail_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Header] ADD  CONSTRAINT [DF_Tbl_T_Order_Header_amount]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Header] ADD  CONSTRAINT [DF_Tbl_T_Order_Header_total_qty]  DEFAULT ((0)) FOR [total_qty]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Header] ADD  CONSTRAINT [DF_Tbl_T_Order_Header_is_checkout]  DEFAULT ((0)) FOR [is_checkout]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Header] ADD  CONSTRAINT [DF_Tbl_T_Order_Header_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[Tbl_T_Order_Header] ADD  CONSTRAINT [DF_Tbl_T_Order_Header_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Tbl_M_Variant]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_M_Variant_Tbl_M_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Tbl_M_Category] ([id])
GO
ALTER TABLE [dbo].[Tbl_M_Variant] CHECK CONSTRAINT [FK_Tbl_M_Variant_Tbl_M_Categories]
GO
USE [master]
GO
ALTER DATABASE [XPOS336] SET  READ_WRITE 
GO
