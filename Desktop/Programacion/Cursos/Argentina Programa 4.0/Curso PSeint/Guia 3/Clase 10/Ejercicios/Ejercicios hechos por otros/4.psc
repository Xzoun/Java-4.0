//Algoritmo sin_titulo
//	Definir L1,i,j, n  Como Entero
//	Definir s Como Caracter
//	Escribir "ingrese s para ver factoriales de 1 a 5"
//	leer s
//	L1=5
//	i = 1
//Si s= "s" Entonces
//	para n=1 hasta L1 Hacer
//		i = i * n
//		Escribir "!" n "=" s "=" i
//		
//	FinPara
//FinSi
//FinAlgoritmo

//Algoritmo numerosFactoriales
	//definir n, i, j, factorial Como Entero
	//Definir frase Como Caracter
	//frase = ""
    //n=5
    //factorial=1
	//para i = 1 hasta n con paso 1 Hacer
		//para j=1 hasta 1
			//factorial = factorial*i
			//frase = Concatenar(frase, ConvertirATexto(i))
          //frase = Concatenar(    frase, "*")
		//FinPara
		
        //Escribir i "!= " frase " = " factorial
    //FinPara
	
//FinAlgoritmo
Algoritmo sin_titulo
	definir n, i, j, res, cont Como Entero
    n = 5
    cont = 1
    res = 1 
    para i <- 1 Hasta n con paso 1 Hacer
        escribir sin saltar "!", cont, "= "
        para j <- 1 hasta cont Hacer
            escribir sin saltar "", j
            res = res*j 
        FinPara
        escribir sin saltar " =", res
        cont = (cont+1)
        res = 1
        escribir ""
    FinPara
FinAlgoritmo

