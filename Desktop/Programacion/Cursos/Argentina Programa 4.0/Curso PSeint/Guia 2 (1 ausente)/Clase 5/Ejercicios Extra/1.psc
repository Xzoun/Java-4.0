Algoritmo sin_titulo
	Definir n1, n2, n3, nfinal Como Real
	Escribir "Ingrese la nota de sus tres examenes en formato 0/100."
	Leer n1, n2, n3
	nfinal = (n1 + n2 + n3)/3
	Si (nfinal >= 70) y (n1 <= 100) y (n2 <= 100) y (n3 <= 100) Entonces
		Escribir "Felicidades, usted está aprobado!"
	SiNo
		Escribir "Reprobaste."
	FinSi
FinAlgoritmo
