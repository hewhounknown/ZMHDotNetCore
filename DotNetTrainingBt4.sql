USE [master]
GO
/****** Object:  Database [DotNetTrainingBt4]    Script Date: 4/25/2024 2:40:44 AM ******/
CREATE DATABASE [DotNetTrainingBt4] ON  PRIMARY 
( NAME = N'DotNetTrainingBt4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DotNetTrainingBt4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DotNetTrainingBt4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DotNetTrainingBt4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DotNetTrainingBt4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DotNetTrainingBt4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET ARITHABORT OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DotNetTrainingBt4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DotNetTrainingBt4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DotNetTrainingBt4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DotNetTrainingBt4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DotNetTrainingBt4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DotNetTrainingBt4] SET  MULTI_USER 
GO
ALTER DATABASE [DotNetTrainingBt4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DotNetTrainingBt4] SET DB_CHAINING OFF 
GO
USE [DotNetTrainingBt4]
GO
/****** Object:  Table [dbo].[Tbl_Blog]    Script Date: 4/25/2024 2:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [varchar](50) NOT NULL,
	[BlogAuthor] [varchar](50) NOT NULL,
	[BlogContent] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Blog] ON 

INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (1, N'updated title', N'unknown', N'updated content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (4, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (5, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (6, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (7, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (8, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (9, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (10, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (11, N'Test Title', N'Test Author', N'Test Content')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (14, N'titleBlah', N'blahAuthor', N'blah blah')
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (13, N'Second_title', N'the only one', N'Content_letter')
SET IDENTITY_INSERT [dbo].[Tbl_Blog] OFF
GO
USE [master]
GO
ALTER DATABASE [DotNetTrainingBt4] SET  READ_WRITE 
GO
