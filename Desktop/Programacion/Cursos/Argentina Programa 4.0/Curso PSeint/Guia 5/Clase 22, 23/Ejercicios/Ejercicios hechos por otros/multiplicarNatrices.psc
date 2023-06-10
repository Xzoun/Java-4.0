Algoritmo multiplicarNatrices
	definir A , B , C, i, j , k , w , v ,h ,m ,n Como Entero
	m = 3
	n = 3
	
	
	Dimension A(m,n)
	Dimension B(m,n)
	Dimension C(m,n)
	
	A[0,0] = 9
	A[0,1] = 5
	A[0,2] = 4
	
	A[1,0] = 3
	A[1,1] = 1
	A[1,2] = 8
	
	A[2,0] = 5
	A[2,1] = 9
	A[2,2] = 6
	
	B[0,0] = 1
	B[0,1] = 8
	B[0,2] = 1
	
	B[1,0] = 0
	B[1,1] = 8
	B[1,2] = 2
	
	B[2,0] = 5
	B[2,1] = 4
	B[2,2] = 5
	
	
	para i = 0 Hasta 2 Hacer
		para j = 0 Hasta 2 Hacer
			C[i,j] = 0
		FinPara
	FinPara
	para i = 0 Hasta 2 Hacer
		para j = 0 Hasta 2 Hacer
			escribir Sin Saltar A[i,j] " "
		FinPara
		Escribir " "
	FinPara	
	escribir " "
	para i = 0 Hasta 2 Hacer
		para j = 0 Hasta 2 Hacer
			escribir Sin Saltar B[i,j] " "
		FinPara
		Escribir " "
	FinPara
	
	// i = 0-------------------------primera fila --------------------------
	// w va de 0 a n-1 multiplicando la primera fila por cada columna 
	i = 0
	j = 0
	k = 0
	w = 0
	h = 0
	v = 0
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j = j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	i = 0
	j = 0	
	k = 0
	w = 1
	h = 0
	v = 1
	
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	
	i = 0
	j = 0	
	k = 0
	w = 2
	h = 0
	v = 2
	
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	escribir " " 
	//fin i = 0 -----------------------------rmpieza la fila dos  -------------------------
	i = 1
	j = 0	
	k = 0
	w = 0
	h = 1
	v = 0
	
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	
	i = 1
	j = 0	
	k = 0
	w = 1
	h = 1
	v = 1
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	
	i = 1
	j = 0	
	k = 0
	w = 2
	h = 1
	v = 2
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	Escribir " "
	//termina la fila 2 ------------------------------------------------------empieza fila 3-----------------------
	i = 2
	j = 0	
	k = 0
	w = 0
	h = 2
	v = 0
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	
	i = 2
	j = 0	
	k = 0
	w = 1
	h = 2
	v = 1
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	
	i = 2
	j = 0	
	k = 0
	w = 2
	h = 2
	v = 2
	
	para k = 0 Hasta n-1 hacer
		C[h,v]  = C[h,v]+A[i,j]*B[k,w]	
		j= j +1
	FinPara
	Escribir Sin Saltar C[h,v] " "
	escribir " "
	
FinAlgoritmo
