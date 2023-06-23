package Servicios;

import Entidad.Mascota;
import java.util.Scanner;

public class ServicioMascota {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Mascota crearMascota(Integer id) {

        Mascota nuevoRegistro = new Mascota();
        nuevoRegistro.setId(id);

        System.out.println("Para iniciar una carga ingrese la especie del animal");
        nuevoRegistro.setEspecie(leer.next());

        System.out.println("Ingrese el nombre");
        String nombre = leer.next();
        nuevoRegistro.setNombre(nombre);

        System.out.println("Bien, ahora ingrese la edad de " + nombre);
        nuevoRegistro.setEdad(leer.nextInt());

        System.out.println("Por último ingrese el tamaño de " + nombre);
        nuevoRegistro.setTamano(leer.next());
        System.out.println("----------------------");
        System.out.print("El nuevo ID de resgistro de " + nombre +" es "+ id);
        return nuevoRegistro;
    }

}
