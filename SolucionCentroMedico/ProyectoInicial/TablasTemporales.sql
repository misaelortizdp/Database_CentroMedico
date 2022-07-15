
-- TABLA TEMPORAL EN MEMORIA 
-- Las Tablas temporales en memoria solo existen mientras se esté ejecutando el script, apenas este termine se borran. 

DECLARE @mitabla TABLE (id int IDENTITY(1,1), pais varchar(50))

insert into @mitabla values('MEXICO')
insert into @mitabla values('PERU')
insert into @mitabla values('ARGENTINA')
insert into @mitabla values('COLOMBIA')
insert into @mitabla values('ECUADOR')
insert into @mitabla values('VENEZUELA')

SELECT * FROM @mitabla


-- TABLA TEMPORAL FISICA
-- va a existir hasta que se reinicie el servicio de base de datos 


CREATE TABLE #mitabla (id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))

insert into #mitabla values ('Alejandro ','Lopez') 
insert into #mitabla values ('Rafael','Castillo') 
insert into #mitabla values ('Fernando','Gonzales') 

select * from #mitabla
DROP TABLE #mitabla

--  SCRIPT 
-- Uso de la tabla temporal para optimizar consultas

DECLARE @turnos TABLE (id int IDENTITY(1,1), idturno turno, idpaciente paciente)
DECLARE @idpaciente paciente
set @idpaciente = 5

	INSERT INTO @turnos (idturno, idpaciente)
	SELECT TP.idTurno, P.idPaciente 
	FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON P.idPaciente = TP.idPaciente

declare @i int, @total int
SET @i = 1
set @total = (select count(*) from @turnos )


WHILE @i <= @total
BEGIN
	IF (SELECT idpaciente FROM @turnos WHERE id = @i) <> 5
		DELETE FROM @turnos 
		WHERE id = @i 

	set @i += 1
END


SELECT * FROM Paciente P 
	INNER JOIN @turnos T
	ON P.idPaciente = T.idpaciente