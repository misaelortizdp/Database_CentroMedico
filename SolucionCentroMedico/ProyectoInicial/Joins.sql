

select * from paciente
select * from TurnoPaciente

-- INNER JOIN

select * from paciente P 
INNER JOIN TurnoPaciente T 
ON P.idpaciente = T.idpaciente

-- LEFT JOIN
select * from paciente P 
LEFT JOIN TurnoPaciente T 
ON P.idpaciente = T.idpaciente

-- RIGHT JOIN
select * from paciente P 
RIGHT JOIN TurnoPaciente T 
ON P.idpaciente = T.idpaciente

-- CONSIDERACIONES
-- 1. SIEMPRE SE DEBEN HACER LAS CONEXIONES CON LAS PRIMARY KEYS DE LAS TABLAS
-- 2. COLOCAR EL PRIMER CAMPO DE LA CLUSULA ON SEA EL DE LA PRIMERAA TABLA, EN ORDEN. 
-- 3. USAR ALIAS DE TABLAS


------------------------------------------

-- UNION - se unen dos consultas diferentes


INSERT INTO turno (fechaturno,estado,observacion) VALUES ('20200603',2,'paciente con nuevo estado')

select * from turno where estado=0
UNION 
SELECT * FROM TURNO where estado=1


-- Para unir se deben tener los mismos campos con el mismo tipo de dato
select idTurno from turno where estado=0 
UNION
SELECT idpaciente FROM paciente 

-- UNION ULL - No elimina las repeticiones