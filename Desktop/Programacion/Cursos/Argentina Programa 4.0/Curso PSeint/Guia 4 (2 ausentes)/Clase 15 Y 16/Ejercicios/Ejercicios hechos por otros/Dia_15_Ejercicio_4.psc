Algoritmo sin_titulo
	Definir frase Como Cadena
	Escribir "Ingrese la frase: "
	Leer frase
	CambiarFrase(frase)
FinAlgoritmo

//	4 - Escribir un programa que procese una secuencia de caracteres ingresada por teclado y termi-
//  nada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vo-
//	cal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (inclu-
//	yendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación co-
//	rrespondiente. Utilice la estructura "según" para la transformación.
//		
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//	La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//	NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

SubProceso CambiarFrase(frase_1 Por Referencia)
	Definir frase_aux Como Cadena
	Definir i Como Entero
	Definir letra Como Caracter
	i = 1
	frase_aux = "" // h%
	letra = SubCadena(frase_1,i,i)
	
	Mientras letra <> "." Hacer // EJEMPLO --> hola. --> h --> % --> l --> @
		Segun letra Hacer
			"a":
				frase_aux = Concatenar(frase_aux,"@")
			"e":
				frase_aux = Concatenar(frase_aux,"#")
			"i":
				frase_aux = Concatenar(frase_aux,"$")
			"o":
				frase_aux = Concatenar(frase_aux,"%")
			"u":
				frase_aux = Concatenar(frase_aux,"*")
			"A":
				frase_aux = Concatenar(frase_aux,"@")
			"E":
				frase_aux = Concatenar(frase_aux,"#")
			"I":
				frase_aux = Concatenar(frase_aux,"$")
			"O":
				frase_aux = Concatenar(frase_aux,"%")
			"U":
				frase_aux = Concatenar(frase_aux,"*")
			De Otro Modo:
				frase_aux = Concatenar(frase_aux,letra)
		Fin Segun
		i = i + 1
		letra = SubCadena(frase_1,i,i)
	Fin Mientras
	frase_1 = frase_aux
	Escribir "La frase nueva es: ", frase_1
	
FinSubProceso
	