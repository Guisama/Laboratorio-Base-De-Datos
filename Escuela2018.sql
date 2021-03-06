﻿USE [Escuela2018]
GO
/****** Object:  Index [IX_Maestro]    Script Date: 24/02/2018 10:08:59 a.m ******/
DROP INDEX [IX_Maestro] ON [dbo].[Maestro]
GO
/****** Object:  Index [IX_Alumno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP INDEX [IX_Alumno] ON [dbo].[Alumno]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Turno]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP TABLE [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [Escuela2018]    Script Date: 24/02/2018 10:08:59 a.m. ******/
DROP DATABASE [Escuela2018]
GO
/****** Object:  Database [Escuela2018]    Script Date: 24/02/2018 10:08:59 a.m. ******/
CREATE DATABASE [Escuela2018]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escuela2018', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escuela2018.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Escuela2018_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escuela2018_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Escuela2018] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela2018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela2018] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela2018] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela2018] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela2018] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela2018] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela2018] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escuela2018] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela2018] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela2018] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela2018] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela2018] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela2018] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela2018] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela2018] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela2018] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela2018] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Escuela2018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela2018] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela2018] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela2018] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela2018] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela2018] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela2018] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela2018] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Escuela2018] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela2018] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela2018] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escuela2018] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escuela2018] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Escuela2018]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[matricula] [int] NOT NULL,
	[NomCompleto] [varchar](50) NOT NULL,
	[FechaDeIngreso] [datetime] NULL,
	[Carrera] [varchar](50) NULL,
	[AñoDeCurso] [int] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[Grupo] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horario]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[Horario] [int] NOT NULL,
	[Turno] [int] NOT NULL,
	[Materia] [int] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[Horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestro](
	[N°Empleado] [int] NOT NULL,
	[NomCompleto] [varchar](50) NULL,
	[Materia] [varchar](50) NULL,
	[InContrato] [datetime] NULL,
	[FinContrato] [datetime] NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[N°Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[Materia] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Salon] [int] NULL,
	[Horario] [date] NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[Materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[Matutino] [char](10) NULL,
	[Vespertino] [char](10) NULL,
	[Nocturno] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Alumno]    Script Date: 24/02/2018 10:08:59 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Alumno] ON [dbo].[Alumno]
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Maestro]    Script Date: 24/02/2018 10:08:59 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Maestro] ON [dbo].[Maestro]
(
	[N°Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Escuela2018] SET  READ_WRITE 
GO
