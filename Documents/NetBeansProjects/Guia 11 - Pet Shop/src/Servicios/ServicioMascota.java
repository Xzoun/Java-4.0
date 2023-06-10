package Servicios;

import Entidad.Mascota;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ServicioMascota {

    Scanner leer = new Scanner(System.in);
    ServicioPetShop petShop = new ServicioPetShop();
    HashMap<Integer, Mascota> MascotaHashMap = new HashMap();

    public void CrearMascota() {
        int id = 0;

        for (int key : MascotaHashMap.keySet()) {
            if (key > id) {
                id = key;
            }
        }

        id++;

        Mascota nuevoRegistro = new Mascota();
        nuevoRegistro.setId(id);
        System.out.println("Bienvenido");
        System.out.println("----------------------");

        System.out.println("Para iniciar una carga ingrese la especie del animal");
        nuevoRegistro.setEspecie(leer.next());

        System.out.println("Ingrese el nombre");
        String nombre = leer.next();
        nuevoRegistro.setNombre(nombre);

        System.out.println("Bien, ahora ingrese la edad de " + nombre);
        nuevoRegistro.setEdad(leer.nextInt());

        System.out.println("Por último ingrese el tamaño de " + nombre);
        nuevoRegistro.setTamaño(leer.next());

        MascotaHashMap.put(id, nuevoRegistro);

        System.out.println("----------------------");
        System.out.println("El nuevo ID de resgistro de " + nombre + " es " + id);
        System.out.println("Carga finalizada correctamente.");

        petShop.menu();
    }

    public void mostrar() {
        for (Map.Entry<Integer, Mascota> entry : MascotaHashMap.entrySet()) {
            Integer key = entry.getKey();
            Mascota mascota = entry.getValue();
            System.out.println("Clave: " + key + ", Valor: " + mascota.toString());
        }
    }

}
