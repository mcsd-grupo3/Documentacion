/*
Created: 28/11/2014
Modified: 06/12/2014
Model: Microsoft SQL Server 2012
Database: MS SQL Server 2012
*/



-- Create tables section -------------------------------------------------

-- Table Usuario

CREATE TABLE [Usuario]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL,
 [username] Nvarchar(50) NULL,
 [password] Nvarchar(50) NULL,
 [email] Nvarchar(50) NULL
)
go

-- Add keys for table Usuario

ALTER TABLE [Usuario] ADD CONSTRAINT [Key1] PRIMARY KEY ([id])
go

-- Table Habilidad

CREATE TABLE [Habilidad]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NOT NULL
)
go

-- Add keys for table Habilidad

ALTER TABLE [Habilidad] ADD CONSTRAINT [Key2] PRIMARY KEY ([id])
go

-- Table Usuario_Habilidad

CREATE TABLE [Usuario_Habilidad]
(
 [idUsuario] Int NOT NULL,
 [idHabilidad] Int NOT NULL
)
go

-- Add keys for table Usuario_Habilidad

ALTER TABLE [Usuario_Habilidad] ADD CONSTRAINT [Key3] PRIMARY KEY ([idUsuario],[idHabilidad])
go

-- Table Tarea

CREATE TABLE [Tarea]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL,
 [fechaCreacion] Date NULL,
 [fechaAsignacion] Date NULL,
 [tiempoEstimado] Int NULL,
 [idPrioridad] Int NOT NULL,
 [idTicket] Int NULL,
 [idDesarrollador] Int NULL,
 [idEstadoTarea] Int NOT NULL,
 [idProyecto] Int NOT NULL
)
go

-- Create indexes for table Tarea

CREATE INDEX [IX_Relationship11] ON [Tarea] ([idPrioridad])
go

CREATE INDEX [IX_Relationship12] ON [Tarea] ([idTicket])
go

CREATE INDEX [IX_Relationship28] ON [Tarea] ([idDesarrollador])
go

CREATE INDEX [IX_Relationship52] ON [Tarea] ([idEstadoTarea])
go

CREATE INDEX [IX_Relationship58] ON [Tarea] ([idProyecto])
go

-- Add keys for table Tarea

ALTER TABLE [Tarea] ADD CONSTRAINT [Key4] PRIMARY KEY ([id])
go

-- Table Ticket

CREATE TABLE [Ticket]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [descripcion] Nvarchar(50) NULL,
 [idSoporte] Int NULL,
 [fecha] Datetime NULL,
 [idEstadoTicket] Int DEFAULT 1 NOT NULL,
 [codigo] Nvarchar(20) NULL,
 [idProyecto] Int NOT NULL
)
go

-- Create indexes for table Ticket

CREATE INDEX [IX_Relationship23] ON [Ticket] ([idSoporte])
go

CREATE INDEX [IX_Relationship48] ON [Ticket] ([idEstadoTicket])
go

CREATE INDEX [IX_Relationship57] ON [Ticket] ([idProyecto])
go

-- Add keys for table Ticket

ALTER TABLE [Ticket] ADD CONSTRAINT [Key5] PRIMARY KEY ([id])
go

-- Table TipoUsuario

CREATE TABLE [TipoUsuario]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL
)
go

-- Add keys for table TipoUsuario

ALTER TABLE [TipoUsuario] ADD CONSTRAINT [Key7] PRIMARY KEY ([id])
go

-- Table Permiso

CREATE TABLE [Permiso]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL
)
go

-- Add keys for table Permiso

ALTER TABLE [Permiso] ADD CONSTRAINT [Key9] PRIMARY KEY ([id])
go

-- Table TipoUsuario_Permiso

CREATE TABLE [TipoUsuario_Permiso]
(
 [idTipoUsuario] Int NOT NULL,
 [idPermiso] Int NOT NULL
)
go

-- Add keys for table TipoUsuario_Permiso

ALTER TABLE [TipoUsuario_Permiso] ADD CONSTRAINT [Key10] PRIMARY KEY ([idTipoUsuario],[idPermiso])
go

