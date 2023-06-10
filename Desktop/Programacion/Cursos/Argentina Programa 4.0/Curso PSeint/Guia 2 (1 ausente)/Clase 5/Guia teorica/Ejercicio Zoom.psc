Algoritmo sin_titulo
	Definir h1, h2 Como Entero
	Escribir "Por favor ingrese el horario de ingreso al zoom. En formato 24 hs."
	Leer h1, h2
	Si (h1 <= 19) y (h2 <= 15) Entonces
		Escribir "Llegaste a tiempo, tienes presente."
	SiNo
		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde." 
		Escribir "Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
	FinSi
	
FinAlgoritmo
