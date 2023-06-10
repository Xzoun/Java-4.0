Algoritmo as_as
	Definir u, d, c, num1, num2,num3,num4 Como Real
	Escribir "ingrese un numero de 3 cifras"
	Leer num1
	num2= num1/100
	c= trunc(num2)
	num3= (num1-(c*100))/10
	d= trunc(num3)
	num4= num1-(c*100)-(d*10)
	u= num4 
	
	Escribir " "
	Escribir "Centena " c
	Escribir "Decena " d 
	Escribir "Unidad " u
	Escribir " "
	
FinAlgoritmo
