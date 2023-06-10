Algoritmo sin_titulo
	Definir frase Como cadena
	Definir frase2, frase4 Como Caracter
	Definir frase3 Como Entero
	Escribir "Ingrese una frase o palabra"
	leer frase 
	frase2<-subcadena(frase, 0, 0) //Primera Letra
	frase3<-Longitud(frase) //Cantidad de caracteres en la frase
	frase4<-subcadena(frase, frase3-1,frase3-1)//ultima letra
	Si (frase4=Frase2) Entonces
		Escribir "CORRECTO"
	SINO 
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
