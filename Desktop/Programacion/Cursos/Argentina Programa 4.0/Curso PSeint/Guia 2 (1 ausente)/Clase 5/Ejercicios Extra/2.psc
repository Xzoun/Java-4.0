Algoritmo sin_titulo
	Definir n3 como cadena
	Definir n2 Como Real
	Definir n1 Como Caracter
	Escribir "Ingrese el mes en que realizó la compra."
	Leer n1
	Escribir "Bien, ahora ingrese el importe de la misma."
	Leer n2
	
	n3 = Minusculas(n1)
	
	Si (n3 = "septiembre") o (n3 = "octubre") o (n3 = "noviembre") Entonces
		Escribir "El cliente debe abonar $" n2-(n2*0.1)
	SiNo
		Escribir "El cliente debe abonar $" n2
	FinSi
FinAlgoritmo
