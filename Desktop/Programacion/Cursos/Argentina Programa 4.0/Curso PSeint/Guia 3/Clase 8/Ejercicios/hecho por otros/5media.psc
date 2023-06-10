///acer un algoritmo para calcular la media de los números pares e impares, sólo se
///ingresará diez números.

Algoritmo media
	Definir num,i,i1,i2,sum1,sum2 Como Entero
	Definir promedio1, promedio2 Como Real
	i=0
	i1=0
	i2=0
	sum1=0
	sum2=0
	Hacer
		Escribir "Ingresar un número"
		Leer num
		i=i+1
		si num mod 2 =0 Entonces
			sum1=sum1+num
			i1=i1+1
		SiNo
			sum2=sum2+num
			i2=i2+1
			
		FinSi
	Mientras Que i<>10
	
	
	Si i1>0 Entonces
		promedio1=sum1/i1
		Escribir "Promedio números pares: " promedio1
	FinSi

	Si i2>0 Entonces
		promedio2=sum2/i2
		Escribir "Promedio números impares: " promedio2
	FinSi
	
FinAlgoritmo
