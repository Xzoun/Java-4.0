/*Crear una clase Rectángulo que modele rectángulos por medio de un atributo privado base y un 
atributo privado altura. La clase incluirá un método para crear el rectángulo con los datos del 
Rectángulo dados por el usuario. También incluirá un método para calcular la superficie del rectángulo 
y un método para calcular el perímetro del rectángulo. Por último, tendremos un método que dibujará el 
rectángulo mediante asteriscos usando la base y la altura. Se deberán además definir los métodos getters, 
setters y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2.*/
package Rectangulo1;

import java.util.Scanner;

public class Rectangulo1 {

    private int base;
    private int altura;

    public Rectangulo1() {
    }

    public Rectangulo1(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public void datos() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese base");
        base = leer.nextInt();
        System.out.println("Ingrese altura");
        altura = leer.nextInt();
    }

    public int Superficie(int base, int altura) {
        return base * altura;
    }

    public int Perimetro() {
        return (base + altura) * 2;

    }

    public void dibujo() {

        for (int i = 0; i < altura; i++) {
            for (int j = 0; j < base; j++) {
                if (j == 0 || j == base - 1 || i == 0 || i == altura - 1) {
                    System.out.print(" * ");
                } else {
                    System.out.print("   ");
                }
            }
            System.out.println("");
        }
    }
}

