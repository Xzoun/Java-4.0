Algoritmo sin_titulo
//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número es múltiplo del segundo y devuelva verdadero si el primer número es
//múltiplo del segundo, sino es múltiplo que devuelva falso.
	Definir num1, num2 Como Entero
	Escribir "Ingrese dos valores."
	Leer num1,num2
	
	mult(num1, num2)
	
FinAlgoritmo
	
	SubProceso mult(a,b)
	Si a mod b =0 Entonces
			Escribir a " es múltiplo de " b "."
	SiNo
		Escribir a " no es múltiplo de " b "."
	FinSi
FinSubProceso


