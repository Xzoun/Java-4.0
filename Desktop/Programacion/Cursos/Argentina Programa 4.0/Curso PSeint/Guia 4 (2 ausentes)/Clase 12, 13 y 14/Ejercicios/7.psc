Algoritmo sin_titulo
//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con decimales 
//ni letras. Ejemplo: ingresando "100"(carácter)
//debe convertirse en 100(entero).
	Definir num1 como cadena
Escribir "Ingrese un número."
Leer num1
	ANum(num1)
FinAlgoritmo

Subproceso ANum(a)
	Si longitud(a)<=3 Entonces
		Escribir ConvertirANumero(a)
	FinSi
FinSubProceso

