select * from paciente

exec ALTA_Paciente '232432', 'Jorge', 'Lopez','20180518','calle 1', 'PER','','Jorgelopez@gmail.com',''

create proc ALTA_Paciente(
            @dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fnacimiento varchar(8),
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20)='',
			@email varchar(30),
			@observacion varchar(1000)=''
            )
as 

IF NOT EXISTS(SELECT * FROM Paciente WHERE dni=@dni)
BEGIN 
     INSERT INTO Paciente (dni,nombre,apellido,fnacimiento,domicilio,idpais,telefono,email,observacion) 
	 VALUES (@dni,@nombre,@apellido,@fnacimiento,@domicilio,@idpais,@tel,@email,@observacion)
	 PRINT 'El paciente se agrego correctamente'
END
ELSE
BEGIN
      PRINT 'El paciente ya existe'
      return

END