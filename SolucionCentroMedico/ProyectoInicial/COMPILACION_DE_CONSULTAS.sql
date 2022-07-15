


--SELECT

--prueba

SELECT * FROM TURNO
SELECT * FROM paciente
select top 1 * from turno order by idTurno desc
select  top 1 * from paciente order by fNacimiento desc
SELECT  Nombre FROM PACIENTE
SELECT DISTINCT Nombre FROM PACIENTE
SELECT apellido FROM paciente GROUP BY apellido
SELECT idpaciente, apellido FROM paciente 
SELECT apellido, min(idPaciente) from paciente  GROUP BY apellido
SELECT SUM(idpaciente), apellido FROM Paciente GROUP BY apellido
SELECT SUM(idpaciente) FROM Paciente 
SELECT AVG(idpaciente), apellido FROM Paciente GROUP BY apellido
SELECT AVG(idpaciente) FROM Paciente 
SELECT idpaciente, apellido FROM Paciente 
select COUNT(*) FROM paciente WHERE apellido='fernandez'
SELECT estado FROM turno GROUP BY estado HAVING count(estado)=1
SELECT estado FROM turno
SELECT * FROM paciente WHERE apellido ='palomino' and nombre='adriana'
SELECT * FROM paciente WHERE apellido ='palomino' or nombre='adriana'
SELECT * FROM turno WHERE estado IN(2,1)
SELECT * FROM turno
SELECT * FROM paciente WHERE apellido IN('palomino','fernandez')
SELECT * FROM paciente WHERE nombre LIKE'%isa%'
SELECT * FROM paciente WHERE nombre NOT LIKE '%isa%'
SELECT * FROM paciente WHERE apellido NOT IN('palomino','fernandez')
SELECT * FROM paciente
select * from  turno where fechaTurno BETWEEN '20200301' AND '20200304'
select * from  turno where estado BETWEEN 1 AND 2

SELECT * FROM paciente WHERE apellido='ortiz' AND (nombre='adriana' OR idPaciente=2 OR idPais='col')




--INSERT
INSERT INTO paciente (nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) values('vicente','fernandez','1990-03-09','quillar','ARG','','','')
--INSERT INTO turno values()
--DELETE
delete from paciente where nombre='linda' and apellido='maestre'

--UPDATE
update paciente set observacion='observacion modificada' where idPaciente=5
UPDATE PACIENTE SET IDPAIS='BRA' WHERE idPaciente=6



