

-- select * from paciente

-- EXEC UPD_Paciente 1, 58, 'duvan', 'ortiz', '19950205', 'Miami',	'USA', '555888', 'duvan@nice', 'modificado correctamente'


CREATE PROC UPD_Paciente(@idpaciente paciente,
				@dni varchar(20),
				@nombre varchar(50) ,
				@apellido varchar(50) ,
				@fnacimiento date,
				@domicilio varchar(20) ,
				@idpais char(3),
				@telefono varchar(20) ,
				@email varchar(30) ,
				@observacion observacion)

AS
SET NOCOUNT ON 

IF exists(SELECT * FROM paciente
			WHERE idPaciente = @idpaciente)
	UPDATE Paciente SET dni = @dni,
						nombre = @nombre,
						apellido = @apellido,
						fnacimiento = @fnacimiento,
						domicilio = @domicilio,
						idPais = @idpais,
						telefono = @telefono,
						email = @email,
						observacion = @observacion
					WHERE idPaciente = @idpaciente

ELSE
	SELECT 0 AS resultado 


	



