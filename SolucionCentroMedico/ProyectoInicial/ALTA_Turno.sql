
--exec ALTA_Turno '20300219 08:15',2,2,'nadin' 

alter proc ALTA_Turno(
            @fecha char(14),--20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)
as 

/*
Estado = 0 (pendiente)
Estado = 1 (realizado)
Estado = 2 (cancelado)

*/
set nocount on
IF NOT EXISTS(SELECT top 1 idturno  FROM Turno WHERE fechaTurno=@fecha)
BEGIN 
     INSERT INTO Turno (fechaTurno, estado, observacion) 
	 VALUES (@fecha,0,@observacion)
	 
	 declare @auxIdturno turno 
	 SET @auxIdturno = @@IDENTITY

	 INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	 VALUES (@auxIdturno,@idpaciente,@idmedico)

	 PRINT 'El turno se agrego correctamente'
END
ELSE
BEGIN
      PRINT 'El turno ya existe'
      return

END

