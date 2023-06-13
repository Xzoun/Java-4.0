package Servicios;

import Entidad.Espectador;
import java.util.ArrayList;
import java.util.Scanner;

public class MenuServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    ArrayList<Espectador> espectadores;
    CineServicios cineServ = new CineServicios();

    public void menu() {

        System.out.println("--------------------------------------");
        System.out.println("---------------  Menu  ---------------");
        System.out.println("");
        System.out.println("-- 1 -- Crear Sala.");
        System.out.println("-- 2 -- Ver Sala.");
        System.out.println("-- 3 -- Comprar Entrada.");
        System.out.println("-- 4 -- Nueva simulacion.");
        System.out.println("-- 5 -- Salir.");
        System.out.println("--------------------------------------");
        System.out.println("Elija una opción:");
        int respuesta = leer.nextInt();
        System.out.println("--------------------------------------");
        switch (respuesta) {

            case 1:
                int salaNum = cineServ.crearSala();
                System.out.println("--------------------------------------");
                System.out.println("Sala número " + salaNum);
                System.out.println("--------------------------------------");
                menu();
                break;
            case 2:
                System.out.println("Que número de sala quiere ver?");
                int sala = leer.nextInt();
                System.out.println("--------------------------------------");
                cineServ.mostrarSala(sala);
                menu();
                break;
            case 3:                
                cineServ.comprarEntrada();
                menu();
                break;
            case 4:
                System.out.println("Cuántos espectadores quiere simular?");
                int esp = leer.nextInt();
                System.out.println("--------------------------------------");
                int numSala = nuevaSimulacion(esp);
                System.out.println("--------------------------------------");
                System.out.println("Sala número " + numSala);
                System.out.println("--------------------------------------");
                menu();
                break;

            case 5:
                break;
            default:
                System.out.println("Ingrese una opción válida");
                menu();
                break;
        }
    }

    public int nuevaSimulacion(int esp) {
        espectadores = new ArrayList(esp);
        Integer salaNum = cineServ.crearSalaSimulacion();
        int numero = 0;
        for (int i = 0; i < esp; i++) {
            numero++;
            Espectador cliente = new Espectador();
            cliente.setDinero((int) Math.floor(Math.random() * 10000));
            cliente.setEdad((int) (Math.random() * 56) + 5);
            cliente.setNombre("Espectador " + numero);
            espectadores.add(cliente);

            cineServ.asignacionSimulacion(salaNum, cliente);
        }
        return salaNum;
    }
}
