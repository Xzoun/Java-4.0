Algoritmo sin_titulo
//	. Realizar un programa que pida una frase y el programa deberá mostrar la frase con un 
//espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el funcionamiento 
//		de la función Subcadena().
//	NOTA:. En PseInt, si queremos escribir sin que haya saltos de línea, al final de la operación 
//		"escribir" escribimos "sin saltar". Por ejemplo: 
//			Escribir sin saltar "Hola, "
//			Escribir sin saltar "cómo estás?"
	//		Imprimirá por pantalla: Hola, cómo estás?
	Definir i Como Entero
	Definir frase como cadena
	Definir frase2 como entero
	Definir frase1 como caracter
	Escribir "Ingrese una frase."
	Leer frase
	
	
	
frase2<-Longitud(frase) //Cantidad de caracteres en la frase

Para i=0 hasta frase2 con paso 1 Hacer
		frase1<-subcadena(frase, i, i) //Primera Letra
		Escribir sin saltar frase1 " "
FinPara
	Escribir " "
FinAlgoritmo
