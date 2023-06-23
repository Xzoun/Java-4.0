package Servicios;

import Entidad.Mascota;
import Entidad.Persona;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class PetShop {

    private static int idMascota = 1;
    private final HashMap<Integer, Mascota> mascotaHashMap = new HashMap<>();
    private final HashMap<Integer, Persona> PersonasHashMap = new HashMap();

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    ServicioMascota mascotas = new ServicioMascota();
    ServicioPersonas personas = new ServicioPersonas();

    public void DB() {
        Persona nuevoRegistro1p = new Persona("Claudia", "Benitez", null, 44, 45678912);
        Persona nuevoRegistro2p = new Persona("Monica", "Benitez", null, 48, 12378945);
        Persona nuevoRegistro3p = new Persona("Claudio", "Ferreyra", null, 27, 78945612);
        Persona nuevoRegistro4p = new Persona("Juan Ignacio", "Mazzocchi", null, 27, 12345678);

        PersonasHashMap.put(45678912, nuevoRegistro1p);
        PersonasHashMap.put(12378945, nuevoRegistro2p);
        PersonasHashMap.put(78945612, nuevoRegistro3p);
        PersonasHashMap.put(12345678, nuevoRegistro4p);

        Mascota nuevoRegistro1 = new Mascota("Gato", "Pequeño", "Jade", 1, 1, false);
        Mascota nuevoRegistro2 = new Mascota("Perro", "Mediano", "Sky", 2, 3, false);
        Mascota nuevoRegistro3 = new Mascota("Gato", "Mediano", "Richard", 3, 1, false);
        Mascota nuevoRegistro4 = new Mascota("Tortuga", "Grande", "Raquel", 4, 12, false);
        Mascota nuevoRegistro5 = new Mascota("Loro", "Pequeño", "Francisco", 5, 10, false);
        Mascota nuevoRegistro6 = new Mascota("Perro", "Mediano", "Claudia", 6, 2, false);
        Mascota nuevoRegistro7 = new Mascota("Gato", "Mediano", "Fran", 7, 6, false);
        Mascota nuevoRegistro8 = new Mascota("Perro", "Grande", "Moni", 8, 7, false);

        mascotaHashMap.put(idMascota++, nuevoRegistro1);
        mascotaHashMap.put(idMascota++, nuevoRegistro2);
        mascotaHashMap.put(idMascota++, nuevoRegistro3);
        mascotaHashMap.put(idMascota++, nuevoRegistro4);
        mascotaHashMap.put(idMascota++, nuevoRegistro5);
        mascotaHashMap.put(idMascota++, nuevoRegistro6);
        mascotaHashMap.put(idMascota++, nuevoRegistro7);
        mascotaHashMap.put(idMascota++, nuevoRegistro8);
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
                crearMascota();
                menu();
                break;

            case 2:
                crearPersona();
                menu();
                break;

            case 3:
                adoptar();
                menu();
                break;

            case 4:
                registro();
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

    public void crearMascota() {
        mascotaHashMap.put(idMascota, mascotas.crearMascota(idMascota));        
        System.out.println("Carga finalizada correctamente.");
        idMascota++;
    }

    public void crearPersona() {
        System.out.println("Bienvenido");
        System.out.println("----------------------");
        System.out.print("Para iniciar una carga ");
        Integer documento = personas.obtenerClave();
        PersonasHashMap.put(documento, personas.crearUsuario(documento));
    }

    public void adoptar() {

        System.out.println("Ingrese la especie:");
        String especie = leer.next();
        System.out.println("--------------------------------------");

        System.out.println(especie + "s en adopción:");

        for (Map.Entry<Integer, Mascota> entry : mascotaHashMap.entrySet()) {
            Mascota m1 = entry.getValue();

            if (m1.getEspecie().equalsIgnoreCase(especie) && !m1.getAdoptada()) {
                System.out.println(m1.toString());
            }
        }
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

                int dni = personas.obtenerClave();
                Mascota eleccion = elegirMascota(idAdopcion);
                Persona adoptante = PersonasHashMap.get(dni);

                if (adoptante != null) {
                    if (eleccion != null) {
                        adoptante.setMascota(eleccion);

                        PersonasHashMap.put(dni, adoptante);
                        System.out.println("Felicidades, " + adoptante.getNombre() + " has adoptado una mascota.");
                        System.out.println(adoptante.toString());
                    } else {
                        System.out.println("No se encontró ninguna mascota con el ID especificado.");
                    }
                } else {
                    System.out.println("No se encontró ninguna persona con el DNI especificado.");
                }
        }
    }

    public void registro() {
        boolean adopciones = false;
        for (Map.Entry<Integer, Persona> entry : PersonasHashMap.entrySet()) {
            Persona p1 = entry.getValue();
            if (p1.getMascota() != null) {
                System.out.println(p1.toString());
                adopciones = true;
            }
        }
        if (!adopciones) {
            System.out.println("No se registran adopciones");
        }
    }

    public Mascota elegirMascota(Integer id) {
        Mascota adoptada = mascotaHashMap.get(id);
        adoptada.setAdoptada(true);
        return adoptada;
    }

}
