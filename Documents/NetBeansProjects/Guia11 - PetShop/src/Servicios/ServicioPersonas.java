package Servicios;

import Entidad.Persona;
import java.util.Scanner;

public class ServicioPersonas {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");


    public Integer obtenerClave() {        
        System.out.println("ingrese el número de documento");
        int documento = leer.nextInt();
        return documento;
    }

    public Persona crearUsuario(Integer documento) {

        Persona nuevoRegistro = new Persona();

        nuevoRegistro.setMascota(null);
        nuevoRegistro.setDocumento(documento);

        System.out.println("Bien, ahora ingrese el nombre");
        String nombre = leer.next();
        nuevoRegistro.setNombre(nombre);

        System.out.println("Ingrese el apellido de " + nombre);
        nuevoRegistro.setApellido(leer.next());

        System.out.println("Edad de " + nombre);
        nuevoRegistro.setEdad(leer.nextInt());    

        System.out.println("----------------------");
        System.out.println("Carga finalizada correctamente.");

        return nuevoRegistro;
    }

    
}