-- Table Prioridad

CREATE TABLE [Prioridad]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL
)
go

-- Add keys for table Prioridad

ALTER TABLE [Prioridad] ADD CONSTRAINT [Key11] PRIMARY KEY ([id])
go

-- Table Cliente

CREATE TABLE [Cliente]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [idUsuario] Int NOT NULL
)
go

-- Create indexes for table Cliente

CREATE INDEX [IX_Relationship16] ON [Cliente] ([idUsuario])
go

-- Add keys for table Cliente

ALTER TABLE [Cliente] ADD CONSTRAINT [Key13] PRIMARY KEY ([id])
go

-- Table Desarrollador

CREATE TABLE [Desarrollador]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [idUsuario] Int NOT NULL
)
go

-- Create indexes for table Desarrollador

CREATE INDEX [IX_Relationship17] ON [Desarrollador] ([idUsuario])
go

-- Add keys for table Desarrollador

ALTER TABLE [Desarrollador] ADD CONSTRAINT [Key14] PRIMARY KEY ([id])
go

-- Table Soporte

CREATE TABLE [Soporte]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [idUsuario] Int NOT NULL
)
go

-- Create indexes for table Soporte

CREATE INDEX [IX_Relationship20] ON [Soporte] ([idUsuario])
go

-- Add keys for table Soporte

ALTER TABLE [Soporte] ADD CONSTRAINT [Key15] PRIMARY KEY ([id])
go

-- Table Desarrollador_Habilidad

CREATE TABLE [Desarrollador_Habilidad]
(
 [idDesarrollador] Int NOT NULL,
 [idHabilidad] Int NOT NULL
)
go

-- Add keys for table Desarrollador_Habilidad

ALTER TABLE [Desarrollador_Habilidad] ADD CONSTRAINT [Key17] PRIMARY KEY ([idDesarrollador],[idHabilidad])
go

-- Table Desarrollador_Permiso

CREATE TABLE [Desarrollador_Permiso]
(
 [idDesarrollador] Int NOT NULL,
 [idPermiso] Int NOT NULL
)
go

-- Add keys for table Desarrollador_Permiso

ALTER TABLE [Desarrollador_Permiso] ADD CONSTRAINT [Key19] PRIMARY KEY ([idDesarrollador],[idPermiso])
go

-- Table Cliente_Ticket

CREATE TABLE [Cliente_Ticket]
(
 [idCliente] Int NOT NULL,
 [idTicket] Int NOT NULL,
 [fecha] Datetime NULL,
 [mensaje] Nvarchar(255) NULL
)
go

-- Add keys for table Cliente_Ticket

ALTER TABLE [Cliente_Ticket] ADD CONSTRAINT [Key20] PRIMARY KEY ([idCliente],[idTicket])
go

-- Table JefeProyecto

CREATE TABLE [JefeProyecto]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [idUsuario] Int NULL
)
go

-- Create indexes for table JefeProyecto

CREATE INDEX [IX_Relationship38] ON [JefeProyecto] ([idUsuario])
go

-- Add keys for table JefeProyecto

ALTER TABLE [JefeProyecto] ADD CONSTRAINT [Key21] PRIMARY KEY ([id])
go

-- Table Mensaje

CREATE TABLE [Mensaje]
(
 [idRemitente] Int NOT NULL,
 [idDestinatario] Int NOT NULL,
 [asunto] Nvarchar(50) NULL,
 [mensaje] Nvarchar(255) NULL,
 [fecha] Datetime NULL
)
go

-- Add keys for table Mensaje

ALTER TABLE [Mensaje] ADD CONSTRAINT [Key22] PRIMARY KEY ([idRemitente],[idDestinatario])
go

-- Table Cliente_Soporte_Ticket

CREATE TABLE [Cliente_Soporte_Ticket]
(
 [idCliente] Int NOT NULL,
 [idSoporte] Int NOT NULL,
 [idTicket] Int NOT NULL,
 [fecha] Datetime NULL,
 [mensaje] Nvarchar(255) NULL
)
go

-- Add keys for table Cliente_Soporte_Ticket

