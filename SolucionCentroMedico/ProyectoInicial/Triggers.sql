
CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT 
AS

IF (SELECT idpais FROM inserted) = 'MEX'
	INSERT INTO PacienteLog (idpaciente,idpais,fechaAlta)
		SELECT i.idpaciente, i.idpais, GETDATE() FROM inserted i 

		-- select * from pacientelog

