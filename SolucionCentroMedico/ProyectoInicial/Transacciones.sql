


SELECT * FROM Paciente

BEGIN TRANSACTION 
      UPDATE Paciente SET telefono=444 where apellido='palomino'

if @@ROWCOUNT = 1
   COMMIT TRAN
else
   ROLLBACK TRANSACTION 


select * from turno 

BEGIN TRAN 
      DELETE from turno WHERE estado=0
if @@ROWCOUNT = 1
   COMMIT TRAN 
else
   ROLLBACK 