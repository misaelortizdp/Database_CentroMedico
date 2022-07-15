

-- FUNCTIONS LEFT AND RIGHT 

declare @var1 varchar(20)
declare @var2 varchar(20)
-- set @var1 = 'RAMIR"O'
-- set @var2 = 'GONZ@ALEZ'



--print LEFT(@var1, 2)
-- print RIGHT(@var1, 2)


-- FUNCTION LEN 

-- PRINT LEN (@var1)
-- PRINT LEN (@var2)


-- Combination of functions LEF and LEN
--print LEFT(@var1,LEN(@var1)-1) 

-- FUNCTION LOWER AND UPPER 
--print lower(@var1)
-- print upper(@var2)



-- Combination of functions
-- print UPPER (LEFT(@var1, 1)) + LOWER (RIGHT(@var1, LEN(@var1)-1)) + ' ' + UPPER (LEFT(@var2, 1)) + LOWER (RIGHT(@var2, LEN(@var2)-1))

-- FUNCTION REPLACE 

--set @var1 = 'RAMIR"O'
-- set @var2 = 'GONZ@ALEZ'


-- select REPLACE(@var1, '"', '')
-- select REPLACE(@var2, '@', '')

-- FUNCTION REPLICATE

print REPLICATE (@var1, 5)


-- FUNCTION LTRIM AND RTRIM

-- set @var1 = '          Ramiro     '
-- set @var2 = 'Gonzalez       '
-- select LTRIM(RTRIM(@var1)) +' '+ LTRIM(RTRIM(@var2))+'*'

-- FUNCTION CONCAT 

   --set @var1 = '          Ramiro     '
   --set @var2 = 'Gonzalez       '

   --select CONCAT(LTRIM(RTRIM(@var1)),' ',  LTRIM(RTRIM(@var2)))

-- FUNCTION GETDATE and GETUTCDATE

  select GETDATE() -- time based on where the server is hosted
  select GETUTCDATE() -- MERIDIAN BASED TIME 


  -- FUNCTION DATEADD

  select dateadd(day, -2,getdate())
  select dateadd(hour, 3, getdate()) 

  -- FUNCTION DATEDIFF

  select DATEDIFF(YEAR, GETDATE(), '20201212')-- SHOW DIFFERENCE BETWEEN TWO DATES 

  -- FUNCTION DATEPART 

  select DATEPART(DW, GETDATE()) -- DW= weekday

  -- FUNCTION ISDATE

  print ISDATE(GETDATE()) -- Return 0 or 1, 1 = true and 0 = false
  print ISDATE('20200230')

 if ISDATE('20240229')=1
    print 'es una fecha'
 else 
    print 'fecha incorrecta' 


-- FUNCTION CAST AND CONVERT
    
	DECLARE @numero money
	
	--set @numero = 500.40

	--print @numero

	--SELECT CAST (@numero as INT) numero -- convert data type to the same format 
	--SELECT CAST(idpaciente as money) FROM  paciente 

	select convert(int, @numero)


	declare @fecha datetime
	set @fecha = getdate()
	print @fecha

	print convert(char(20), @fecha, 112) -- Parameters = datatype,  variable, format 


