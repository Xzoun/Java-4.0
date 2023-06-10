

Algoritmo sin_titulo
//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//a) La tarifa de las horas diurnas es de $ 90
//b) La tarifa de las horas nocturnas es de $ 125
//c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//un 15% si el turno es nocturno.
//El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día	
//de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además, debe-
//mos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o	
//no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.
Definir nombre, fest, turno como cadena
Definir num1 Como Entero
	
	Escribir"Ingrese el nombre del empleado."
	leer nombre
	Escribir "Bien, ¿Es un día festivo? S/N"
	Leer fest
	Escribir "¿Cuántas horas trabajó el empleado?"
	Leer num1
	Escribir "Bueno, ingrese el turno. N/D"
	leer turno

num1 <- h(nombre, fest, turno, num1)

FinAlgoritmo

Funcion num1 <- h(n,f,t,n1)
	Si (t = "d" o t = "D") y (f = "n" o f = "N") entonces
		Escribir n " debe cobrar $" n1*90 " por las horas trabajadas."
	SiNo
		Si (t = "d" o t = "D") y (f = "s" o f = "S")
			Escribir n " debe cobrar $" (n1*90)*0.1+(n1*90) " por las horas trabajadas."
		SiNo
			Si (t = "n" o t = "N") y (f = "n" o f = "N")
				Escribir n " debe cobrar $" n1*125 " por las horas trabajadas."
			SiNo
				Si (t = "n" o t = "N") y (f = "s" o f = "S")
				Escribir n " debe cobrar $" (n1*125)*0.15+(n1*125) " por las horas trabajadas."
					
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion









	