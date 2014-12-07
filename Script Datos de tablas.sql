/* *********************************** *
 * ********   U S U A R I O   ******** *
 * *********************************** */
INSERT INTO Usuario (nombre, username, password, email) values ('Christian Escalante','cescalante','1234','christian.escalante@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Isaac Palma','ipalma','1234','isaac.palma@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('David Garcia','dgarcia','1234','david.garcia@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Maicol Loza','mloza','1234','maicol.loza@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Jesus Martin','jmartin','1234','jesus.martin@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Natalia De Lazaro','ndelazaro','1234','natalia.delazaro@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Luis Gil','lgil','1234','luis.gil@tajamar365.com');
INSERT INTO Usuario (nombre, username, password, email) values ('Juan Bou','jbou','1234','jbou@tajamar.es');
GO



/* *********************************** *
 * ********   JEFE PROYECTO   ******** *
 * *********************************** */
INSERT INTO JefeProyecto (idUsuario) values (1);
INSERT INTO JefeProyecto (idUsuario) values (2);
INSERT INTO JefeProyecto (idUsuario) values (7);
GO



/* *********************************** *
 * ********   C L I E N T E   ******** *
 * *********************************** */
INSERT INTO Cliente (idUsuario) values (7);
INSERT INTO Cliente (idUsuario) values (8);
GO



/* *********************************** *
 * ********   DESARROLLADOR   ******** *
 * *********************************** */
INSERT INTO Desarrollador (idUsuario) values (1);
INSERT INTO Desarrollador (idUsuario) values (2);
INSERT INTO Desarrollador (idUsuario) values (3);
INSERT INTO Desarrollador (idUsuario) values (4);
INSERT INTO Desarrollador (idUsuario) values (5);
INSERT INTO Desarrollador (idUsuario) values (6);
GO



/* *********************************** *
 * ********   S O P O R T E   ******** *
 * *********************************** */
INSERT INTO Soporte (idUsuario) values (2);
INSERT INTO Soporte (idUsuario) values (4);
GO



/* *********************************** *
 * ******   H A B I L I D A D   ****** *
 * *********************************** */
INSERT INTO Habilidad (nombre) values ('C#');
INSERT INTO Habilidad (nombre) values ('HTML');
INSERT INTO Habilidad (nombre) values ('CSS');
INSERT INTO Habilidad (nombre) values ('Photoshop');
INSERT INTO Habilidad (nombre) values ('JavaScript');
INSERT INTO Habilidad (nombre) values ('PHP');
INSERT INTO Habilidad (nombre) values ('ActionScript');
INSERT INTO Habilidad (nombre) values ('Python');
INSERT INTO Habilidad (nombre) values ('Ruby on Rails');
INSERT INTO Habilidad (nombre) values ('Perl');
GO



/* *********************************** *
 * ***  DESARROLLADOR - HABILIDAD  *** *
 * *********************************** */
INSERT INTO Desarrollador_Habilidad values (1,1);
INSERT INTO Desarrollador_Habilidad values (1,2);
INSERT INTO Desarrollador_Habilidad values (1,3);
INSERT INTO Desarrollador_Habilidad values (1,4);
INSERT INTO Desarrollador_Habilidad values (1,6);
INSERT INTO Desarrollador_Habilidad values (2,1);
INSERT INTO Desarrollador_Habilidad values (2,2);
INSERT INTO Desarrollador_Habilidad values (2,3);
INSERT INTO Desarrollador_Habilidad values (2,5);
INSERT INTO Desarrollador_Habilidad values (3,1);
INSERT INTO Desarrollador_Habilidad values (3,2);
INSERT INTO Desarrollador_Habilidad values (3,3);
INSERT INTO Desarrollador_Habilidad values (4,1);
INSERT INTO Desarrollador_Habilidad values (4,2);
INSERT INTO Desarrollador_Habilidad values (4,3);
INSERT INTO Desarrollador_Habilidad values (4,4);
INSERT INTO Desarrollador_Habilidad values (5,1);
INSERT INTO Desarrollador_Habilidad values (5,2);
INSERT INTO Desarrollador_Habilidad values (5,3);
INSERT INTO Desarrollador_Habilidad values (6,1);
INSERT INTO Desarrollador_Habilidad values (6,2);
INSERT INTO Desarrollador_Habilidad values (6,3);
GO



/* *********************************** *
 * ******   P R I O R I D A D   ****** *
 * *********************************** */
INSERT INTO Prioridad (nombre) values ('Baja');
INSERT INTO Prioridad (nombre) values ('Normal');
INSERT INTO Prioridad (nombre) values ('Alta');
GO



/* *********************************** *
 * *******   P R O Y E C T O   ******* *
 * *********************************** */
INSERT INTO Proyecto (nombre, fechaInicio, fechaFin, detalle, idPrioridad, idCliente, idJefeProyecto, idJefeDesarrollo)
	values ('Proyecto 3 - Tajamar', '2014-12-01', '2015-03-01', 'Proyecto de Curso de MCSD', 3, 1, 1, 2);
INSERT INTO Proyecto (nombre, fechaInicio, fechaFin, detalle, idPrioridad, idCliente, idJefeProyecto, idJefeDesarrollo)
	values ('Windows Phone', '2015-03-02', null, 'Proyecto de varias app', 1, 1, 2, 1);
INSERT INTO Proyecto (nombre, fechaInicio, fechaFin, detalle, idPrioridad, idCliente, idJefeProyecto, idJefeDesarrollo)
	values ('Tonterias varias', '2015-04-01', null, 'Haremos tonterías varias', 2, 1, 1, 3);
INSERT INTO Proyecto (nombre, fechaInicio, fechaFin, detalle, idPrioridad, idCliente, idJefeProyecto, idJefeDesarrollo)
	values ('Vag OS', '2015-04-02', null, 'Un proyecto muy productivo', 1, 2, 2, 4);
INSERT INTO Proyecto (nombre, fechaInicio, fechaFin, detalle, idPrioridad, idCliente, idJefeProyecto, idJefeDesarrollo)
	values ('Imagine CUP', '2014-12-01', null, 'Intentaremos hacer algo', 3, 2, 3, 1);
GO



/* *********************************** *
 * ***  PROYECTO - DESARROLLADOR   *** *
 * *********************************** */
INSERT INTO Proyecto_Desarrollador values (1,1,'2014-11-01',null);
INSERT INTO Proyecto_Desarrollador values (1,2,'2014-11-01',null);
INSERT INTO Proyecto_Desarrollador values (1,3,'2014-11-01',null);
INSERT INTO Proyecto_Desarrollador values (1,4,'2014-11-01',null);
INSERT INTO Proyecto_Desarrollador values (1,5,'2014-11-01',null);
INSERT INTO Proyecto_Desarrollador values (2,2,'2014-12-01',null);
INSERT INTO Proyecto_Desarrollador values (2,3,'2014-12-01',null);
INSERT INTO Proyecto_Desarrollador values (2,5,'2015-03-01',null);
INSERT INTO Proyecto_Desarrollador values (3,1,'2015-03-01',null);
INSERT INTO Proyecto_Desarrollador values (3,2,'2015-04-01','2015-04-02');
INSERT INTO Proyecto_Desarrollador values (3,4,'2015-11-01',null);
INSERT INTO Proyecto_Desarrollador values (4,5,'2015-11-01',null);
INSERT INTO Proyecto_Desarrollador values (5,1,'2015-11-01',null);
INSERT INTO Proyecto_Desarrollador values (5,2,'2015-11-01',null);
GO



/* *********************************** *
 * **   E S T A D O   T I C K E T  *** *
 * *********************************** */
INSERT INTO EstadoTicket (nombre) values ('Abierto');
INSERT INTO EstadoTicket (nombre) values ('Rechazado');
INSERT INTO EstadoTicket (nombre) values ('Cerrado');
GO



/* *********************************** *
 * *********   T I C K E T   ********* *
 * *********************************** */
INSERT INTO Ticket (codigo, fecha, descripcion, idSoporte, idProyecto)
	values ('TIC0001','2014-12-05','La aplicación no funciona',null,1);
INSERT INTO Ticket (codigo, fecha, descripcion, idSoporte, idProyecto)
	values ('TIC0002','2014-12-07','Ordenador no arranca',1,1);
GO


/* *********************************** *
 * ****   E S T A D O   T A R E A  *** *
 * *********************************** */
INSERT INTO EstadoTarea (nombre) values ('Aceptada');
INSERT INTO EstadoTarea (nombre) values ('No valida');
INSERT INTO EstadoTarea (nombre) values ('En proceso');
INSERT INTO EstadoTarea (nombre) values ('En pruebas');
GO



/* *********************************** *
 * ***********   T A R E A  ********** *
 * *********************************** */
INSERT INTO Tarea (nombre, fechaCreacion, fechaAsignacion, tiempoEstimado, idPrioridad, idTicket, idDesarrollador, idEstadoTarea, idProyecto)
	values ('Crear plantilla', '2014-12-05', null, 23, 1, 1, null, 1, 1);
INSERT INTO Tarea (nombre, fechaCreacion, fechaAsignacion, tiempoEstimado, idPrioridad, idTicket, idDesarrollador, idEstadoTarea, idProyecto)
	values ('Eliminar bugs', '2014-11-05', null, 3, 2, 1, null, 1, 1);
GO