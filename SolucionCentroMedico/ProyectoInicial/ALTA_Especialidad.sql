select * from especialidad

--exec ALTA_Especialidad "GINECOLOGO"

alter proc ALTA_Especialidad(
            @especialidad varchar(30)
            )
as 

set nocount on

IF NOT EXISTS(SELECT TOP 1 idEspecialidad FROM Especialidad WHERE especialidad=@especialidad)
BEGIN 
     INSERT INTO Especialidad (especialidad) 
	 VALUES (@especialidad)
	 PRINT 'La Especialiad se agrego correctamente'
END
ELSE
BEGIN
      PRINT 'La Especialidad ya existe'
      return

END