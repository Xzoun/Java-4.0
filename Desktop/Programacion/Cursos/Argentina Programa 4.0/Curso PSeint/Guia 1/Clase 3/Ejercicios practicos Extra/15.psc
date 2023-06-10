Algoritmo sin_titulo
	//Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de
	//viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que determine la
	//hora de llegada a la ciudad B.
	
	definir hh, mm ,ss , t, hi, mi, s, hf, mf, sf Como real
	Escribir "ingrese cuantos segundos le toma llegar de la ciudad A a la ciudad B"
	leer t
	Escribir " "
	Escribir "Bien, ahora ingrese el horario en que inicio el viaje. Hora/Minutos/Segundos"
	Leer hi, mi, s
	
	
	ss = t
	mm = trunc(t/60)
	hh = trunc(mm/60)
	
	hf= hh+hi
	mf= mm+mi
	sf= trunc((ss+s) mod 60)
	
	Escribir " "
	Escribir "El horario de llegada es: " hf, ":", mf ":", sf
	Escribir " "
	
FinAlgoritmo
