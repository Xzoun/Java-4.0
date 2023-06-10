Algoritmo sin_titulo
	Definir nota1, nota2, nota3, nota4, notaf Como real
	Escribir "Ingrese la primer nota: "
	Leer nota1
	Escribir "Ingrese la segunda nota: "
	Leer nota2
	Escribir "Ingrese la tercera nota: "
	Leer nota3
    Escribir "Ingrese la cuarta nota: "
	Leer nota4
	
	Si nota1 < nota2 y nota1 < nota3 y nota1 < nota4  Entonces
		notaf = (nota2 + nota3 + nota4) / 3
		Escribir "La nota final es " notaf
	SiNo
		SI nota2 < nota1 y nota2 < nota3 y nota2 < nota4  Entonces
		notaf = (nota1 + nota3 + nota4) / 3
		Escribir "La nota final es " notaf
		SiNo
			si nota3 < nota1 y nota3 < nota2 y nota3 < nota4  Entonces
		        notaf = (nota1 + nota2 + nota4) / 3
		         Escribir "La nota final es: " notaf
				
			SiNo
				
				notaf = (nota1 + nota2 + nota3) / 3
		         Escribir "La nota final es " notaf
					
				
			FinSi
		FinSi
	Fin Si
FinAlgoritmo

