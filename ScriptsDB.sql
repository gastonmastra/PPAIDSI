USE [PPAI]
GO
/****** Object:  Table [dbo].[AsignacionVisita]    Script Date: 01/11/2021 1:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionVisita](
	[fechaHoraFin] [datetime] NULL,
	[guiaAsignado] [int] NOT NULL,
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
/****** Object:  Table [dbo].[CambioEstado]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Cargo]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[DetalleExposicion]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 01/11/2021 1:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[apellido] [nchar](10) NULL,
	[codigoValuacion] [int] NULL,
	[cuit] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Escuela]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Exposicion]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Exposiciones_X_Reserva]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[ExposicionesXSede]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Horario_X_Empleado]    Script Date: 01/11/2021 1:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario_X_Empleado](
	[cuit] [int] NOT NULL,
	[idHorario] [int] NOT NULL,
 CONSTRAINT [pk_horario_x_empleado] PRIMARY KEY CLUSTERED 
(
	[cuit] ASC,
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Obra]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[PublicoDestino]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[PublicosXExposicion]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[ReservasXSede]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[ReservaVisita]    Script Date: 01/11/2021 1:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservaVisita](
	[cantidadAlumno] [int] NULL,
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
/****** Object:  Table [dbo].[Sede]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Sesion]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Sexos]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[TipoExposicion]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[TipoVisita]    Script Date: 01/11/2021 1:56:20 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 01/11/2021 1:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[caducidad] [datetime] NULL,
	[contraseña] [nchar](25) NULL,
	[nombre] [nchar](25) NULL,
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[cuitEmpleado] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valuaciones]    Script Date: 01/11/2021 1:56:20 ******/
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
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-07-29T11:00:00.000' AS DateTime), 2033621558, CAST(N'2021-07-29T11:00:00.000' AS DateTime), 11, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-22T01:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-22T01:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-02T16:00:00.000' AS DateTime), 2032464558, CAST(N'2021-11-02T16:00:00.000' AS DateTime), 9, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:34:24.067' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:36:57.910' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:52:56.217' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:54:01.460' AS DateTime), 0, 1)
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:54:57.380' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (1, N' guia', N' encargado de visita')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (2, N' encargado visita', N'asigna visitas')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (3, N' director', N' encargado de sede ')
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (4, N'Administrador', N'Administra el sistema')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Monzon    ', NULL, 20000, 20, NULL, NULL, NULL, NULL, NULL, N'Juan Carlo', NULL, NULL, 3, 2)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'sandrea   ', 12, 2032464558, 32464558, NULL, NULL, CAST(N'2018-11-24' AS Date), NULL, NULL, N' carolina ', NULL, NULL, 1, 1)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van tuf   ', 12, 2033621558, 315644558, NULL, NULL, CAST(N'2018-10-25' AS Date), NULL, NULL, N' virginia ', NULL, NULL, 1, 1)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'anng      ', 12, 2036214488, 36244558, NULL, NULL, CAST(N'2018-12-23' AS Date), NULL, NULL, N' yolo     ', NULL, NULL, 1, 1)
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van Gogh  ', 12, 2036244558, 36244558, NULL, NULL, CAST(N'2018-12-21' AS Date), NULL, NULL, N' Virgil   ', NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Escuela] ON 

INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (NULL, NULL, NULL, N'alfonsina storni    ', NULL, NULL, 1)
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Avellaneda', 5, N'saf@gmail', N'IESS                ', 35128385, 4263521, 3)
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Bush      ', 3, N'ig3@gmail', N'Parroquial          ', 35415835, 4215214, 4)
SET IDENTITY_INSERT [dbo].[Escuela] OFF
GO
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (1, N'Pendiente de Confirmacion', N'Reserva')
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (2, N'Confirmado', N'Reserva')
GO
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-11-13' AS Date), CAST(N'2021-11-12' AS Date), CAST(N'2021-11-13' AS Date), CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time), N'modernismo', 1, 1, 1, 1)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-10-12' AS Date), CAST(N'2021-10-09' AS Date), CAST(N'2021-10-12' AS Date), CAST(N'10:00:00' AS Time), NULL, N'egipto moderno', 1, 2, 2, 2)
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2018-11-13' AS Date), CAST(N'2018-11-12' AS Date), CAST(N'2018-11-13' AS Date), CAST(N'10:00:00' AS Time), NULL, N'roma antigua', 2, 1, 1, 1)
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2032464558, 2)
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2033621558, 3)
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2036214488, 1)
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2036244558, 1)
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
SET IDENTITY_INSERT [dbo].[Obra] OFF
GO
SET IDENTITY_INSERT [dbo].[PublicoDestino] ON 

INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Mayores                  ', 1)
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Menores                  ', 2)
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Adultos                  ', 3)
SET IDENTITY_INSERT [dbo].[PublicoDestino] OFF
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 1, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 1, 2)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 2, 1)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 3, 2)
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (2, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[ReservaVisita] ON 

INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:32:52.587' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 4, 1, 1, CAST(N'2021-11-01T01:34:24.067' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:36:57.897' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 5, 1, 1, CAST(N'2021-11-01T01:36:57.910' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:52:54.377' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 9, 1, 1, CAST(N'2021-11-01T01:52:56.217' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:53:59.690' AS DateTime), CAST(N'2021-08-22T01:00:00.000' AS DateTime), NULL, NULL, 10, 1, 3, CAST(N'2021-11-01T01:54:01.460' AS DateTime), 0)
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 0, CAST(N'2021-11-01T01:54:48.123' AS DateTime), CAST(N'2021-07-29T11:00:00.000' AS DateTime), NULL, NULL, 11, 1, 1, CAST(N'2021-11-01T01:54:57.380' AS DateTime), 0)
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

INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'Fonti41                  ', 1, 2036244558)
INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'jimmy                    ', 3, 2033621558)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[AsignacionVisita]  WITH CHECK ADD  CONSTRAINT [Fk_AsignacionGuia] FOREIGN KEY([guiaAsignado])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[AsignacionVisita] CHECK CONSTRAINT [Fk_AsignacionGuia]
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
ALTER TABLE [dbo].[Horario_X_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADO_HORARIO_X_EMPLEADO] FOREIGN KEY([cuit])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[Horario_X_Empleado] CHECK CONSTRAINT [FK_EMPLEADO_HORARIO_X_EMPLEADO]
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
ALTER TABLE [dbo].[ReservaVisita]  WITH CHECK ADD FOREIGN KEY([fechaHoraInicio], [ordId])
REFERENCES [dbo].[CambioEstado] ([fechaHoraInicio], [ordId])
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
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [fk_sesion_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [fk_sesion_usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fk_usuario_empleado] FOREIGN KEY([cuitEmpleado])
REFERENCES [dbo].[Empleado] ([cuit])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fk_usuario_empleado]
GO
