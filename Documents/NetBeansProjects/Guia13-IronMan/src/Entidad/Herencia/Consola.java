package Entidad.Herencia;

import Entidad.Armadura;
import Entidad.Botas;
import Entidad.Guantes;

public class Consola extends Armadura {

    public Consola() {
    }

    public Consola(Double bateria, String colorPrinc, String colorSec, Botas botaIzq, Botas botaDer, Guantes guanteIzq, Guantes guanteDer) {
        super(bateria, colorPrinc, colorSec, botaIzq, botaDer, guanteIzq, guanteDer);
    }

    @Override
    public String toString(Armadura armadura) {
        String str = super.toString(armadura);
        return str;
    }

    public void bateriaBaja(Armadura armadura) {
        if (armadura.getBateria() < 5) {
            System.out.println("Queda menos del 5% de batería");
        }
    }

    public void informeDeAciertos(Integer contador, Boolean descarga) {
        if (descarga) {
            if (contador < 1) {
                System.out.println("Señor solo gastamos bateria dejeme apuntar a mi.");
            } else if (contador == 1) {
                System.out.println("Le dimos " + contador + " vez.");
                System.out.println("Dejeme apuntar a mi señor.");
            } else {
                System.out.println("Le dimos " + contador + " veces.");
            }

        } else {
            if (Math.random() > 0.7) {
                System.out.println("No le dimos.");
            } else {
                System.out.println("Excelente, le dimos!");
            }
        }
    }

    public void informeDeReparacion(String parte, Integer derIzq, Boolean reparado) {
        String genero = "a";
        if (parte.equals("Guante")) {
            genero = "o";
        }
        
        if (reparado) {
            switch (derIzq) {
                case 3:
                    System.out.println(parte + "s  reparad" + genero + "s con éxito!");
                    break;
                case 2:
                    System.out.println(parte + " izquierd" + genero + " reparad" + genero + " con éxito!");
                    break;
                case 1:
                    System.out.println(parte + " derech" + genero + " reparad" + genero + " con éxito!");
                    break;
            }
        } else {
            switch (derIzq) {
                case 3:
                    System.out.println(parte + "s muy dañad+" + genero + "s para reparar en este momento");
                    break;
                case 2:
                    System.out.println(parte + " izquierd" + genero + " imposible de reparar en este momento");
                    break;
                case 1:
                    System.out.println(parte + " derech" + genero + " imposible de reparar en este momento");
                    break;
            }
        }
    }

    public void informeDeDanhos(String parte, Integer derIzq) {
        if (parte.equals("Bota")) {
            switch (derIzq) {
                case 3:
                    System.out.println("Los propulsores estan dañados");
                    break;
                case 2:
                    System.out.println("Se daño el propulsor izquierdo");
                    break;
                default:
                    System.out.println("Se daño el propulsor derecho");
                    break;
            }
        } else if (parte.equals("Guante")) {
            switch (derIzq) {
                case 3:
                    System.out.println("Los repulsores estan dañados");
                    break;
                case 2:
                    System.out.println("Se daño el repulsor izquierdo");
                    break;
                default:
                    System.out.println("Se daño el repulsor derecho");
                    break;
            }
        }

    }
}