ALTER TABLE [Cliente_Soporte_Ticket] ADD CONSTRAINT [Key23] PRIMARY KEY ([idCliente],[idSoporte],[idTicket])
go

-- Table EstadoTicket

CREATE TABLE [EstadoTicket]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL
)
go

-- Add keys for table EstadoTicket

ALTER TABLE [EstadoTicket] ADD CONSTRAINT [Key24] PRIMARY KEY ([id])
go

-- Table EstadoTarea

CREATE TABLE [EstadoTarea]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL
)
go

-- Add keys for table EstadoTarea

ALTER TABLE [EstadoTarea] ADD CONSTRAINT [Key25] PRIMARY KEY ([id])
go

-- Table Proyecto

CREATE TABLE [Proyecto]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [nombre] Nvarchar(50) NULL,
 [fechaInicio] Datetime NULL,
 [fechaFin] Datetime NULL,
 [detalle] Nvarchar(255) NULL,
 [idPrioridad] Int NOT NULL,
 [idCliente] Int NOT NULL,
 [idJefeDesarrollo] Int NOT NULL,
 [idJefeProyecto] Int NOT NULL
)
go

-- Create indexes for table Proyecto

CREATE INDEX [IX_Relationship53] ON [Proyecto] ([idPrioridad])
go

CREATE INDEX [IX_Relationship56] ON [Proyecto] ([idCliente])
go

CREATE INDEX [IX_Relationship59] ON [Proyecto] ([idJefeDesarrollo])
go

CREATE INDEX [IX_Relationship60] ON [Proyecto] ([idJefeProyecto])
go

-- Add keys for table Proyecto

ALTER TABLE [Proyecto] ADD CONSTRAINT [Key26] PRIMARY KEY ([id])
go

-- Table Proyecto_Desarrollador

CREATE TABLE [Proyecto_Desarrollador]
(
 [idDesarrollador] Int NOT NULL,
 [idProyecto] Int NOT NULL,
 [fechaIncorporacion] Datetime NULL,
 [fechaBaja] Datetime NULL
)
go

-- Add keys for table Proyecto_Desarrollador

ALTER TABLE [Proyecto_Desarrollador] ADD CONSTRAINT [Key27] PRIMARY KEY ([idDesarrollador],[idProyecto])
go

-- Create relationships section ------------------------------------------------- 

