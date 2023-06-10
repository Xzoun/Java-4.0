Algoritmo sin_titulo
	Definir frase como cadena
	Escribir "Ingrese una frase o palabra con un máximo de cuatro caracteres por favor."
	Escribir " "
	Escribir "Los espacios contaran como caracteres."
	Leer frase
	Escribir" "
	Si longitud(frase)=4 Entonces
		Escribir concatenar(frase, "!")
	SiNo
		Escribir concatenar(frase, "?")
	FinSi
	Escribir " "
FinAlgoritmo
