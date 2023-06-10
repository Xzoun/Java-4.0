//Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
//un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
//posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
//o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
//	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	más cercano.
Algoritmo EjercicioExtraEncuentro21EJ5
	Definir frase como cadena
	Definir letra, cara Como Caracter
	definir i, pos, distancia,aux como entero
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
		
		letra[i] = Subcadena(frase, i,i)
		
	FinPara
	
	Escribir "Indique un caracter a ingresar"
	Leer cara
	Escribir "Establezca la posicion del carácter"
	leer pos
	
	aux=20
	para i = 0 hasta 19
		si letra[i] = " " 
			distancia=abs(i-pos)
			
			si distancia<aux Entonces
				aux=distancia
				
			FinSi
		FinSi
	FinPara
	si aux>pos Entonces //resolvemos para la derecha
			
		
		Para i=Longitud(frase) Hasta pos
			letra[i+1]=letra[i]
			
		FinPara
		
	
	SiNo//resolvemos para la izquierda
	Para i=aux Hasta pos
		letra[i]=letra[i+1]
		
	FinPara
	
		
	FinSi
	letra[pos]=cara
	
	Para i=0 Hasta 19
		Escribir Sin Saltar letra[i]
	FinPara
	
FinAlgoritmo
