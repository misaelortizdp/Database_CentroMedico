-- OPERADORES (+,-,/,*,%)

DECLARE @num1 decimal(9,2)=20
DECLARE @num2 decimal(9,2)=30
DECLARE @result decimal(9,2)
DECLARE @resultv VARCHAR(40)
DECLARE @nombre VARCHAR(20)= 'Hola, soy misael, '
DECLARE @apellido VARCHAR(20)='mucho gusto'
--set @result = @num1 + @num2
--set @result = @num1 - @num2
set @result = @num1 * @num2
--set @result = @num2 / @num1
--set @result = @num2 % @num1

set @resultv = @nombre + @apellido
print @result
print @resultv 


-- OPERADORES MAYOR QUE

-- MAYOR (>)
-- MENOR (<)
-- MAYOR IGUAL (>=)
-- MENOR IGUAL (<=)
-- DISTINTO (<>)

--USO EN TEXTO 

-- ES MAYOR CUANDO TIENE MAS CARACTERES
-- CUANDO TIENEN LOS MISMOS CARACTERES SE DETERMINA QUIEN ES MAYOR EN BASE AL 
-- ORDEN DE ALFABETO