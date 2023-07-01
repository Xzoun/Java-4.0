package Entidad;

import Entidad.Herencia.Consola;
import Servicios.JARVISServicios;

public class JARVIS {

    JARVISServicios serviciosPrincipales = new JARVISServicios();
    Consola consola = new Consola();

    public Armadura crearArmadura() {
        Armadura nuevaArmadura = new Armadura();
        Guantes guanteI = new Guantes();
        Guantes guanteD = new Guantes();
        Botas botaI = new Botas();
        Botas botaD = new Botas();

        nuevaArmadura.setColorPrinc("Rojo");
        nuevaArmadura.setColorSec("Amarillo");
        nuevaArmadura.setBateria(100.0);

        nuevaArmadura.setGuanteIzq(guanteI);
        nuevaArmadura.setGuanteDer(guanteD);
        nuevaArmadura.setBotaIzq(botaI);
        nuevaArmadura.setBotaDer(botaD);

        return nuevaArmadura;
    }

    public void menu(Armadura armadura) {
        if (armadura.getBateria() >= 0.0) {

            System.out.println("----------------------------------------------------------------------------");
            System.out.println("                    ---------------  Menu  ---------------");
            System.out.println("");
            System.out.println("                    ---- 1 ---- Caminar. ");
            System.out.println("                    ---- 2 ---- Correr.");
            System.out.println("                    ---- 3 ---- Propulsar.");
            System.out.println("                    ---- 4 ---- Volar.");
            System.out.println("                    ---- 5 ---- Disparar.");
            System.out.println("                    ---- 6 ---- Disparar rafaga.");
            System.out.println("                    ---- 7 ---- Ver Estado.");
            System.out.println("                    ---- 8 ---- Reparación rápida.");
            System.out.println("                    ---- 9 ---- Salir");
            System.out.println("                    --------------------------------------");
            System.out.println("                    Elija una opción:");
            System.out.print("                    ");

            int respuesta = serviciosPrincipales.imput();

            Integer tiempo;
            System.out.println("----------------------------------------------------------------------------");

            switch (respuesta) {
                case 1:
                    System.out.println("Cuantos minutos?");
                    tiempo = serviciosPrincipales.imput();
                    serviciosPrincipales.caminar(armadura, tiempo);
                    menu(armadura);
                    consola.bateriaBaja(armadura);
                    break;

                case 2:
                    System.out.println("Cuantos minutos?");
                    tiempo = serviciosPrincipales.imput();
                    serviciosPrincipales.correr(armadura, tiempo);
                    consola.bateriaBaja(armadura);
                    menu(armadura);
                    break;

                case 3:
                    serviciosPrincipales.propulsar(armadura);
                    consola.bateriaBaja(armadura);
                    menu(armadura);
                    break;
                case 4:
                    System.out.println("Cuantos minutos?");
                    tiempo = serviciosPrincipales.imput();
                    serviciosPrincipales.volar(armadura, tiempo);
                    consola.bateriaBaja(armadura);
                    menu(armadura);
                    break;
                case 5:
                    consola.bateriaBaja(armadura);
                    menu(serviciosPrincipales.disparar(armadura, false));
                    break;
                case 6:
                    consola.bateriaBaja(armadura);
                    menu(serviciosPrincipales.disparar(armadura, true));
                    break;
                case 7:
                    serviciosPrincipales.verEstado(armadura);
                    consola.bateriaBaja(armadura);
                    menu(armadura);
                    break;
                case 8:
                    serviciosPrincipales.reparar(armadura);
                    consola.bateriaBaja(armadura);
                    menu(armadura);
                    break;
                case 9:
                    break;
                default:
                    System.out.println("Ingrese una opción válida");
                    menu(armadura);
                    break;
            }
        } else {
            consola.bateriaBaja(armadura);
            System.out.println("Bateria agotada!");
            System.out.println("Adios.");
        }
    }
}
