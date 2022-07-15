


-- CREACION DE BACKUP CON FECHA DINAMICA  

declare @fecha char(12)
declare @path varchar(100)
declare @name varchar(20)


set @fecha = convert(char(8),getdate(),112) + replace(convert(char(5),getdate(),108),':','')
set @path = 'C:\BackupCentroMedico\CentroMedico'+@fecha+'.bak'
set @name = 'CentroMedico'+@fecha

BACKUP DATABASE CentroMedico
TO DISK =  @path
WITH NO_COMPRESSION, NAME= @name

