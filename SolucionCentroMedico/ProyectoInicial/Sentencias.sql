--SENTENCIA CREATE

create type pais from char(3)

create function nombrefun (@var int)

RETURNS int


AS

BEGIN
     set @var = @var*5
	 return @var
     
END

select dbo.nombrefun (256)

--SENTENCIA ALTER

ALTER TABLE paciente ADD estado smallint 
SELECT * FROM PACIENTE

ALTER TABLE paciente ALTER COLUMN estado bit 
ALTER TABLE Paciente DROP COLUMN estado

-- SENTENCIA DROP 

CREATE TABLE ejemplo (CAMPO0 int IDENTITY (1,1), campo1 int, campo2 int )
DROP TABLE ejemplo

-- SENTENCIA TRUNCATE (ELIMINA TODOS LOS REGISTROS)

SELECT * FROM ejemplo

insert into ejemplo values(2,3)

truncate table ejemplo 