USE [master]
GO
/****** Object:  Database [PROJECT_BI1_SA]    Script Date: 1/9/2021 3:45:56 PM ******/
CREATE DATABASE [PROJECT_BI1_SA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROJECT_BI1_SA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PROJECT_BI1_SA.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROJECT_BI1_SA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PROJECT_BI1_SA_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PROJECT_BI1_SA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROJECT_BI1_SA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET RECOVERY FULL 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET  MULTI_USER 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROJECT_BI1_SA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROJECT_BI1_SA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PROJECT_BI1_SA', N'ON'
GO
ALTER DATABASE [PROJECT_BI1_SA] SET QUERY_STORE = OFF
GO
USE [PROJECT_BI1_SA]
GO
/****** Object:  Table [dbo].[Dim_Stg_Company]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Company](
	[BK_Company] [int] NOT NULL,
	[Company_Name] [nvarchar](500) NULL,
	[Company_County] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Company] PRIMARY KEY CLUSTERED 
(
	[BK_Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Date]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Date](
	[BK_Date] [int] NOT NULL,
	[ReleasedDate] [date] NULL,
	[Day_Number] [int] NULL,
	[Week_Day] [nvarchar](50) NULL,
	[Month_Number] [int] NULL,
	[Trimester_Number] [int] NULL,
	[Semester_Number] [int] NULL,
	[Year] [int] NULL,
	[Day_Name] [nvarchar](50) NULL,
	[Day_Name_Short] [nvarchar](10) NULL,
 CONSTRAINT [PK_Dim_Stg_Date] PRIMARY KEY CLUSTERED 
(
	[BK_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Director]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Director](
	[BK_Director] [int] NOT NULL,
	[Director_FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Director] PRIMARY KEY CLUSTERED 
(
	[BK_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Genre]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Genre](
	[BK_Genre] [int] NOT NULL,
	[Genre_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Genre] PRIMARY KEY CLUSTERED 
(
	[BK_Genre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Movies]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Movies](
	[BK_Movie] [int] NOT NULL,
	[Movie_Title] [nvarchar](500) NULL,
	[Movie_Runtime] [int] NULL,
	[Movie_Rating] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Movies] PRIMARY KEY CLUSTERED 
(
	[BK_Movie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Star]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Star](
	[BK_Star] [int] NOT NULL,
	[Star_FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Star] PRIMARY KEY CLUSTERED 
(
	[BK_Star] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Stg_Writer]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Stg_Writer](
	[BK_Writer] [int] NOT NULL,
	[Writer_FullName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Dim_Stg_Writer] PRIMARY KEY CLUSTERED 
(
	[BK_Writer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Stg_ProfitPopularity]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Stg_ProfitPopularity](
	[FK_Movie] [int] NOT NULL,
	[FK_Genre] [int] NOT NULL,
	[FK_Company] [int] NOT NULL,
	[FK_Date] [int] NOT NULL,
	[FK_Star] [int] NOT NULL,
	[FK_Writer] [int] NOT NULL,
	[FK_Director] [int] NOT NULL,
	[Budget] [int] NULL,
	[Gross] [int] NULL,
	[Votes] [int] NULL,
	[Score] [float] NULL,
 CONSTRAINT [PK_Fact_Stg_ProfitPopularuty] PRIMARY KEY CLUSTERED 
(
	[FK_Movie] ASC,
	[FK_Genre] ASC,
	[FK_Company] ASC,
	[FK_Date] ASC,
	[FK_Star] ASC,
	[FK_Writer] ASC,
	[FK_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_Stg_Errors]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Stg_Errors](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[ETL_Name] [nvarchar](50) NULL,
	[Error] [nvarchar](max) NULL,
	[Source] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_Stg_ETL]    Script Date: 1/9/2021 3:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Stg_ETL](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[ETL_Name] [nvarchar](50) NULL,
	[ETL_Desc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PROJECT_BI1_SA] SET  READ_WRITE 
GO
