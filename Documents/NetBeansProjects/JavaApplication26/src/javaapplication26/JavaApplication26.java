/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication26;

import static java.lang.Double.max;
import static java.lang.Double.min;
import java.util.Scanner;

/**
 *
 * @author user
 */
public class JavaApplication26 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
           Scanner leer = new Scanner(System.in);
        System.out.println("Determine la cantidad de numeros a ingresar");
        int n = leer.nextInt();
        System.out.println("Ingrese los numeros");
        int num; int cont = 0; int maximo = 0; int minimo=1000000; int promedio = 0; int suma = 0;
       /* 
        do{
            num = leer.nextInt();
            cont++;
           maximo = (int) max(num, maximo);
           minimo = (int) min(num, minimo);
           suma = suma + num;
        }while(cont<n);
        promedio = (suma/n);
        */
       while(cont<n){
           num = leer.nextInt();
            cont++;
           maximo = (int) max(num, maximo);
           minimo = (int) min(num, minimo);
           suma = suma + num;
           
       }
      promedio = (suma/n);
               
               System.out.println("El numero maximo es " + maximo);
        System.out.println("El numero minimo es " + minimo);
        System.out.println("El promedio es " + promedio);
    } 
}

    
    

