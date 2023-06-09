USE [master]
GO
/****** Object:  Database [weeclaims]    Script Date: 18/05/2023 11:25:26 a. m. ******/
CREATE DATABASE [weeclaims]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'weeclaims', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\weeclaims.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'weeclaims_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\weeclaims_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [weeclaims] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [weeclaims].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [weeclaims] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [weeclaims] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [weeclaims] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [weeclaims] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [weeclaims] SET ARITHABORT OFF 
GO
ALTER DATABASE [weeclaims] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [weeclaims] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [weeclaims] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [weeclaims] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [weeclaims] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [weeclaims] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [weeclaims] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [weeclaims] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [weeclaims] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [weeclaims] SET  ENABLE_BROKER 
GO
ALTER DATABASE [weeclaims] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [weeclaims] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [weeclaims] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [weeclaims] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [weeclaims] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [weeclaims] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [weeclaims] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [weeclaims] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [weeclaims] SET  MULTI_USER 
GO
ALTER DATABASE [weeclaims] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [weeclaims] SET DB_CHAINING OFF 
GO
ALTER DATABASE [weeclaims] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [weeclaims] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [weeclaims] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [weeclaims] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [weeclaims] SET QUERY_STORE = OFF
GO
USE [weeclaims]
GO
/****** Object:  Table [dbo].[Participantes]    Script Date: 18/05/2023 11:25:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Compania] [varchar](100) NULL,
	[Cedula] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Titulo] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK__Particip__3214EC07D71E620D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Participantes] ON 

INSERT [dbo].[Participantes] ([Id], [Compania], [Cedula], [Nombre], [Titulo], [Correo], [Telefono]) VALUES (1, N'string', 0, N'string', N'string', N'string', 0)
INSERT [dbo].[Participantes] ([Id], [Compania], [Cedula], [Nombre], [Titulo], [Correo], [Telefono]) VALUES (2, N'w', 1, N'w', N'w', N'epuarpo@gmail.com', 55)
INSERT [dbo].[Participantes] ([Id], [Compania], [Cedula], [Nombre], [Titulo], [Correo], [Telefono]) VALUES (3, N'w', 1, N'w', N'w', N'epuarpo@gmail.com', 55)
SET IDENTITY_INSERT [dbo].[Participantes] OFF
GO
USE [master]
GO
ALTER DATABASE [weeclaims] SET  READ_WRITE 
GO
