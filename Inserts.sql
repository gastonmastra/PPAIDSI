USE [PPAI]
GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 
GO
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (1, N' guia', N' encargado de visita')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (2, N' encargado visita', N'asigna visitas')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (3, N' director', N' encargado de sede ')
GO
INSERT [dbo].[Cargo] ([idCargo], [nombre], [descripcion]) VALUES (4, N'Administrador', N'Administra el sistema')
GO
SET IDENTITY_INSERT [dbo].[Cargo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sede] ON 
GO
INSERT [dbo].[Sede] ([idSede], [cantMaxPorGuia], [nombre], [cantMaximaVisitantes]) VALUES (1, 30, N'Museo Van Gogh           ', 50)
GO
INSERT [dbo].[Sede] ([idSede], [cantMaxPorGuia], [nombre], [cantMaximaVisitantes]) VALUES (2, 30, N'Museo Carrafa            ', 155)
GO
SET IDENTITY_INSERT [dbo].[Sede] OFF
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Monzon    ', NULL, 20000, 20, NULL, NULL, NULL, NULL, NULL, N'Juan Carlo', NULL, NULL, 3, 2)
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'sandrea   ', 12, 2032464558, 32464558, NULL, NULL, CAST(N'2018-11-24' AS Date), NULL, NULL, N' carolina ', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van tuf   ', 12, 2033621558, 315644558, NULL, NULL, CAST(N'2018-10-25' AS Date), NULL, NULL, N' virginia ', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'anng      ', 12, 2036214488, 36244558, NULL, NULL, CAST(N'2018-12-23' AS Date), NULL, NULL, N' yolo     ', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Empleado] ([apellido], [codigoValuacion], [cuit], [dni], [calle], [numeroCalle], [fechaIngreso], [fechaNacimiento], [mail], [nombre], [idSexo], [telefono], [cargo], [idSede]) VALUES (N'Van Gogh  ', 12, 2036244558, 36244558, NULL, NULL, CAST(N'2018-12-21' AS Date), NULL, NULL, N' Virgil   ', NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 
GO
INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'Fonti41                  ', 1, 2036244558)
GO
INSERT [dbo].[Usuario] ([caducidad], [contraseña], [nombre], [idUsuario], [cuitEmpleado]) VALUES (NULL, NULL, N'jimmy                    ', 3, 2033621558)
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-07-29T11:00:00.000' AS DateTime), 2033621558, CAST(N'2021-07-29T11:00:00.000' AS DateTime), 11, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-02T12:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-02T10:00:00.000' AS DateTime), 1013, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T08:40:00.000' AS DateTime), 2036244558, CAST(N'2021-08-04T07:00:00.000' AS DateTime), 1033, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T11:40:00.000' AS DateTime), 2036244558, CAST(N'2021-08-04T09:00:00.000' AS DateTime), 1007, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T12:00:00.000' AS DateTime), 2032464558, CAST(N'2021-08-04T11:00:00.000' AS DateTime), 1003, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T13:00:00.000' AS DateTime), 2033621558, CAST(N'2021-08-04T12:00:00.000' AS DateTime), 1004, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T17:40:00.000' AS DateTime), 2036244558, CAST(N'2021-08-04T16:00:00.000' AS DateTime), 1018, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T18:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-04T17:00:00.000' AS DateTime), 1030, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T19:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-04T18:00:00.000' AS DateTime), 1029, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T20:40:00.000' AS DateTime), 2036244558, CAST(N'2021-08-04T19:00:00.000' AS DateTime), 0, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T21:40:00.000' AS DateTime), 2032464558, CAST(N'2021-08-04T20:00:00.000' AS DateTime), 1005, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-04T22:40:00.000' AS DateTime), 2036244558, CAST(N'2021-08-04T21:00:00.000' AS DateTime), 1028, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-05T00:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-04T23:00:00.000' AS DateTime), 1026, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-05T13:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-05T12:00:00.000' AS DateTime), 1006, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-06T15:00:00.000' AS DateTime), 2033621558, CAST(N'2021-08-06T13:00:00.000' AS DateTime), 1008, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-10T10:00:00.000' AS DateTime), 2033621558, CAST(N'2021-08-10T10:00:00.000' AS DateTime), 1014, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-13T11:40:00.000' AS DateTime), 2032464558, CAST(N'2021-08-13T10:00:00.000' AS DateTime), 1015, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-20T12:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-20T11:00:00.000' AS DateTime), 1036, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-22T01:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-22T01:00:00.000' AS DateTime), 10, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-25T10:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-25T10:00:00.000' AS DateTime), 1016, 2)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-25T14:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-25T14:00:00.000' AS DateTime), 1020, 2)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-26T15:00:00.000' AS DateTime), 2036214488, CAST(N'2021-08-26T15:00:00.000' AS DateTime), 1046, 2)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-27T16:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-27T15:00:00.000' AS DateTime), 1024, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-08-31T16:40:00.000' AS DateTime), 2033621558, CAST(N'2021-08-31T15:00:00.000' AS DateTime), 1035, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-01T11:00:00.000' AS DateTime), 2036214488, CAST(N'2021-11-01T11:00:00.000' AS DateTime), 12, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-01T11:40:00.000' AS DateTime), 2036214488, CAST(N'2021-11-01T11:00:00.000' AS DateTime), 14, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-01T12:00:00.000' AS DateTime), 2036214488, CAST(N'2021-11-01T12:00:00.000' AS DateTime), 13, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-02T16:00:00.000' AS DateTime), 2032464558, CAST(N'2021-11-02T16:00:00.000' AS DateTime), 9, 1)
GO
INSERT [dbo].[AsignacionVisita] ([fechaHoraFin], [guiaAsignado], [fechaHoraInicio], [idReserva], [idSede]) VALUES (CAST(N'2021-11-02T16:20:00.000' AS DateTime), 2032464558, CAST(N'2021-11-02T16:00:00.000' AS DateTime), 53, 1)
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (1, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Monday')
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (2, CAST(N'20:00:00' AS Time), CAST(N'15:00:00' AS Time), N'Tuesday')
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (3, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Wednesday')
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (4, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Thursday')
GO
INSERT [dbo].[HORARIOS] ([idHorario], [horaSalida], [horaIngreso], [diaSemana]) VALUES (5, CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Friday')
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2032464558, 2)
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2033621558, 3)
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2036214488, 1)
GO
INSERT [dbo].[Horario_X_Empleado] ([cuit], [idHorario]) VALUES (2036244558, 1)
GO
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (1, N'Pendiente de Confirmacion', N'Reserva')
GO
INSERT [dbo].[Estado] ([idEstado], [nombreEstado], [ambitoEstado]) VALUES (2, N'Confirmado', N'Reserva')
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T02:55:37.817' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T03:41:19.447' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T03:55:13.643' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T04:10:32.117' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T14:11:33.840' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T17:27:41.120' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-27T17:40:30.043' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:12:59.570' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:16:02.637' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:22:03.733' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:24:18.657' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:44:18.900' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:47:29.073' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:52:56.880' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T21:57:11.017' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:02:30.067' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:12:13.947' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:29:55.007' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:32:37.367' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:48:25.867' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T22:56:45.327' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T23:17:20.803' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-30T23:24:43.170' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T03:42:10.350' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T12:38:50.667' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T12:39:55.507' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:05:08.777' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:07:49.137' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:13:03.073' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:13:37.080' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:14:11.063' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:20:15.053' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:20:44.303' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-10-31T13:24:39.903' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:34:24.067' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:36:57.910' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:52:56.217' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:54:01.460' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T01:54:57.380' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T07:53:20.483' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T08:12:26.550' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-01T08:17:39.333' AS DateTime), 0, 1)
GO
INSERT [dbo].[CambioEstado] ([fechaHoraFin], [fechaHoraInicio], [ordId], [idEstado]) VALUES (NULL, CAST(N'2021-11-02T19:41:45.820' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Escuela] ON 
GO
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (NULL, NULL, NULL, N'alfonsina storni    ', NULL, NULL, 1)
GO
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Avellaneda', 5, N'saf@gmail', N'IESS                ', 35128385, 4263521, 3)
GO
INSERT [dbo].[Escuela] ([calle], [numeroCalle], [mail], [nombre], [telefCelular], [telefFijo], [idEscuela]) VALUES (N'Bush      ', 3, N'ig3@gmail', N'Parroquial          ', 35415835, 4215214, 4)
GO
SET IDENTITY_INSERT [dbo].[Escuela] OFF
GO
SET IDENTITY_INSERT [dbo].[ReservaVisita] ON 
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:32:52.587' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 4, 1, 1, CAST(N'2021-11-01T01:34:24.067' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:36:57.897' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 5, 1, 1, CAST(N'2021-11-01T01:36:57.910' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:52:54.377' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 9, 1, 1, CAST(N'2021-11-01T01:52:56.217' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T01:53:59.690' AS DateTime), CAST(N'2021-08-22T01:00:00.000' AS DateTime), NULL, NULL, 10, 1, 3, CAST(N'2021-11-01T01:54:01.460' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 0, CAST(N'2021-11-01T01:54:48.123' AS DateTime), CAST(N'2021-07-29T11:00:00.000' AS DateTime), NULL, NULL, 11, 1, 1, CAST(N'2021-11-01T01:54:57.380' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (51, 51, 0, CAST(N'2021-11-01T07:51:26.217' AS DateTime), CAST(N'2021-11-01T11:00:00.000' AS DateTime), NULL, NULL, 12, 1, 1, CAST(N'2021-11-01T07:53:20.483' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 0, CAST(N'2021-11-01T08:11:53.880' AS DateTime), CAST(N'2021-11-01T12:00:00.000' AS DateTime), NULL, NULL, 13, 1, 1, CAST(N'2021-11-01T08:12:26.550' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 40, CAST(N'2021-11-01T08:17:02.687' AS DateTime), CAST(N'2021-11-01T11:00:00.000' AS DateTime), NULL, NULL, 14, 1, 1, CAST(N'2021-11-01T08:17:39.333' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T22:48:24.900' AS DateTime), CAST(N'2021-08-04T19:00:00.000' AS DateTime), NULL, NULL, 15, 1, 1, CAST(N'2021-10-30T22:48:25.867' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (300, 120, 5, CAST(N'2021-10-27T12:00:00.000' AS DateTime), CAST(N'2021-10-27T12:00:00.000' AS DateTime), NULL, NULL, 17, 1, 1, NULL, NULL)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 30, 10, CAST(N'2021-08-05T10:00:00.000' AS DateTime), CAST(N'2021-08-05T10:00:00.000' AS DateTime), NULL, NULL, 19, 1, 1, NULL, NULL)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T02:55:27.943' AS DateTime), CAST(N'2021-08-04T10:00:00.000' AS DateTime), NULL, NULL, 20, 1, 1, CAST(N'2021-10-27T02:55:37.817' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T03:41:18.137' AS DateTime), CAST(N'2021-08-04T11:00:00.000' AS DateTime), NULL, NULL, 21, 1, 1, CAST(N'2021-10-27T03:41:19.447' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (1, 1, 60, CAST(N'2021-10-27T03:55:11.720' AS DateTime), CAST(N'2021-08-04T12:00:00.000' AS DateTime), NULL, NULL, 22, 1, 1, CAST(N'2021-10-27T03:55:13.643' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 50, 100, CAST(N'2021-10-27T04:10:29.467' AS DateTime), CAST(N'2021-08-04T20:00:00.000' AS DateTime), NULL, NULL, 23, 1, 1, CAST(N'2021-10-27T04:10:32.117' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (10, 10, 60, CAST(N'2021-10-27T14:11:32.903' AS DateTime), CAST(N'2021-08-05T12:00:00.000' AS DateTime), NULL, NULL, 24, 1, 1, CAST(N'2021-10-27T14:11:33.840' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (8, 8, 160, CAST(N'2021-10-27T17:27:40.147' AS DateTime), CAST(N'2021-08-04T09:00:00.000' AS DateTime), NULL, NULL, 25, 1, 1, CAST(N'2021-10-27T17:27:41.120' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (20, 20, 120, CAST(N'2021-10-27T17:40:29.250' AS DateTime), CAST(N'2021-08-06T13:00:00.000' AS DateTime), NULL, NULL, 26, 1, 1, CAST(N'2021-10-27T17:40:30.043' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (9, 9, 160, CAST(N'2021-10-30T21:12:34.957' AS DateTime), CAST(N'2021-08-10T15:00:00.000' AS DateTime), NULL, NULL, 27, 1, 1, CAST(N'2021-10-30T21:12:59.570' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (50, 50, 160, CAST(N'2021-10-30T21:16:02.467' AS DateTime), CAST(N'2021-08-13T20:00:00.000' AS DateTime), NULL, NULL, 28, 1, 1, CAST(N'2021-10-30T21:16:02.637' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T21:44:18.833' AS DateTime), CAST(N'2021-08-13T10:00:00.000' AS DateTime), NULL, NULL, 31, 1, 1, CAST(N'2021-10-30T21:44:18.900' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 0, CAST(N'2021-10-30T21:47:29.013' AS DateTime), CAST(N'2021-08-25T10:00:00.000' AS DateTime), NULL, NULL, 32, 2, 1, CAST(N'2021-10-30T21:47:29.073' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T21:52:56.820' AS DateTime), CAST(N'2021-08-04T16:00:00.000' AS DateTime), NULL, NULL, 33, 1, 1, CAST(N'2021-10-30T21:52:56.880' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:02:27.117' AS DateTime), CAST(N'2021-08-27T14:00:00.000' AS DateTime), NULL, NULL, 35, 1, 1, CAST(N'2021-10-30T22:02:30.067' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:12:10.060' AS DateTime), CAST(N'2021-08-27T15:00:00.000' AS DateTime), NULL, NULL, 36, 1, 1, CAST(N'2021-10-30T22:12:13.947' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (44, 44, 100, CAST(N'2021-10-30T22:29:54.063' AS DateTime), CAST(N'2021-08-04T23:00:00.000' AS DateTime), NULL, NULL, 37, 1, 1, CAST(N'2021-10-30T22:29:55.007' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (6, 6, 100, CAST(N'2021-10-30T22:32:36.423' AS DateTime), CAST(N'2021-08-04T21:00:00.000' AS DateTime), NULL, NULL, 38, 1, 1, CAST(N'2021-10-30T22:32:37.367' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (49, 49, 100, CAST(N'2021-10-30T22:56:45.233' AS DateTime), CAST(N'2021-08-04T18:00:00.000' AS DateTime), NULL, NULL, 39, 1, 1, CAST(N'2021-10-30T22:56:45.327' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T23:17:20.783' AS DateTime), CAST(N'2021-08-04T17:00:00.000' AS DateTime), NULL, NULL, 40, 1, 1, CAST(N'2021-10-30T23:17:20.803' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-30T23:24:43.153' AS DateTime), CAST(N'2021-08-04T15:00:00.000' AS DateTime), NULL, NULL, 41, 1, 1, CAST(N'2021-10-30T23:24:43.170' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (7, 7, 100, CAST(N'2021-10-31T03:42:09.197' AS DateTime), CAST(N'2021-08-04T07:00:00.000' AS DateTime), NULL, NULL, 42, 1, 1, CAST(N'2021-10-31T03:42:10.350' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T12:38:50.603' AS DateTime), CAST(N'2021-08-31T15:00:00.000' AS DateTime), NULL, NULL, 43, 1, 1, CAST(N'2021-10-31T12:38:50.667' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T12:39:55.460' AS DateTime), CAST(N'2021-08-20T11:00:00.000' AS DateTime), NULL, NULL, 44, 1, 1, CAST(N'2021-10-31T12:39:55.507' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:05:08.747' AS DateTime), CAST(N'2021-08-31T23:00:00.000' AS DateTime), NULL, NULL, 45, 1, 1, CAST(N'2021-10-31T13:05:08.777' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:07:49.083' AS DateTime), CAST(N'2021-08-29T11:00:00.000' AS DateTime), NULL, NULL, 46, 1, 1, CAST(N'2021-10-31T13:07:49.137' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (5, 5, 100, CAST(N'2021-10-31T13:13:03.003' AS DateTime), CAST(N'2021-08-26T11:00:00.000' AS DateTime), NULL, NULL, 47, 1, 1, CAST(N'2021-10-31T13:13:03.073' AS DateTime), 0)
GO
INSERT [dbo].[ReservaVisita] ([cantidadAlumno], [cantidadAlumnoConfirmada], [duracionEstimada], [fechaHoraCreacion], [fechaHoraReserva], [horaFinReal], [horaInicioReal], [idReserva], [idSede], [idEscuela], [fechaHoraInicio], [ordId]) VALUES (3, 3, 20, CAST(N'2021-11-02T19:41:45.800' AS DateTime), CAST(N'2021-11-02T16:00:00.000' AS DateTime), NULL, NULL, 53, 1, 1, CAST(N'2021-11-02T19:41:45.820' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[ReservaVisita] OFF
GO
SET IDENTITY_INSERT [dbo].[PublicoDestino] ON 
GO
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Mayores                  ', 1)
GO
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Menores                  ', 2)
GO
INSERT [dbo].[PublicoDestino] ([caracteristicas], [nombre], [idPublicoDestino]) VALUES (NULL, N'Adultos                  ', 3)
GO
SET IDENTITY_INSERT [dbo].[PublicoDestino] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoExposicion] ON 
GO
INSERT [dbo].[TipoExposicion] ([idTipoExposicion], [nombreTipoExposicion]) VALUES (1, N'Temporal                 ')
GO
INSERT [dbo].[TipoExposicion] ([idTipoExposicion], [nombreTipoExposicion]) VALUES (2, N'Permanente               ')
GO
SET IDENTITY_INSERT [dbo].[TipoExposicion] OFF
GO
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-11-13' AS Date), CAST(N'2021-11-12' AS Date), CAST(N'2021-11-13' AS Date), CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time), N'modernismo', 1, 1, 1, 1)
GO
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2021-10-12' AS Date), CAST(N'2021-10-09' AS Date), CAST(N'2021-10-12' AS Date), CAST(N'10:00:00' AS Time), NULL, N'egipto moderno', 1, 2, 2, 2)
GO
INSERT [dbo].[Exposicion] ([fechaFin], [fechaFinReplanificada], [fechaInicio], [fechaInicioReplanificada], [horaApertura], [horaCierre], [nombre], [idExposicion], [idSede], [idTipoExposicion], [publicoDestino]) VALUES (NULL, CAST(N'2018-11-13' AS Date), CAST(N'2018-11-12' AS Date), CAST(N'2018-11-13' AS Date), CAST(N'10:00:00' AS Time), NULL, N'roma antigua', 2, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Obra] ON 
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 3, 1, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 4, 2, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'algo', 20, 10, NULL, NULL, NULL, NULL, NULL, 5, 1, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'otra cosa', 20, 10, NULL, NULL, NULL, NULL, NULL, 6, 2, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'asda', 20, 10, NULL, NULL, NULL, NULL, NULL, 7, 1, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'dsd', 20, 10, NULL, NULL, NULL, NULL, NULL, 8, 2, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'asd', 20, 10, NULL, NULL, NULL, NULL, NULL, 9, 1, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'asd', 20, 10, NULL, NULL, NULL, NULL, NULL, 10, 2, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'gfhd', 20, 10, NULL, NULL, NULL, NULL, NULL, 11, 1, 1)
GO
INSERT [dbo].[Obra] ([alto], [ancho], [codigoSensor], [descripcion], [duracionExtenida], [duracionResumida], [fechaCreacion], [fechaPrimerIngreso], [nombreObra], [peso], [valuacion], [idObra], [idExposicion], [idSede]) VALUES (1, 1, 1, N'dshtr', 20, 10, NULL, NULL, NULL, NULL, NULL, 12, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Obra] OFF
GO
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 3, 1, 1)
GO
INSERT [dbo].[DetalleExposicion] ([lugarAsignado], [idObra], [idExposicion], [idSede]) VALUES (NULL, 4, 2, 1)
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 1, 1)
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 1, 2)
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 2, 1)
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (1, 3, 2)
GO
INSERT [dbo].[PublicosXExposicion] ([idExposicion], [idPublicoDestino], [idSede]) VALUES (2, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[TipoVisita] ON 
GO
INSERT [dbo].[TipoVisita] ([nombre], [idTipoVisita]) VALUES (N'Por Exposicion           ', 1)
GO
INSERT [dbo].[TipoVisita] ([nombre], [idTipoVisita]) VALUES (N'Completa                 ', 2)
GO
SET IDENTITY_INSERT [dbo].[TipoVisita] OFF
GO