ALTER TABLE [Usuario_Habilidad] ADD CONSTRAINT [Relationship2] FOREIGN KEY ([idUsuario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Usuario_Habilidad] ADD CONSTRAINT [Relationship3] FOREIGN KEY ([idHabilidad]) REFERENCES [Habilidad] ([id])
go

ALTER TABLE [TipoUsuario_Permiso] ADD CONSTRAINT [Relationship9] FOREIGN KEY ([idTipoUsuario]) REFERENCES [TipoUsuario] ([id])
go

ALTER TABLE [TipoUsuario_Permiso] ADD CONSTRAINT [Relationship10] FOREIGN KEY ([idPermiso]) REFERENCES [Permiso] ([id])
go

ALTER TABLE [Tarea] ADD CONSTRAINT [Relationship11] FOREIGN KEY ([idPrioridad]) REFERENCES [Prioridad] ([id])
go

ALTER TABLE [Tarea] ADD CONSTRAINT [Relationship12] FOREIGN KEY ([idTicket]) REFERENCES [Ticket] ([id])
go

ALTER TABLE [Cliente] ADD CONSTRAINT [Relationship16] FOREIGN KEY ([idUsuario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Desarrollador] ADD CONSTRAINT [Relationship17] FOREIGN KEY ([idUsuario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Soporte] ADD CONSTRAINT [Relationship20] FOREIGN KEY ([idUsuario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Ticket] ADD CONSTRAINT [Gestiona] FOREIGN KEY ([idSoporte]) REFERENCES [Soporte] ([id])
go

ALTER TABLE [Desarrollador_Habilidad] ADD CONSTRAINT [Relationship26] FOREIGN KEY ([idDesarrollador]) REFERENCES [Desarrollador] ([id])
go

ALTER TABLE [Desarrollador_Habilidad] ADD CONSTRAINT [Relationship27] FOREIGN KEY ([idHabilidad]) REFERENCES [Habilidad] ([id])
go

ALTER TABLE [Tarea] ADD CONSTRAINT [Relationship28] FOREIGN KEY ([idDesarrollador]) REFERENCES [Desarrollador] ([id])
go

ALTER TABLE [Desarrollador_Permiso] ADD CONSTRAINT [Relationship33] FOREIGN KEY ([idDesarrollador]) REFERENCES [Desarrollador] ([id])
go

ALTER TABLE [Desarrollador_Permiso] ADD CONSTRAINT [Relationship34] FOREIGN KEY ([idPermiso]) REFERENCES [Permiso] ([id])
go

ALTER TABLE [Cliente_Ticket] ADD CONSTRAINT [Relationship35] FOREIGN KEY ([idCliente]) REFERENCES [Cliente] ([id])
go

ALTER TABLE [Cliente_Ticket] ADD CONSTRAINT [Relationship36] FOREIGN KEY ([idTicket]) REFERENCES [Ticket] ([id])
go

ALTER TABLE [JefeProyecto] ADD CONSTRAINT [Relationship38] FOREIGN KEY ([idUsuario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Mensaje] ADD CONSTRAINT [Relationship42] FOREIGN KEY ([idRemitente]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Mensaje] ADD CONSTRAINT [Relationship43] FOREIGN KEY ([idDestinatario]) REFERENCES [Usuario] ([id])
go

ALTER TABLE [Cliente_Soporte_Ticket] ADD CONSTRAINT [Relationship44] FOREIGN KEY ([idCliente]) REFERENCES [Cliente] ([id])
go

ALTER TABLE [Cliente_Soporte_Ticket] ADD CONSTRAINT [Relationship45] FOREIGN KEY ([idSoporte]) REFERENCES [Soporte] ([id])
go

ALTER TABLE [Cliente_Soporte_Ticket] ADD CONSTRAINT [Relationship46] FOREIGN KEY ([idCliente]) REFERENCES [Ticket] ([id])
go

ALTER TABLE [Cliente_Soporte_Ticket] ADD CONSTRAINT [Relationship47] FOREIGN KEY ([idTicket]) REFERENCES [Ticket] ([id])
go

ALTER TABLE [Ticket] ADD CONSTRAINT [Relationship48] FOREIGN KEY ([idEstadoTicket]) REFERENCES [EstadoTicket] ([id])
go

ALTER TABLE [Tarea] ADD CONSTRAINT [Relationship52] FOREIGN KEY ([idEstadoTarea]) REFERENCES [EstadoTarea] ([id])
go

ALTER TABLE [Proyecto] ADD CONSTRAINT [Relationship53] FOREIGN KEY ([idPrioridad]) REFERENCES [Prioridad] ([id])
go

ALTER TABLE [Proyecto_Desarrollador] ADD CONSTRAINT [Relationship54] FOREIGN KEY ([idDesarrollador]) REFERENCES [Desarrollador] ([id])
go

ALTER TABLE [Proyecto_Desarrollador] ADD CONSTRAINT [Relationship55] FOREIGN KEY ([idProyecto]) REFERENCES [Proyecto] ([id])
go

ALTER TABLE [Proyecto] ADD CONSTRAINT [Relationship56] FOREIGN KEY ([idCliente]) REFERENCES [Cliente] ([id])
go

ALTER TABLE [Ticket] ADD CONSTRAINT [Relationship57] FOREIGN KEY ([idProyecto]) REFERENCES [Proyecto] ([id])
go

ALTER TABLE [Tarea] ADD CONSTRAINT [Relationship58] FOREIGN KEY ([idProyecto]) REFERENCES [Proyecto] ([id])
go

ALTER TABLE [Proyecto] ADD CONSTRAINT [Relationship59] FOREIGN KEY ([idJefeDesarrollo]) REFERENCES [Desarrollador] ([id])
go

ALTER TABLE [Proyecto] ADD CONSTRAINT [Relationship60] FOREIGN KEY ([idJefeProyecto]) REFERENCES [JefeProyecto] ([id])
go





