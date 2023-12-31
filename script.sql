USE [master]
GO
/****** Object:  Database [prueba_juan_patino]    Script Date: 6/09/2023 5:22:16 p. m. ******/
CREATE DATABASE [prueba_juan_patino]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba_juan_patino', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prueba_juan_patino.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prueba_juan_patino_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prueba_juan_patino_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [prueba_juan_patino] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba_juan_patino].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba_juan_patino] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [prueba_juan_patino] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba_juan_patino] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba_juan_patino] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prueba_juan_patino] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba_juan_patino] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [prueba_juan_patino] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prueba_juan_patino] SET  MULTI_USER 
GO
ALTER DATABASE [prueba_juan_patino] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba_juan_patino] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba_juan_patino] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba_juan_patino] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prueba_juan_patino] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prueba_juan_patino] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [prueba_juan_patino] SET QUERY_STORE = ON
GO
ALTER DATABASE [prueba_juan_patino] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [prueba_juan_patino]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/09/2023 5:22:17 p. m. ******/
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
/****** Object:  Table [dbo].[PacienteDetalles]    Script Date: 6/09/2023 5:22:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteDetalles](
	[PacienteDetalleId] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [nvarchar](2) NOT NULL,
	[NumeroDocumento] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[CorreoElectronico] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[FechaNacimiento] [nvarchar](100) NOT NULL,
	[EstadoAfiliado] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PacienteDetalles] PRIMARY KEY CLUSTERED 
(
	[PacienteDetalleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [prueba_juan_patino] SET  READ_WRITE 
GO
