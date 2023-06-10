Algoritmo HoraLlegada
	Definir hp, mp, sp, sv, st, hll, mll, sll, aux Como Entero
	Escribir "Este programa muestra la hora de llegada sabiendo el horario de partida y los segúndos que duró el viaje."
	Escribir "Ingresar hora de partida:"
	Leer hp
	Escribir "Ingresar minutos de partida:"
	Leer mp
	Escribir "Ingresar segundos de partida:"
	Leer sp
	Escribir "Ingresar los segundos que duró el viaje:"
	Leer sv
	st=(hp*3600)+(mp*60)+sp+sv
	hll=trunc(st/3600)
	aux=(st MOD 3600)
	mll=trunc(aux/60)
	sll=(aux MOD 60)
	Escribir "La hora de llegada es: " hll ":" mll ":" sll
FinAlgoritmo
