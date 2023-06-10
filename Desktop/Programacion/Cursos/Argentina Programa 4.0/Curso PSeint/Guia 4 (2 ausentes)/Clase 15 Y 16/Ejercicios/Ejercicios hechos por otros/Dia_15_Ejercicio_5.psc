Algoritmo sin_titulo
//	5 - Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//	una cadena con un espacio adicional tras cada letra.
//	Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//	dicho procedimiento.
	
	Definir frase Como Cadena
	Escribir "Ingrese la frase: "
	Leer frase
	convertirEspaciado(frase)
	
FinAlgoritmo

SubProceso convertirEspaciado (frase_1 Por Referencia) // EJEMPLO --> hola
	Definir frase_aux Como Cadena
	Definir i Como Entero
	frase_aux = ""
	
	Para i<-1 Hasta Longitud(frase_1) Con Paso 1 Hacer
		frase_aux = Concatenar(frase_aux,Subcadena(frase_1,i,i)) // h 	
		frase_aux = Concatenar(frase_aux," ") // 
	Fin Para
	
	frase_1 = frase_aux
	
	Escribir "La nueva frase es: ", frase_1
	
	
	
FinSubProceso
	