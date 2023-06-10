/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication24;

import java.util.Scanner;

public class JavaApplication24 {

 
          public static void main(String[] args) {
   Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese dos nÃºmeros.");
   int num1 = leer.nextInt(); int num2 = leer.nextInt();
  int resto; 
  int resultado = 0;
   do{
  resto = (num1 - num2);
   if(resto<num1){
  resultado = (resultado-resto);
  }
   }while (resto>num2); 
        System.out.println("El resultado es " + resultado + " con resto " + resto + "." );
   } 
}
    

