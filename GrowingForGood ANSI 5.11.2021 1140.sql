USE [master]
GO
/****** Object:  Database [GrowingForGood]    Script Date: 5/11/2021 11:40:52 AM ******/
CREATE DATABASE [GrowingForGood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GrowingForGood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GrowingForGood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GrowingForGood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GrowingForGood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GrowingForGood] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GrowingForGood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GrowingForGood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GrowingForGood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GrowingForGood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GrowingForGood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GrowingForGood] SET ARITHABORT OFF 
GO
ALTER DATABASE [GrowingForGood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GrowingForGood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GrowingForGood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GrowingForGood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GrowingForGood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GrowingForGood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GrowingForGood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GrowingForGood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GrowingForGood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GrowingForGood] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GrowingForGood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GrowingForGood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GrowingForGood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GrowingForGood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GrowingForGood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GrowingForGood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GrowingForGood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GrowingForGood] SET RECOVERY FULL 
GO
ALTER DATABASE [GrowingForGood] SET  MULTI_USER 
GO
ALTER DATABASE [GrowingForGood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GrowingForGood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GrowingForGood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GrowingForGood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GrowingForGood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GrowingForGood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GrowingForGood', N'ON'
GO
ALTER DATABASE [GrowingForGood] SET QUERY_STORE = OFF
GO
USE [GrowingForGood]
GO
/****** Object:  Table [dbo].[Crop]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crop](
	[CropID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[HarvestSeason] [char](3) NOT NULL,
	[HardinessRating] [int] NOT NULL,
 CONSTRAINT [PK_Crop] PRIMARY KEY CLUSTERED 
(
	[CropID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CropWaste]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CropWaste](
	[CropWasteID] [int] NOT NULL,
	[CropID] [int] NOT NULL,
	[WasteID] [int] NOT NULL,
	[Tonnage] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_CropWaste] PRIMARY KEY CLUSTERED 
(
	[CropWasteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisposalLocation]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisposalLocation](
	[DisposalLocationID] [int] NOT NULL,
	[BuildingNumber] [int] NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [char](2) NOT NULL,
 CONSTRAINT [PK_DisposalLocation] PRIMARY KEY CLUSTERED 
(
	[DisposalLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[FirstDay] [datetime] NOT NULL,
	[LastDay] [datetime] NULL,
	[SupervisorRole] [binary](1) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Classification] [varchar](50) NOT NULL,
	[PlacedInServiceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentUsage]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentUsage](
	[EquipmentUsageID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[UsageID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_EquipmentUsageID] PRIMARY KEY CLUSTERED 
(
	[EquipmentUsageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plot]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plot](
	[PlotID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[SupervisorID] [int] NOT NULL,
	[CropID] [int] NULL,
	[Size] [int] NOT NULL,
	[Location] [char](10) NOT NULL,
 CONSTRAINT [PK_Plot] PRIMARY KEY CLUSTERED 
(
	[PlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlotEquipment]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlotEquipment](
	[PlotEquipmentID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[PlotID] [int] NOT NULL,
 CONSTRAINT [PK_PlotEquipment] PRIMARY KEY CLUSTERED 
(
	[PlotEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupervisorDetail]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupervisorDetail](
	[SupervisorID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[FirstDay] [datetime] NOT NULL,
	[LastDay] [datetime] NULL,
 CONSTRAINT [PK_SupervisorDetail] PRIMARY KEY CLUSTERED 
(
	[SupervisorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usage]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usage](
	[UsageID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[SeverityRating] [varchar](10) NOT NULL,
 CONSTRAINT [PK_UsageID] PRIMARY KEY CLUSTERED 
(
	[UsageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BuildingNumber] [int] NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [char](2) NOT NULL,
	[ZipCode] [int] NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Waste]    Script Date: 5/11/2021 11:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Waste](
	[WasteID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SeverityRating] [int] NOT NULL,
	[DisposalLocationID] [int] NOT NULL,
	[Cost] [int] NOT NULL,
 CONSTRAINT [PK_Waste] PRIMARY KEY CLUSTERED 
(
	[WasteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CropWaste]  WITH CHECK ADD  CONSTRAINT [FK_CropID] FOREIGN KEY([CropID])
REFERENCES [dbo].[Crop] ([CropID])
GO
ALTER TABLE [dbo].[CropWaste] CHECK CONSTRAINT [FK_CropID]
GO
ALTER TABLE [dbo].[CropWaste]  WITH CHECK ADD  CONSTRAINT [FK_WasteID] FOREIGN KEY([WasteID])
REFERENCES [dbo].[Waste] ([WasteID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CropWaste] CHECK CONSTRAINT [FK_WasteID]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Vendor_VendorID] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Vendor_VendorID]
GO
ALTER TABLE [dbo].[EquipmentUsage]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentUsage_Equipment_EquipmentID] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[EquipmentUsage] CHECK CONSTRAINT [FK_EquipmentUsage_Equipment_EquipmentID]
GO
ALTER TABLE [dbo].[EquipmentUsage]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentUsage_Usage_UsageID] FOREIGN KEY([UsageID])
REFERENCES [dbo].[Usage] ([UsageID])
GO
ALTER TABLE [dbo].[EquipmentUsage] CHECK CONSTRAINT [FK_EquipmentUsage_Usage_UsageID]
GO
ALTER TABLE [dbo].[Plot]  WITH CHECK ADD  CONSTRAINT [FK_Plot_Crop_CropID] FOREIGN KEY([CropID])
REFERENCES [dbo].[Crop] ([CropID])
GO
ALTER TABLE [dbo].[Plot] CHECK CONSTRAINT [FK_Plot_Crop_CropID]
GO
ALTER TABLE [dbo].[Plot]  WITH CHECK ADD  CONSTRAINT [FK_Plot_Employee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Plot] CHECK CONSTRAINT [FK_Plot_Employee_EmployeeID]
GO
ALTER TABLE [dbo].[Plot]  WITH CHECK ADD  CONSTRAINT [FK_Plot_SuperVisorDetail_SupervisorID] FOREIGN KEY([SupervisorID])
REFERENCES [dbo].[SupervisorDetail] ([SupervisorID])
GO
ALTER TABLE [dbo].[Plot] CHECK CONSTRAINT [FK_Plot_SuperVisorDetail_SupervisorID]
GO
ALTER TABLE [dbo].[PlotEquipment]  WITH CHECK ADD  CONSTRAINT [FK_PlotEquipment_Equipment_EquipmentID] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[PlotEquipment] CHECK CONSTRAINT [FK_PlotEquipment_Equipment_EquipmentID]
GO
ALTER TABLE [dbo].[PlotEquipment]  WITH CHECK ADD  CONSTRAINT [FK_PlotEquipment_Plot_PlotID] FOREIGN KEY([PlotID])
REFERENCES [dbo].[Plot] ([PlotID])
GO
ALTER TABLE [dbo].[PlotEquipment] CHECK CONSTRAINT [FK_PlotEquipment_Plot_PlotID]
GO
ALTER TABLE [dbo].[Waste]  WITH CHECK ADD  CONSTRAINT [FK_Waste_DisposalLocation_DisposalLocationID] FOREIGN KEY([DisposalLocationID])
REFERENCES [dbo].[DisposalLocation] ([DisposalLocationID])
GO
ALTER TABLE [dbo].[Waste] CHECK CONSTRAINT [FK_Waste_DisposalLocation_DisposalLocationID]
GO
USE [master]
GO
ALTER DATABASE [GrowingForGood] SET  READ_WRITE 
GO
