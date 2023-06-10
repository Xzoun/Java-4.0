Algoritmo sin_titulo	
	
	Definir Num1 Como Real
	Escribir "Ingrese los kilos de manzana que desea comprar."
	Leer Num1
	Si Num1 >= 0 y num1 <= 2 Entonces
		Escribir "Deberá abonar el 100% del producto. $" num1*800
	SiNo
		Si Num1 >= 2.01 y Num1 <= 5 Entonces
			Escribir "Cuenta con un 10% de descuento. $" num1*(800-(800*0.1)) "."
		Sino 
			Si Num1 >= 5.01 y num1 <= 10 Entonces
				Escribir "Cuenta con un 15% de descuento. $" num1*(800-(800*0.15)) "."
			Sino 
				Escribir "Cuenta con un 20% de descuento. $" num1*(800-(800*0.2)) "."
			FinSi
		FinSi
	FinSi
FinAlgoritmo
