
-- LLAMAR UNA VISTA
--se llama como a una tabla normal

select * from PacientesTurnosPendientes
select * from vistadeprueba

--CREACION DE LA VISTA 

CREATE VIEW PacientesTurnosPendientes AS

select P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado 
	FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON P.idPaciente = TP.idPaciente
	INNER JOIN Turno T
	ON TP.idTurno = T.idTurno
WHERE isnull(T.estado, 0) = 0