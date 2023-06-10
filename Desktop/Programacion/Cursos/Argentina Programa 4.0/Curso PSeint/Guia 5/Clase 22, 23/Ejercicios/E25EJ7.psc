Algoritmo E25EJ7
//	Una empresa de venta de productos por correo desea realizar una estadística de las ventas realizadas de cada uno
//de sus productos a lo largo de una semana. Distribuya luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
//El informe final tendrá un formato como el que se muestra a continuación:
	
	Definir ventas, i, j, masvendido, g, h como entero
	Definir diaSemana, Producto Como Cadena
	dimension ventas[7,6], diaSemana[5], producto(7)
	diaSemana[0] = "Lunes     "
	diaSemana[1] = "Martes    "
	diaSemana[2] = "Miércoles "
	diaSemana[3] = "Jueves    "
	diaSemana[4] = "Viernes   "
	Producto(0) = "Alfajores           "
	Producto(1) = "Chupetines          "
	Producto(2) = "Panchos             "
	Producto(3) = "Cocas               "
	Producto(4) = "Fantas              "
	Producto(5) = "Total de la semana "
	Producto(6) = "Producto más vendido"
	// 5x5 productos x dia
	// columna extra para Total de producto
	// Fila 6 para Total 
	// Fila 7 Producto mas vendido
	
	para i=0 hasta 5-1
		para j=0 hasta 5-1
			ventas[i,j] = Aleatorio(1,9)
		FinPara
	FinPara
	
//	Escribir "            Lunes     Martes    Miércoles    Jueves    Viernes"
//	para i=0 hasta 5-1
//		Escribir sin saltar Producto(i) "  "
//		para j=0 hasta 5-1
//			Escribir sin saltar " " ventas[i,j] "        "
//		FinPara
//		escribir " "
//	FinPara
//	Escribir " "
	//Escribir "Total de ventas por día " 
//Escribir " "
	para i=0 hasta 5-1 // esto cambia el dia de semana
		//Escribir sin saltar diaSemana[i]  " "
		ventas[5,i] = 0  // esto es para poner el sumador en 0
		para j=0 hasta 5-1  // con j vario el producto
			ventas[5,i] = ventas[5,i] + ventas[j,i]
		FinPara
		//escribir ventas[5,i]
	FinPara
	//Escribir " "
	//Escribir "Total de ventas por producto"
	masvendido = 0
	g = 0
	h = 0
	para i=0 hasta 5-1 // esto cambia el dia de semana
		//Escribir sin saltar producto(i) " "
		ventas[i,5] = 0  // esto es para poner el sumador en 0
		para j=0 hasta 5-1  // con j vario el producto
			ventas[i,5] = ventas[i,5] + ventas[i,j)
		FinPara
		Si ventas(i,5)>masvendido
			masvendido=ventas(i,5)
			g = i
		SiNo
			Si Ventas(i,5)=masvendido
				h = g
			FinSi
		FinSi
		//escribir ventas[i,5]
	FinPara
	//Escribir " "
	
	Escribir "                           Lunes       Martes     Miércoles   Jueves      Viernes    Total Producto"
	para i=0 hasta 6-1
		Escribir sin saltar "" Producto(i) "       "
		
		para j=0 hasta 6-1
			ventas(5,5)= 000
			
		
		Si i < 5 Entonces 
			Escribir sin saltar "  " ventas[i,j] "         "
		SiNo
			Escribir sin saltar "   " ventas[i,j] "       "
		Finsi
	FinPara
		escribir " "
	FinPara
	Si h = g Entonces
		Escribir "El producto más vendido son " producto(g) "y" producto(h)
	Sino
		Escribir "El producto más vendido son " producto(g) 
	Fin si
FinAlgoritmo



