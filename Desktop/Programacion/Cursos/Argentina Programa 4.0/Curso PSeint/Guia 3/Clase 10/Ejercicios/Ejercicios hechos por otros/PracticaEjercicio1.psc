Algoritmo PracticaEjercicio1
	
	Definir n, x, i, v Como Entero
	Definir sueldo, com, comision, venta, ventas Como Real
	
	
	Escribir "Ingrese la cantidad de vendedores: "
	leer n
	
	sueldo = 0
	comision = 0
	com = 0
	
	para i <- 1 hasta n Hacer
		
		Escribir "Ingrese el sueldo base del vendedor: "
		leer sueldo
		
		Escribir "Cuantas ventas realizo el vendedor: "
		leer v
		
		com = 0
		Para x <- 1 hasta v Hacer
			Escribir "Ingrese el monto por la venta: "
			leer venta
			
			com = com + venta
			
			
			
		FinPara
		
		comision = com * 0.10
		Escribir comision
		
		Escribir "El sueldo semanal del vendedor es: " sueldo
		Escribir "Lo que debera pagar mas la comision es: " sueldo + comision
		
	FinPara
	
FinAlgoritmo
