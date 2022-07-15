


--exec ALTA_Medico 'Andres', 'Picalua', 2, 'Medico rural'

alter proc ALTA_Medico(
            @nombre varchar(50),
			@apellido varchar(50),
			@idespecialidad int,
			@descripcion varchar(50)
			)
as 

set nocount on
IF NOT EXISTS(SELECT top 1 idmedico  FROM Medico WHERE nombre=@nombre and apellido=@apellido)
BEGIN 
     INSERT INTO Medico (nombre,apellido) 
	 VALUES (@nombre,@apellido)
	 
	 declare @auxIdmedico int 
	 SET @auxIdmedico = @@IDENTITY

	 INSERT INTO MedicoEspecialidad(idmedico,idEspecialidad,descripcion)
	 VALUES (@auxIdmedico,@idespecialidad,@descripcion)

	 PRINT 'El Médico se agrego correctamente'
END
ELSE
BEGIN
      PRINT 'El Médico ya existe'
      return

END

