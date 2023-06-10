Algoritmo sin_titulo
	Definir d, m, a como entero
	Definir bic Como Entero
 	Escribir "Ingrese una fecha, d/m/a"
	Leer d, m, a
	bic= (a mod 4)
	Si (d <= 29) y (m = 2) y (d <> 0) y (m <> 0) y (bic = 0) Entonces
		Escribir d " de febrero de " a
	SiNo
		Si (d <= 31) y (m = 1) y (d <> 0) y (m <> 0) Entonces
			Escribir d "de enero de " a
		SiNo
			Si (d  <= 31) y (m = 3) y (d <> 0) y (m <> 0) Entonces
				Escribir d " de marzo de " a
			SiNo
				Si (d  <= 30) y (m = 4) y (d <> 0) y (m <> 0) Entonces
					Escribir d " de abril de " a
				SiNo
					Si (d  <= 31) y (m = 5) y (d <> 0) y (m <> 0) Entonces
						Escribir d " de mayo de " a
					SiNo
						Si (d  <= 30) y (m = 6) y (d <> 0) y (m <> 0) Entonces
							Escribir d " de junio de " a
						SiNo
							Si (d  <= 31) y (m = 7) y (d <> 0) y (m <> 0) Entonces
								Escribir d " de julio de " a
							SiNo
								Si (d  <= 31) y (m = 8) y (d <> 0) y (m <> 0) Entonces
									Escribir d " de agosto de " a
								SiNo	
									SI (d  <= 30) y (m = 9) y (d <> 0) y (m <> 0) Entonces
										Escribir d " de septiembre de " a
									SiNo
										Si (d  <= 31) y (m = 10) y (d <> 0) y (m <> 0) Entonces
											Escribir d " de octubre de " a
										SiNo
											Si (d  <= 30) y (m = 11) y (d <> 0) y (m <> 0) Entonces
												Escribir d " de noviembre de " a
											SiNo												
												Si (d  <= 31) y (m = 12) y (d <> 0) y (m <> 0) Entonces																					
													Escribir d "de diciembre de " a
												SiNo
												    Escribir "Usted no ingresó una fecha válida."
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

