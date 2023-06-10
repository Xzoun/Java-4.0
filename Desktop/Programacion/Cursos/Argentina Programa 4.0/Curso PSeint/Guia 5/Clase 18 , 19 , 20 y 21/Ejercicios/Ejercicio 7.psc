Algoritmo sin_titulo
//Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. 
//La función debe devolver el resultado de esta validación, para mostrar el mensaje en el algoritmo.
//Nota: recordar el uso de las variables de tipo lógico.
	Definir Vector1, Vector2, n, j como entero
	
	Escribir "Ingrese el tamaño de los vectores."
	Leer n
	Dimension Vector1(n), Vector2(n)
	Relleno(Vector1,Vector2,n)
	Igualdad(Vector1,Vector2,n)

//	Para j=0 hasta n-1
//		Escribir sin saltar Vector2(j) " "
//	FinPara
//	Escribir " "
//	Para j=0 hasta n-1
//		Escribir sin saltar vector1(j) " "
//	FinPara
//	Escribir " "
FinAlgoritmo
Funcion Relleno(V1,V2,n)
	Definir i Como Entero
	Para i=0 hasta n-1
		v1(i)=Aleatorio(0,3)
		V2(i)=Aleatorio(0,3)
	FinPara
	
FinFuncion
Funcion Igualdad(V1,V2,n)
	Definir iguald como logico
	Definir i, cont Como Entero
cont = 0
Para i = 0 hasta n-1
	Si v1(i) = v2(i)
		cont = cont + 1
	FinSi
FinPara
Si cont = n Entonces
	Escribir "Todos sus valores son iguales."
SiNo
	Escribir "No todos sus valores son iguales."
FinSi
FinFuncion
	