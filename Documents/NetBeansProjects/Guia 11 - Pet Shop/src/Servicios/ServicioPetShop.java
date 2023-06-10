package Servicios;

import Entidad.Mascota;
import Entidad.Persona;
import java.util.Scanner;

public class ServicioPetShop {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    ServicioMascota mascotas = new ServicioMascota();
    ServicioPersonas persona = new ServicioPersonas();

    public void DB() {

        Mascota mascota = new Mascota("Perro", "Mediano", "Sky", 3, 1);
        Mascota mascota1 = new Mascota("Gato", "Chiquito", "Jade", 1, 2);
        Mascota mascota2 = new Mascota("Perro", "Grande", "Rocky", 3, 3);

        Persona persona1 = new Persona("Juan", "Pérez", null, 25, 98765432);
        Persona persona2 = new Persona("María", "González", null, 30, 98765432);
        Persona persona3 = new Persona("Pedro", "López", null, 40, 56789123);

    }

    public void menu() {

        System.out.println("--------------------------------------");
        System.out.println("---------------  Menu  ---------------");
        System.out.println("Elija una opción:");
        System.out.println("-- 1 -- Cargar nuevo ingreso.");
        System.out.println("-- 2 -- Cargar usuario de adopción.");
        System.out.println("-- 3 -- Ver opciones de adopción.");
        System.out.println("-- 4 -- Salir");
        System.out.println("--------------------------------------");
        int respuesta = leer.nextInt();
        switch (respuesta) {
            case 1:
                mascotas.CrearMascota();
                break;
            case 2:
                persona.crearUsuario();
                break;
            case 3:
                mascotas.mostrar();
                break;
            case 4:
                break;
            default:
                System.out.println("Ingrese una opción válida");
                menu();
                break;
        }
    }

}
