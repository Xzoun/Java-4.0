//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide desarro-
//llar un programa que:
//	
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una posi-
//	ción dentro del arreglo, y el programa debe intentar ingresar el carácter en la posición
//	
//	indicada, si es que hay lugar (es decir la posición está vacía o es un espacio en
//	blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado, de
//	lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.

Algoritmo E1821EJ6
	
	Definir frase como cadena
	Definir letra, cara Como Caracter
	definir i, pos como entero
	Dimension letra[20]
	
	repetir 
		Escribir "Ingrese una frase"
		leer frase
		si longitud(frase) > 20
			Escribir "su frase tiene mas de 20 caracteres"
		FinSi
	mientras que longitud(frase) > 20
	
	// Resolviendo A.
	para i = 0 hasta 19
		si i<= Longitud(frase) 
			letra[i] = Subcadena(frase, i,i)
		SiNo
			letra[i] = " "
		FinSi
	FinPara
	
	Escribir "Indique un caracter a ingresar"
	Leer cara
	Escribir "Establezca la posicion del carácter"
	leer pos
	
	Si letra[pos] = " " O letra[pos] = ""
		Escribir "Encontré lugar para poner el caracter " cara " en la posicion " pos
		letra[pos] = cara
		para i = 0 hasta 19
			Escribir Sin Saltar letra[i] 
		FinPara
		Escribir ""
	sino 
		Escribir "El lugar en la posicion " pos " esta ocupado por " letra[pos]
	FinSi
	
FinAlgoritmo
