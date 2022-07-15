
CREATE PROC SEL_EspecialidadesMedicas

AS
set nocount on 

IF exists(SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE
	SELECT 0 AS resultado

	