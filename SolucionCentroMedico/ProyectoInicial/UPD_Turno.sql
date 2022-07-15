

/*
select * from turno 
select * from turnopaciente

*/
-- exec upd_turno 4,2,'el paciente canceló el turno AHORA SI'

ALTER PROC  UPD_Turno(
				@idturno turno,
				@estado tinyint,
				@observacion observacion)

AS
set nocount on 

IF exists(SELECT * FROM Turno WHERE idTurno = @idturno)
	UPDATE Turno SET estado = @estado,
					 observacion = @observacion
    WHERE idturno = @idturno
ELSE
	SELECT 0 AS resultado
