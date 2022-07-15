
/*
select * from turno 
select * from turnopaciente

*/



--EXEC DEL_Turno 1

ALTER PROC  DEL_Turno(
				@idturno turno)

AS
set nocount on 

IF exists(SELECT * FROM Turno WHERE idTurno = @idturno)
BEGIN

		DELETE FROM TurnoPaciente
		WHERE idTurno = @idturno
		
		DELETE FROM Turno
		WHERE idTurno = @idturno

		IF NOT EXISTS(SELECT * FROM TURNO)
		DBCC CHECKIDENT('Turno',RESEED,0)

END
ELSE
	SELECT 0 AS resultado
