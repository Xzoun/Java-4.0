Algoritmo sin_titulo
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
	//vez
	Definir VectorA, VectorB, VectorC como entero
	Definir respuesta, r como cadena
	Definir n como entero	
	
	r = "a"
	Escribir "Bienvenido, como primera instancia por favor elija una dimensión para sus vectores"
	Leer n
	Dimension VectorA(n)
	Dimension VectorB(n)
	Dimension VectorC(n)
	Mientras r <> "F" Hacer
		Escribir "Seleccione una de las siguientes opciones."
		Escribir "A. Llenar Vector A" 
		Escribir "B. Llenar Vector B." 
		Escribir "C. Llenar Vector C con la suma de los vectores A y B."
		Escribir "D. Llenar Vector C con la resta de los vectores B y A."
		Escribir "E. Ver un Vector" 
		Escribir "F. Salir."
		Escribir " "
		Leer respuesta
		r=mayusculas(respuesta)
		Si r = "A" Entonces
			LlenarVectorA(VectorA,n)
		FinSi
		Si r = "B" Entonces
			LlenarVectorB(VectorB,n)
		FinSi
		Si r = "C" Entonces
			Suma(VectorA,VectorB,VectorC,n)
		FinSi
		Si r = "D" Entonces
			Resta(VectorA,VectorB,VectorC,n)
		FinSi
		Si r = "E" Entonces
			Ver(VectorA,VectorB,VectorC,n)
		FinSi
	Fin Mientras
FinAlgoritmo


Subproceso LlenarVectorA(a,n)
	Definir i como entero
		Para i = 0 hasta n-1
			a(i)=Aleatorio(0,9)
		FinPara
	Escribir " "
	Escribir "Vector lleno, seleccione una acción."
	Escribir " "
FinSubProceso

Subproceso LlenarVectorB(b,n)
	Definir i como entero
		Para i = 0 hasta n-1
			b(i)=Aleatorio(0,9)
		FinPara
	Escribir " "
	Escribir "Vector lleno, seleccione una acción"
	Escribir " "
	
FinSubProceso
Subproceso Suma(a,b,c,n)
	Definir i Como Entero
		Para i = 0 hasta n-1
			c(i) = a(i) + b(i)
		FinPara
	Escribir " "
	Escribir "Vector lleno, seleccione una acción"
	Escribir " "	
FinSubProceso

Subproceso Resta(a,b,c,n)
	Definir i Como Entero
		Para i = 0 hasta n-1
			c(i) = b(i) - a(i)
			
		FinPara
	Escribir "Vector lleno, seleccione una acción"
FinSubProceso

Subproceso Ver(a,b,c,n)
	Definir i Como Entero
	Escribir sin saltar "Su Vector A de dimensión " n " es ("
		Para i = 0 hasta n-1
			Escribir sin saltar a(i) " "
		FinPara
	Escribir ")" 
	Escribir " "
	Escribir sin saltar "Su Vector B de dimensión " n " es ("
		Para i = 0 hasta n-1
			Escribir sin saltar b(i) " "
		FinPara
	Escribir ")" 
	Escribir " "
	Escribir sin saltar "Su Vector C de dimensión " n " es ("
		Para i = 0 hasta n-1
			Escribir sin saltar c(i) " "
		FinPara
	Escribir ")" 
	Escribir " "
FinSubProceso


