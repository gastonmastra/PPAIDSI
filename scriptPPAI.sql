USE [PPAI]
GO
/****** Object:  Table [dbo].[AsignacionVisita]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionVisita](
	[fechaHoraFin] [datetime] NULL,
	[guiaAsignado] [varchar](20) NOT NULL,
	[fechaHoraInicio] [datetime] NOT NULL,
	[idReserva] [int] NOT NULL,
	[idSede] [int] NOT NULL,
 CONSTRAINT [PK_AsignacionVisita] PRIMARY KEY CLUSTERED 
(
	[fechaHoraInicio] ASC,
	[idReserva] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambioEstado]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioEstado](
	[fechaHoraFin] [datetime] NULL,
	[fechaHoraInicio] [datetime] NOT NULL,
	[ordId] [int] NOT NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_CambioEstado] PRIMARY KEY CLUSTERED 
(
	[fechaHoraInicio] ASC,
	[ordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleExposicion]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleExposicion](
	[lugarAsignado] [varchar](25) NULL,
	[idObra] [int] NOT NULL,
	[idExposicion] [int] NOT NULL,
	[idSede] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idObra] ASC,
	[idExposicion] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[apellido] [nchar](10) NULL,
	[codigoValuacion] [int] NULL,
	[cuit] [varchar](20) NOT NULL,
	[dni] [int] NULL,
	[calle] [nchar](10) NULL,
	[numeroCalle] [int] NULL,
	[fechaIngreso] [date] NULL,
	[fechaNacimiento] [date] NULL,
	[mail] [text] NULL,
	[nombre] [nchar](10) NULL,
	[idSexo] [int] NULL,
	[telefono] [int] NULL,
	[cargo] [int] NULL,
	[idSede] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[cuit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[calle] [nchar](10) NULL,
	[numeroCalle] [int] NULL,
	[mail] [varchar](50) NULL,
	[nombre] [nchar](20) NULL,
	[telefCelular] [int] NULL,
	[telefFijo] [int] NULL,
	[idEscuela] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Escuela] PRIMARY KEY CLUSTERED 
(
	[idEscuela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] NOT NULL,
	[nombreEstado] [text] NOT NULL,
	[ambitoEstado] [text] NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exposicion]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exposicion](
	[fechaFin] [date] NULL,
	[fechaFinReplanificada] [date] NULL,
	[fechaInicio] [date] NULL,
	[fechaInicioReplanificada] [date] NULL,
	[horaApertura] [time](7) NULL,
	[horaCierre] [time](7) NULL,
	[nombre] [varchar](50) NULL,
	[idExposicion] [int] NOT NULL,
	[idSede] [int] NOT NULL,
	[idTipoExposicion] [int] NULL,
	[publicoDestino] [int] NULL,
 CONSTRAINT [PK_Exposicion] PRIMARY KEY CLUSTERED 
(
	[idExposicion] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exposiciones_X_Reserva]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exposiciones_X_Reserva](
	[idReserva] [int] NOT NULL,
	[idSede] [int] NOT NULL,
	[idExposicion] [int] NOT NULL,
 CONSTRAINT [PK_Exposiciones_X_Reserva] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC,
	[idSede] ASC,
	[idExposicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExposicionesXSede]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExposicionesXSede](
	[idSede] [int] NOT NULL,
	[idExposicion] [int] NOT NULL,
	[fechaHoraInicio] [datetime] NULL,
	[fechaHoraFin] [datetime] NULL,
 CONSTRAINT [PK_ExposicionesXSede] PRIMARY KEY CLUSTERED 
(
	[idSede] ASC,
	[idExposicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario_X_Empleado]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario_X_Empleado](
	[cuit] [varchar](20) NOT NULL,
	[idHorario] [int] NOT NULL,
 CONSTRAINT [pk_horario_x_empleado] PRIMARY KEY CLUSTERED 
(
	[cuit] ASC,
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[idHorario] [int] NOT NULL,
	[horaSalida] [time](7) NOT NULL,
	[horaIngreso] [time](7) NOT NULL,
	[diaSemana] [varchar](25) NULL,
 CONSTRAINT [pk_horarios] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obra]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obra](
	[alto] [int] NULL,
	[ancho] [int] NULL,
	[codigoSensor] [int] NULL,
	[descripcion] [text] NULL,
	[duracionExtenida] [int] NULL,
	[duracionResumida] [int] NULL,
	[fechaCreacion] [date] NULL,
	[fechaPrimerIngreso] [date] NULL,
	[nombreObra] [text] NULL,
	[peso] [int] NULL,
	[valuacion] [int] NULL,
	[idObra] [int] IDENTITY(1,1) NOT NULL,
	[idExposicion] [int] NULL,
	[idSede] [int] NULL,
 CONSTRAINT [PK_Obra] PRIMARY KEY CLUSTERED 
(
	[idObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicoDestino]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicoDestino](
	[caracteristicas] [nchar](50) NULL,
	[nombre] [nchar](25) NULL,
	[idPublicoDestino] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PublicoDestino] PRIMARY KEY CLUSTERED 
(
	[idPublicoDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicosXExposicion]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicosXExposicion](
	[idExposicion] [int] NOT NULL,
	[idPublicoDestino] [int] NOT NULL,
	[idSede] [int] NOT NULL,
 CONSTRAINT [PK_PublicoXExpo] PRIMARY KEY CLUSTERED 
(
	[idExposicion] ASC,
	[idPublicoDestino] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservasXSede]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservasXSede](
	[numeroReserva] [int] NOT NULL,
	[idSede] [int] NOT NULL,
 CONSTRAINT [PK_ReservasXSede] PRIMARY KEY CLUSTERED 
(
	[numeroReserva] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservaVisita]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservaVisita](
	[cantidadAlumno] [int] NOT NULL,
	[cantidadAlumnoConfirmada] [int] NULL,
	[duracionEstimada] [int] NULL,
	[fechaHoraCreacion] [datetime] NULL,
	[fechaHoraReserva] [datetime] NULL,
	[horaFinReal] [time](7) NULL,
	[horaInicioReal] [time](7) NULL,
	[idReserva] [int] IDENTITY(1,1) NOT NULL,
	[idSede] [int] NOT NULL,
	[idEscuela] [int] NULL,
	[fechaHoraInicio] [datetime] NULL,
	[ordId] [int] NULL,
 CONSTRAINT [PK_ReservaVisita] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC,
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sede](
	[idSede] [int] IDENTITY(1,1) NOT NULL,
	[cantMaxPorGuia] [int] NULL,
	[nombre] [nchar](25) NULL,
	[cantMaximaVisitantes] [int] NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesion]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesion](
	[fechaYHoraFin] [datetime] NULL,
	[idUsuario] [int] NOT NULL,
	[fechaYHoraInicio] [datetime] NOT NULL,
 CONSTRAINT [PK_Sesion] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[fechaYHoraInicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexos](
	[idSexo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](25) NULL,
 CONSTRAINT [PK_Sexos] PRIMARY KEY CLUSTERED 
(
	[idSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoExposicion]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoExposicion](
	[idTipoExposicion] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoExposicion] [nchar](25) NULL,
 CONSTRAINT [PK_TipoExposicion] PRIMARY KEY CLUSTERED 
(
	[idTipoExposicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVisita]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVisita](
	[nombre] [nchar](25) NULL,
	[idTipoVisita] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TipoVisita] PRIMARY KEY CLUSTERED 
(
	[idTipoVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[caducidad] [datetime] NULL,
	[contraseña] [nchar](25) NULL,
	[nombre] [nchar](25) NULL,
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[cuitEmpleado] [varchar](20) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valuaciones]    Script Date: 31/10/2021 13:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valuaciones](
	[idValuacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](25) NULL,
 CONSTRAINT [PK_Valuaciones] PRIMARY KEY CLUSTERED 
(
	[idValuacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-02T12:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-02T10:00:00.000' AS DateTime), 1013, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T08:40:00.000' AS DateTime), N'2036244558', CAST(N'2021-08-04T07:00:00.000' AS DateTime), 1033, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T11:40:00.000' AS DateTime), N'2036244558', CAST(N'2021-08-04T09:00:00.000' AS DateTime), 1007, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T11:00:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-04T10:00:00.000' AS DateTime), 1002, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T12:00:00.000' AS DateTime), N'2032464558', CAST(N'2021-08-04T11:00:00.000' AS DateTime), 1003, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T13:00:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-04T12:00:00.000' AS DateTime), 1004, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T16:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-04T15:00:00.000' AS DateTime), 1031, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T17:40:00.000' AS DateTime), N'2036244558', CAST(N'2021-08-04T16:00:00.000' AS DateTime), 1018, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T18:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-04T17:00:00.000' AS DateTime), 1030, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T19:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-04T18:00:00.000' AS DateTime), 1029, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T20:40:00.000' AS DateTime), N'2036244558', CAST(N'2021-08-04T19:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T21:40:00.000' AS DateTime), N'2032464558', CAST(N'2021-08-04T20:00:00.000' AS DateTime), 1005, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T22:40:00.000' AS DateTime), N'2036244558', CAST(N'2021-08-04T21:00:00.000' AS DateTime), 1028, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-05T00:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-04T23:00:00.000' AS DateTime), 1026, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-05T13:00:00.000' AS DateTime), N'2036214488', CAST(N'2021-08-05T12:00:00.000' AS DateTime), 1006, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-06T15:00:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-06T13:00:00.000' AS DateTime), 1008, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-10T10:00:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-10T10:00:00.000' AS DateTime), 1014, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-10T17:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-10T15:00:00.000' AS DateTime), 1010, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-13T11:40:00.000' AS DateTime), N'2032464558', CAST(N'2021-08-13T10:00:00.000' AS DateTime), 1015, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-13T22:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-13T20:00:00.000' AS DateTime), 1011, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-14T04:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-14T03:00:00.000' AS DateTime), 1042, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-20T12:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-20T11:00:00.000' AS DateTime), 1036, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-25T10:00:00.000' AS DateTime), N'2036214488', CAST(N'2021-08-25T10:00:00.000' AS DateTime), 1016, 2)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-25T14:00:00.000' AS DateTime), N'2036214488', CAST(N'2021-08-25T14:00:00.000' AS DateTime), 1020, 2)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-26T12:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-26T11:00:00.000' AS DateTime), 1041, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-26T15:00:00.000' AS DateTime), N'2036214488', CAST(N'2021-08-26T15:00:00.000' AS DateTime), 1046, 2)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-27T16:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-27T15:00:00.000' AS DateTime), 1024, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-28T13:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-28T12:00:00.000' AS DateTime), 1044, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-29T12:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-29T11:00:00.000' AS DateTime), 1038, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-30T08:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-30T07:00:00.000' AS DateTime), 1045, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-31T16:40:00.000' AS DateTime), N'2033621558', CAST(N'2021-08-31T15:00:00.000' AS DateTime), 1035, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-09-01T00:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-08-31T23:00:00.000' AS DateTime), 1037, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-09-03T23:40:00.000' AS DateTime), N'20316526487', CAST(N'2021-09-03T22:00:00.000' AS DateTime), 1043, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T02:55:37.817' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T03:41:19.447' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T03:55:13.643' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T04:10:32.117' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T14:11:33.840' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T17:27:41.120' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T17:40:30.043' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:12:59.570' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:16:02.637' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:22:03.733' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:24:18.657' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:44:18.900' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:47:29.073' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:52:56.880' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:57:11.017' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:02:30.067' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:12:13.947' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:29:55.007' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:32:37.367' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:48:25.867' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:56:45.327' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T23:17:20.803' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T23:24:43.170' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T03:42:10.350' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T12:38:50.667' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T12:39:55.507' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:05:08.777' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:07:49.137' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:13:03.073' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:13:37.080' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:14:11.063' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:20:15.053' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:20:44.303' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:24:39.903' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (1, N' guia', N' encargado de visita')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (2, N' encargado visita', N'asigna visitas')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (3, N' director', N' encargado de sede ')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (4, N'Administrador', N'Administra el sistema')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
GO
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 3, 2, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 4, 2, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 5, 1, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 6, 2, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 7, 1, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 8, 2, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 9, 1, 1)
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 10, 2, 1)
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Monzon    ', NULL, N'20000', 20, NULL, NULL, NULL, NULL, NULL, N'Juan Carlo', NULL, NULL, 1, 2)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'tanos     ', 12, N'20316526487', 316526487, NULL, NULL, CAST(N'2018-12-22' AS Date), NULL, NULL, N' Morado   ', NULL, NULL, 1, 1)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'sandrea   ', 12, N'2032464558', 32464558, NULL, NULL, CAST(N'2018-11-24' AS Date), NULL, NULL, N' carolina ', NULL, NULL, 1, 2)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van tuf   ', 12, N'2033621558', 315644558, NULL, NULL, CAST(N'2018-10-25' AS Date), NULL, NULL, N' virginia ', NULL, NULL, 1, 1)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'anng      ', 12, N'2036214488', 36244558, NULL, NULL, CAST(N'2018-12-23' AS Date), NULL, NULL, N' yolo     ', NULL, NULL, 1, 2)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van Gogh  ', 12, N'2036244558', 36244558, NULL, NULL, CAST(N'2018-12-21' AS Date), NULL, NULL, N' Virgil   ', NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Escuela] ON 

INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Avellaneda', 5, N'saf@gmail', N'IESS                ', 35128385, 4263521, 1)
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Bush      ', 3, N'ig3@gmail', N'Parroquial          ', 35415835, 4215214, 2)
SET IDENTITY_INSERT [dbo].[Escuela] OFF
GO
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (1, N'Pendiente de Confirmacion', N'Reserva')
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (2, N'Confirmado', N'Reserva')
GO
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-11-13' AS Date), CAST(N'2021-11-12' AS Date), CAST(N'2021-11-13' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), N'modernismo', 1, 1, 1, 1)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2018-11-13' AS Date), CAST(N'2018-11-12' AS Date), CAST(N'2018-11-13' AS Date), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time), N'roma antigua', 2, 1, 1, 1)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-11-20' AS Date), CAST(N'2021-11-21' AS Date), CAST(N'2021-11-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time), N'cr7', 3, 1, 1, 2)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-10-12' AS Date), CAST(N'2021-10-09' AS Date), CAST(N'2021-10-12' AS Date), CAST(N'10:00:00' AS Time), CAST(N'16:00:00' AS Time), N'egipto moderno', 4, 2, 2, 2)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2020-11-15' AS Date), CAST(N'2020-11-16' AS Date), CAST(N'2020-11-15' AS Date), CAST(N'15:00:00' AS Time), CAST(N'14:00:00' AS Time), N'messi', 5, 1, 1, 2)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-11-25' AS Date), CAST(N'2021-11-26' AS Date), CAST(N'2021-11-25' AS Date), CAST(N'17:00:00' AS Time), CAST(N'19:00:00' AS Time), N'fotosintesis', 6, 2, 1, 1)
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (N'20316526487', 1)
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (N'2036244558', 1)
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (1, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Monday')
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (2, CAST(N'20:00:00' AS Time), CAST(N'15:00:00' AS Time), N'Tuesday')
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (3, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Wednesday')
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (4, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Thursday')
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (5, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Friday')
GO
SET IDENTITY_INSERT [dbo].[Obra] ON 

INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 3, 1, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 4, 2, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 5, 1, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 6, 2, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 7, 1, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 8, 2, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 9, 1, 1)
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 10, 2, 1)
SET IDENTITY_INSERT [dbo].[Obra] OFF
GO
SET IDENTITY_INSERT [dbo].[PublicoDestino] ON 

INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Mayores                  ', 1)
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Menores                  ', 2)
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Adultos                  ', 3)
SET IDENTITY_INSERT [dbo].[PublicoDestino] OFF
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 1, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (2, 1, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (3, 2, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (4, 2, 2)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (5, 2, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (6, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[ReservaVisita] ON 

INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T22:48:24.900' AS DateTime), CAST(N'2021-08-04T19:00:00.000' AS DateTime), NULL, NULL, 0, 1, 1, CAST(N'2021-10-30T22:48:25.867' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (120, 100, 10, CAST(N'2020-10-26T10:00:00.000' AS DateTime), CAST(N'2020-10-26T10:00:00.000' AS DateTime), NULL, NULL, 1, 1, 2, NULL, NULL)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (300, 120, 5, CAST(N'2021-10-27T12:00:00.000' AS DateTime), CAST(N'2021-10-27T12:00:00.000' AS DateTime), NULL, NULL, 2, 1, 1, NULL, NULL)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 10, 60, CAST(N'2021-08-05T10:00:00.000' AS DateTime), CAST(N'2021-08-05T10:00:00.000' AS DateTime), NULL, NULL, 3, 1, 2, NULL, NULL)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 30, 10, CAST(N'2021-08-05T10:00:00.000' AS DateTime), CAST(N'2021-08-05T10:00:00.000' AS DateTime), NULL, NULL, 4, 1, 1, NULL, NULL)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T02:55:27.943' AS DateTime), CAST(N'2021-08-04T10:00:00.000' AS DateTime), NULL, NULL, 1002, 1, 1, CAST(N'2021-10-27T02:55:37.817' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T03:41:18.137' AS DateTime), CAST(N'2021-08-04T11:00:00.000' AS DateTime), NULL, NULL, 1003, 1, 1, CAST(N'2021-10-27T03:41:19.447' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (1, 1, 60, CAST(N'2021-10-27T03:55:11.720' AS DateTime), CAST(N'2021-08-04T12:00:00.000' AS DateTime), NULL, NULL, 1004, 1, 1, CAST(N'2021-10-27T03:55:13.643' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 50, 100, CAST(N'2021-10-27T04:10:29.467' AS DateTime), CAST(N'2021-08-04T20:00:00.000' AS DateTime), NULL, NULL, 1005, 1, 1, CAST(N'2021-10-27T04:10:32.117' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T14:11:32.903' AS DateTime), CAST(N'2021-08-05T12:00:00.000' AS DateTime), NULL, NULL, 1006, 1, 1, CAST(N'2021-10-27T14:11:33.840' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (8, 8, 160, CAST(N'2021-10-27T17:27:40.147' AS DateTime), CAST(N'2021-08-04T09:00:00.000' AS DateTime), NULL, NULL, 1007, 1, 1, CAST(N'2021-10-27T17:27:41.120' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (20, 20, 120, CAST(N'2021-10-27T17:40:29.250' AS DateTime), CAST(N'2021-08-06T13:00:00.000' AS DateTime), NULL, NULL, 1008, 1, 1, CAST(N'2021-10-27T17:40:30.043' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (9, 9, 160, CAST(N'2021-10-30T21:12:34.957' AS DateTime), CAST(N'2021-08-10T15:00:00.000' AS DateTime), NULL, NULL, 1010, 1, 1, CAST(N'2021-10-30T21:12:59.570' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 50, 160, CAST(N'2021-10-30T21:16:02.467' AS DateTime), CAST(N'2021-08-13T20:00:00.000' AS DateTime), NULL, NULL, 1011, 1, 1, CAST(N'2021-10-30T21:16:02.637' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (43, 43, 160, CAST(N'2021-10-30T21:22:03.713' AS DateTime), CAST(N'2021-08-02T10:00:00.000' AS DateTime), NULL, NULL, 1013, 1, 2, CAST(N'2021-10-30T21:22:03.733' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (20, 20, 0, CAST(N'2021-10-30T21:24:18.637' AS DateTime), CAST(N'2021-08-10T10:00:00.000' AS DateTime), NULL, NULL, 1014, 1, 2, CAST(N'2021-10-30T21:24:18.657' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T21:44:18.833' AS DateTime), CAST(N'2021-08-13T10:00:00.000' AS DateTime), NULL, NULL, 1015, 1, 1, CAST(N'2021-10-30T21:44:18.900' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 0, CAST(N'2021-10-30T21:47:29.013' AS DateTime), CAST(N'2021-08-25T10:00:00.000' AS DateTime), NULL, NULL, 1016, 2, 1, CAST(N'2021-10-30T21:47:29.073' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T21:52:56.820' AS DateTime), CAST(N'2021-08-04T16:00:00.000' AS DateTime), NULL, NULL, 1018, 1, 1, CAST(N'2021-10-30T21:52:56.880' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (33, 33, 0, CAST(N'2021-10-30T21:56:59.143' AS DateTime), CAST(N'2021-08-25T14:00:00.000' AS DateTime), NULL, NULL, 1020, 2, 2, CAST(N'2021-10-30T21:57:11.017' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:02:27.117' AS DateTime), CAST(N'2021-08-27T14:00:00.000' AS DateTime), NULL, NULL, 1022, 1, 1, CAST(N'2021-10-30T22:02:30.067' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:12:10.060' AS DateTime), CAST(N'2021-08-27T15:00:00.000' AS DateTime), NULL, NULL, 1024, 1, 1, CAST(N'2021-10-30T22:12:13.947' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T22:29:54.063' AS DateTime), CAST(N'2021-08-04T23:00:00.000' AS DateTime), NULL, NULL, 1026, 1, 1, CAST(N'2021-10-30T22:29:55.007' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (6, 6, 100, CAST(N'2021-10-30T22:32:36.423' AS DateTime), CAST(N'2021-08-04T21:00:00.000' AS DateTime), NULL, NULL, 1028, 1, 1, CAST(N'2021-10-30T22:32:37.367' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:56:45.233' AS DateTime), CAST(N'2021-08-04T18:00:00.000' AS DateTime), NULL, NULL, 1029, 1, 1, CAST(N'2021-10-30T22:56:45.327' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T23:17:20.783' AS DateTime), CAST(N'2021-08-04T17:00:00.000' AS DateTime), NULL, NULL, 1030, 1, 1, CAST(N'2021-10-30T23:17:20.803' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T23:24:43.153' AS DateTime), CAST(N'2021-08-04T15:00:00.000' AS DateTime), NULL, NULL, 1031, 1, 1, CAST(N'2021-10-30T23:24:43.170' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (7, 7, 100, CAST(N'2021-10-31T03:42:09.197' AS DateTime), CAST(N'2021-08-04T07:00:00.000' AS DateTime), NULL, NULL, 1033, 1, 1, CAST(N'2021-10-31T03:42:10.350' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T12:38:50.603' AS DateTime), CAST(N'2021-08-31T15:00:00.000' AS DateTime), NULL, NULL, 1035, 1, 1, CAST(N'2021-10-31T12:38:50.667' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T12:39:55.460' AS DateTime), CAST(N'2021-08-20T11:00:00.000' AS DateTime), NULL, NULL, 1036, 1, 1, CAST(N'2021-10-31T12:39:55.507' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:05:08.747' AS DateTime), CAST(N'2021-08-31T23:00:00.000' AS DateTime), NULL, NULL, 1037, 1, 1, CAST(N'2021-10-31T13:05:08.777' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:07:49.083' AS DateTime), CAST(N'2021-08-29T11:00:00.000' AS DateTime), NULL, NULL, 1038, 1, 1, CAST(N'2021-10-31T13:07:49.137' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:13:03.003' AS DateTime), CAST(N'2021-08-26T11:00:00.000' AS DateTime), NULL, NULL, 1041, 1, 1, CAST(N'2021-10-31T13:13:03.073' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 100, CAST(N'2021-10-31T13:13:37.030' AS DateTime), CAST(N'2021-08-14T03:00:00.000' AS DateTime), NULL, NULL, 1042, 1, 2, CAST(N'2021-10-31T13:13:37.080' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-31T13:14:10.953' AS DateTime), CAST(N'2021-09-03T22:00:00.000' AS DateTime), NULL, NULL, 1043, 1, 2, CAST(N'2021-10-31T13:14:11.063' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:20:15.023' AS DateTime), CAST(N'2021-08-28T12:00:00.000' AS DateTime), NULL, NULL, 1044, 1, 2, CAST(N'2021-10-31T13:20:15.053' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (8, 8, 100, CAST(N'2021-10-31T13:20:44.257' AS DateTime), CAST(N'2021-08-30T07:00:00.000' AS DateTime), NULL, NULL, 1045, 1, 2, CAST(N'2021-10-31T13:20:44.303' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 0, CAST(N'2021-10-31T13:24:39.807' AS DateTime), CAST(N'2021-08-26T15:00:00.000' AS DateTime), NULL, NULL, 1046, 2, 2, CAST(N'2021-10-31T13:24:39.903' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[ReservaVisita] OFF
GO
SET IDENTITY_INSERT [dbo].[Sede] ON 

INSERT [dbo].[Sede] ([idSede], [cantMaxPorGuia], [nombre], [cantMaximaVisitantes]) VALUES (1, 30, N'Museo Van Gogh           ', 50)
INSERT [dbo].[Sede] ([idSede], [cantMaxPorGuia], [nombre], [cantMaximaVisitantes]) VALUES (2, 30, N'Museo Carrafa            ', 155)
SET IDENTITY_INSERT [dbo].[Sede] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoExposicion] ON 

INSERT [dbo].[TipoExposicion] ([idTipoExposicion], [nombreTipoExposicion]) VALUES (1, N'Temporal                 ')
INSERT [dbo].[TipoExposicion] ([idTipoExposicion], [nombreTipoExposicion]) VALUES (2, N'Permanente               ')
SET IDENTITY_INSERT [dbo].[TipoExposicion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoVisita] ON 

INSERT [dbo].[TipoVisita] ([nombre], [idTipoVisita]) VALUES (N'Por Exposicion           ', 1)
INSERT [dbo].[TipoVisita] ([nombre], [idTipoVisita]) VALUES (N'Completa                 ', 2)
SET IDENTITY_INSERT [dbo].[TipoVisita] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'Fonti41                  ', 4, N'2036244558')
INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'tanos20                  ', 5, N'20316526487')
INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'jimmy                    ', 6, N'2033621558')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__72AFBCC64B4BB17F]    Script Date: 31/10/2021 13:55:31 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsignacionVisita]  WITH CHECK ADD  CONSTRAINT [Fk_AsignacionGuia] FOREIGN KEY([guiaAsignado])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[AsignacionVisita] CHECK CONSTRAINT [Fk_AsignacionGuia]
GO
ALTER TABLE [dbo].[AsignacionVisita]  WITH CHECK ADD  CONSTRAINT [Fk_AsignacionReSede] FOREIGN KEY([idReserva], [idSede])
REFERENCES [dbo].[ReservaVisita] ([idReserva], [idSede])
GO
ALTER TABLE [dbo].[AsignacionVisita] CHECK CONSTRAINT [Fk_AsignacionReSede]
GO
ALTER TABLE [dbo].[CambioEstado]  WITH CHECK ADD  CONSTRAINT [Fk_CambioEst] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[CambioEstado] CHECK CONSTRAINT [Fk_CambioEst]
GO
ALTER TABLE [dbo].[DetalleExposicion]  WITH CHECK ADD  CONSTRAINT [Fk_DetalleExpObra] FOREIGN KEY([idObra])
REFERENCES [dbo].[Obra] ([idObra])
GO
ALTER TABLE [dbo].[DetalleExposicion] CHECK CONSTRAINT [Fk_DetalleExpObra]
GO
ALTER TABLE [dbo].[DetalleExposicion]  WITH CHECK ADD  CONSTRAINT [FK_DetalleExpoSede] FOREIGN KEY([idExposicion], [idSede])
REFERENCES [dbo].[Exposicion] ([idExposicion], [idSede])
GO
ALTER TABLE [dbo].[DetalleExposicion] CHECK CONSTRAINT [FK_DetalleExpoSede]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [Fk_EmpleadoCargo] FOREIGN KEY([cargo])
REFERENCES [dbo].[Cargo] ([idCargo])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [Fk_EmpleadoCargo]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [Fk_EmpleadoSede] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sede] ([idSede])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [Fk_EmpleadoSede]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [Fk_EmpleadoSexo] FOREIGN KEY([idSexo])
REFERENCES [dbo].[Sexos] ([idSexo])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [Fk_EmpleadoSexo]
GO
ALTER TABLE [dbo].[Exposicion]  WITH CHECK ADD  CONSTRAINT [Fk_ExpoPublico] FOREIGN KEY([publicoDestino])
REFERENCES [dbo].[PublicoDestino] ([idPublicoDestino])
GO
ALTER TABLE [dbo].[Exposicion] CHECK CONSTRAINT [Fk_ExpoPublico]
GO
ALTER TABLE [dbo].[Exposicion]  WITH CHECK ADD  CONSTRAINT [Fk_ExpoSede] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sede] ([idSede])
GO
ALTER TABLE [dbo].[Exposicion] CHECK CONSTRAINT [Fk_ExpoSede]
GO
ALTER TABLE [dbo].[Exposicion]  WITH CHECK ADD  CONSTRAINT [Fk_ExpoTipoExpo] FOREIGN KEY([idTipoExposicion])
REFERENCES [dbo].[TipoExposicion] ([idTipoExposicion])
GO
ALTER TABLE [dbo].[Exposicion] CHECK CONSTRAINT [Fk_ExpoTipoExpo]
GO
ALTER TABLE [dbo].[Exposiciones_X_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Exposiciones_X_Reserva_Exposiciones] FOREIGN KEY([idExposicion], [idSede])
REFERENCES [dbo].[Exposicion] ([idExposicion], [idSede])
GO
ALTER TABLE [dbo].[Exposiciones_X_Reserva] CHECK CONSTRAINT [FK_Exposiciones_X_Reserva_Exposiciones]
GO
ALTER TABLE [dbo].[Exposiciones_X_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Exposiciones_X_Reserva_ReservaVisita] FOREIGN KEY([idReserva], [idSede])
REFERENCES [dbo].[ReservaVisita] ([idReserva], [idSede])
GO
ALTER TABLE [dbo].[Exposiciones_X_Reserva] CHECK CONSTRAINT [FK_Exposiciones_X_Reserva_ReservaVisita]
GO
ALTER TABLE [dbo].[ExposicionesXSede]  WITH CHECK ADD  CONSTRAINT [FK_ExpoSedeExpo] FOREIGN KEY([idExposicion], [idSede])
REFERENCES [dbo].[Exposicion] ([idExposicion], [idSede])
GO
ALTER TABLE [dbo].[ExposicionesXSede] CHECK CONSTRAINT [FK_ExpoSedeExpo]
GO
ALTER TABLE [dbo].[Horario_X_Empleado]  WITH CHECK ADD  CONSTRAINT [fk_cuit] FOREIGN KEY([cuit])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[Horario_X_Empleado] CHECK CONSTRAINT [fk_cuit]
GO
ALTER TABLE [dbo].[Horario_X_Empleado]  WITH CHECK ADD  CONSTRAINT [fk_idHorario] FOREIGN KEY([idHorario])
REFERENCES [dbo].[HORARIOS] ([idHorario])
GO
ALTER TABLE [dbo].[Horario_X_Empleado] CHECK CONSTRAINT [fk_idHorario]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [Fk_ObraExpoSede] FOREIGN KEY([idExposicion], [idSede])
REFERENCES [dbo].[Exposicion] ([idExposicion], [idSede])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [Fk_ObraExpoSede]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [Fk_ObraValuacion] FOREIGN KEY([valuacion])
REFERENCES [dbo].[Valuaciones] ([idValuacion])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [Fk_ObraValuacion]
GO
ALTER TABLE [dbo].[PublicosXExposicion]  WITH CHECK ADD  CONSTRAINT [Fk_PublicoXExpo] FOREIGN KEY([idPublicoDestino])
REFERENCES [dbo].[PublicoDestino] ([idPublicoDestino])
GO
ALTER TABLE [dbo].[PublicosXExposicion] CHECK CONSTRAINT [Fk_PublicoXExpo]
GO
ALTER TABLE [dbo].[PublicosXExposicion]  WITH CHECK ADD  CONSTRAINT [PK_PublicoXExp] FOREIGN KEY([idExposicion], [idSede])
REFERENCES [dbo].[Exposicion] ([idExposicion], [idSede])
GO
ALTER TABLE [dbo].[PublicosXExposicion] CHECK CONSTRAINT [PK_PublicoXExp]
GO
ALTER TABLE [dbo].[ReservasXSede]  WITH CHECK ADD  CONSTRAINT [Fk_ReservaXSede] FOREIGN KEY([numeroReserva], [idSede])
REFERENCES [dbo].[ReservaVisita] ([idReserva], [idSede])
GO
ALTER TABLE [dbo].[ReservasXSede] CHECK CONSTRAINT [Fk_ReservaXSede]
GO
ALTER TABLE [dbo].[ReservaVisita]  WITH CHECK ADD  CONSTRAINT [FK__ReservaVisita__656C112C] FOREIGN KEY([fechaHoraInicio], [ordId])
REFERENCES [dbo].[CambioEstado] ([fechaHoraInicio], [ordId])
GO
ALTER TABLE [dbo].[ReservaVisita] CHECK CONSTRAINT [FK__ReservaVisita__656C112C]
GO
ALTER TABLE [dbo].[ReservaVisita]  WITH CHECK ADD  CONSTRAINT [Fk_ReservaEscuela] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuela] ([idEscuela])
GO
ALTER TABLE [dbo].[ReservaVisita] CHECK CONSTRAINT [Fk_ReservaEscuela]
GO
ALTER TABLE [dbo].[ReservaVisita]  WITH CHECK ADD  CONSTRAINT [Fk_ReservaSede] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sede] ([idSede])
GO
ALTER TABLE [dbo].[ReservaVisita] CHECK CONSTRAINT [Fk_ReservaSede]
GO
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [Fk_SesionUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [Fk_SesionUsuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [Fk_UsuarioEmpleado] FOREIGN KEY([cuitEmpleado])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [Fk_UsuarioEmpleado]
GO
