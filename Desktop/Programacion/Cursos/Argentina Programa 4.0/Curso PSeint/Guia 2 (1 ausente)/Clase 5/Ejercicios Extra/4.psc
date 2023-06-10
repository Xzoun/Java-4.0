Algoritmo ejercicioNafta
	Definir a, b, c, d, m Como Real
	Escribir "Ingrese las horas que se utilizo el vehiculo, luego los minutos."
	Leer a, m
	Escribir "Perfecto. Por último ingrese la cantidad de litros de nafta gastados."
	Leer b
	c = ((a+m)*5.20)
	d = (b*40)
	
  	si a < 2 Entonces
		Escribir "Debe abonar $400."
	SiNo
		Escribir "Debe abonar $" c+d
	FinSi
	
FinAlgoritmo
