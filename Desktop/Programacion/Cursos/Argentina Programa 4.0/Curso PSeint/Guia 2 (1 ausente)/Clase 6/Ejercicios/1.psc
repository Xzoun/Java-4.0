Algoritmo sin_titulo
	Definir num1, num2 Como real
	Definir op Como Caracter
	Definir op2 como caracter
	Escribir "Ingrese una la primera letra de la operación que desea realizar."
	Leer op
	op2 = Minusculas(op)
	Escribir "Ingrese los valores."
	Leer num1, num2
	Segun op2 Hacer
		"r":
			Escribir num1 - num2
		"s":
			Escribir num1 + num2
		"d":
			Escribir num1 / num2
		"m":
			Escribir num1 * num2
		De Otro Modo:
			Escribir "La operación ingresada no es válida."
	Fin Segun
FinAlgoritmo
