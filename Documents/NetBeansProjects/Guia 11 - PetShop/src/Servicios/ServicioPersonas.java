package Servicios;

import Entidad.Mascota;
import Entidad.Persona;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ServicioPersonas {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    HashMap<Integer, Persona> PersonasHashMap = new HashMap();
    ServicioMascota mascotas = new ServicioMascota();

    public void crearUsuario() {

        Persona nuevoRegistro = new Persona();
        System.out.println("Bienvenido");
        System.out.println("----------------------");
        nuevoRegistro.setMascota(null);
        System.out.println("Para iniciar una carga ingrese un nombre");
        String nombre = leer.next();
        nuevoRegistro.setNombre(nombre);

        System.out.println("Bien, ahora ingrese el apellido de " + nombre);
        nuevoRegistro.setApellido(leer.next());

        System.out.println("Edad de " + nombre);
        nuevoRegistro.setEdad(leer.nextInt());

        System.out.println("Por último ingrese el dni de " + nombre);
        int documento = leer.nextInt();
        nuevoRegistro.setDocumento(documento);

        System.out.println("Para cargar otro animal presione s");
        System.out.println("Presione cualquier otra letra para finalizar la carga.");
        PersonasHashMap.put(documento, nuevoRegistro);

        System.out.println(
                "----------------------");
        System.out.println(
                "Carga finalizada correctamente.");
    }

    public void adoptar(Mascota eleccion) {

        mascotas.filtrar("loro");
        System.out.println("Ingrese su número de DNI para cargar una adopción.");
        int dni = leer.nextInt();
        System.out.println("--------------------------------------");
        Persona adoptante = PersonasHashMap.get(dni);

        
        if (adoptante != null) {
            if (eleccion != null) {
                adoptante.setMascota(eleccion);

                PersonasHashMap.put(dni, adoptante);
                System.out.println("Felicidades, has adoptado una mascota.");
                System.out.println(adoptante.toString());
            } else {
                System.out.println("No se encontró ninguna mascota con el ID especificado.");
            }
        } else {
            System.out.println("No se encontró ninguna persona con el DNI especificado.");
        }
    }
    
     public void mostrar() {
         boolean adopciones = false;
        for (Map.Entry<Integer, Persona> entry : PersonasHashMap.entrySet()) {
            Persona p1 = entry.getValue();
            if (p1.getMascota()!=null){
                System.out.println(p1.toString());
                adopciones = true;
            }
        }
        if(!adopciones){
            System.out.println("No se registran adopciones");
        }
    }

    public void DB() {
        Persona nuevoRegistro1 = new Persona("Claudia", "Benitez", null, 44, 45678912);
        Persona nuevoRegistro2 = new Persona("Monica", "Benitez", null, 48, 12378945);
        Persona nuevoRegistro3 = new Persona("Claudio", "Ferreyra", null, 27, 78945612);
        Persona nuevoRegistro4 = new Persona("Juan Ignacio", "Mazzocchi", null, 27, 12345678);

        PersonasHashMap.put(45678912, nuevoRegistro1);
        PersonasHashMap.put(12378945, nuevoRegistro2);
        PersonasHashMap.put(78945612, nuevoRegistro3);
        PersonasHashMap.put(12345678, nuevoRegistro4);
    }

}
