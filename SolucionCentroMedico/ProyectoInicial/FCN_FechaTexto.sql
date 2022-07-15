

-- print dbo.FCN_FechaTexto ('19950205')

CREATE FUNCTION FCN_FechaTexto (@fecha datetime)

RETURNS VARCHAR(60) 

AS 
BEGIN 

declare @dia varchar(20)
declare @mes varchar(20)
declare @fechatexto varchar(60)

set @dia = (CASE WHEN DATEPART(dw,@fecha) = 1 THEN 'Domingo ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 2 THEN 'Lunes ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 3 THEN 'Martes ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 4 THEN 'Miercoles ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 5 THEN 'Jueves ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 6 THEN 'Viernes ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
				 WHEN DATEPART(dw,@fecha) = 7 THEN 'Sabado ' + CONVERT (CHAR(2),DATEPART(dd,@fecha))
			END)
								
set @mes = (CASE WHEN DATEPART(mm,@fecha) = 1 THEN 'Enero'
				 WHEN DATEPART(mm,@fecha) = 2 THEN 'Febrero'
				 WHEN DATEPART(mm,@fecha) = 3 THEN 'Marzo'
				 WHEN DATEPART(mm,@fecha) = 4 THEN 'Abril'
				 WHEN DATEPART(mm,@fecha) = 5 THEN 'Mayo'
				 WHEN DATEPART(mm,@fecha) = 6 THEN 'Junio'
				 WHEN DATEPART(mm,@fecha) = 7 THEN 'Julio'
				 WHEN DATEPART(mm,@fecha) = 8 THEN 'Agosto'
				 WHEN DATEPART(mm,@fecha) = 9 THEN 'Septiembre'
				 WHEN DATEPART(mm,@fecha) = 10 THEN 'Octubre'
				 WHEN DATEPART(mm,@fecha) = 11 THEN 'Noviembre'
				 WHEN DATEPART(mm,@fecha) = 12 THEN 'Diciembre'
			END)

set  @fechatexto = @dia + 'de ' + @mes + ' del ' + convert (char(4),datepart(YYYY,@fecha))
RETURN @fechatexto

END