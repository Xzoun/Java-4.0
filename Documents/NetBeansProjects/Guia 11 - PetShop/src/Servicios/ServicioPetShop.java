package Servicios;

import Entidad.Mascota;
import java.util.Scanner;

public class ServicioPetShop {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    ServicioMascota mascotas = new ServicioMascota();
    ServicioPersonas personas = new ServicioPersonas();

    public void DB() {
        mascotas.DB();
        personas.DB();
    }

    public void menu() {
        System.out.println("--------------------------------------");
        System.out.println("---------------  Menu  ---------------");
        System.out.println("");
        System.out.println("-- 1 -- Cargar nuevo ingreso.");
        System.out.println("-- 2 -- Cargar usuario de adopción.");
        System.out.println("-- 3 -- Ver opciones de adopción.");
        System.out.println("-- 4 -- Ver registro de adopción.");
        System.out.println("-- 5 -- Salir");
        System.out.println("--------------------------------------");
        System.out.println("Elija una opción:");
        int respuesta = leer.nextInt();
        System.out.println("--------------------------------------");
        switch (respuesta) {
            case 1:
                mascotas.crearMascota();
                menu();
                break;
            case 2:
                personas.crearUsuario();
                menu();
                break;
            case 3:
                System.out.println("Ingrese la especie:");
                String especie = leer.next();
                System.out.println("--------------------------------------");
                System.out.println(especie + "s en adopción:");
                mascotas.filtrar(especie);
                System.out.println("--------------------------------------");
                System.out.println("Ingrese el ID de la mascota elegida");
                System.out.println("Presione 0 (cero) para cancelar");
                int idAdopcion = leer.nextInt();
                System.out.println("--------------------------------------");
                switch (idAdopcion) {
                    case 0:
                         System.out.println("Operación cancelada");
                        menu();
                        break;
                    default:
                        Mascota eleccion = mascotas.elegirMascota(idAdopcion);
                        personas.adoptar(eleccion);
                        menu();
                        break;
                }
            case 4:
                personas.mostrar();
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

}
