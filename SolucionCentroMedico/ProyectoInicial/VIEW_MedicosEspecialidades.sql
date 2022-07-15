CREATE VIEW VIEW_MedicosEspecialidades AS 

select * from medico M inner join 
MedicoEspecialidad ME 
on m.idMedico = me.idMedico  