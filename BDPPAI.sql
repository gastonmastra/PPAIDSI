USE [PPAI]
GO
/****** Object:  Table [dbo].[AsignacionVisita]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[CambioEstado]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Cargo]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[DetalleExposicion]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Escuela]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Exposicion]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Exposiciones_X_Reserva]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[ExposicionesXSede]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Horario_X_Empleado]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Obra]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[PublicoDestino]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[PublicosXExposicion]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[ReservasXSede]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[ReservaVisita]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Sede]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Sesion]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Sexos]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[TipoExposicion]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[TipoVisita]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 02/11/2021 19:45:39 ******/
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
/****** Object:  Table [dbo].[Valuaciones]    Script Date: 02/11/2021 19:45:39 ******/
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
