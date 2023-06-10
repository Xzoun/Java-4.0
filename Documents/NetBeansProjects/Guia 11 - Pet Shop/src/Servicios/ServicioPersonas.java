package Servicios;

import Entidad.Persona;
import java.util.HashMap;
import java.util.Scanner;

public class ServicioPersonas {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    HashMap<Integer,Persona> PersonasHashMap = new HashMap();
    ServicioPetShop petShop = new ServicioPetShop();

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
        PersonasHashMap.put(documento,nuevoRegistro);

        System.out.println(
                "----------------------");
        System.out.println(
                "Carga finalizada correctamente.");

        petShop.menu();
    }
}
