package Servicios;

import Entidad.Mascota;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ServicioMascota {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    HashMap<Integer, Mascota> mascotaHashMap = new HashMap<>();

    public void crearMascota() {
        int id = mascotaHashMap.size() + 1;

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

        mascotaHashMap.put(id, nuevoRegistro);

        System.out.println("----------------------");
        System.out.println("El nuevo ID de resgistro de " + nombre + " es " + id);
        System.out.println("Carga finalizada correctamente.");
    }

    public void filtrar(String especie) {
        for (Map.Entry<Integer, Mascota> entry : mascotaHashMap.entrySet()) {
            Mascota m1 = entry.getValue();
            if (m1.getEspecie().equalsIgnoreCase(especie) && !m1.getAdoptada()) {
                System.out.println(m1.toString());
            }
        }
    }

    public void mostrar() {
        for (Map.Entry<Integer, Mascota> entry : mascotaHashMap.entrySet()) {
            Mascota m1 = entry.getValue();
            System.out.println(m1.toString());
        }
    }

    public Mascota elegirMascota(Integer id) {
        Mascota adoptada = mascotaHashMap.get(id);
        adoptada.setAdoptada(true);
        return adoptada;
    }

    public void DB() {
        Mascota nuevoRegistro1 = new Mascota("Gato", "Pequeño", "Jade", 1, 1, false);
        Mascota nuevoRegistro2 = new Mascota("Perro", "Mediano", "Sky", 2, 3, false);
        Mascota nuevoRegistro3 = new Mascota("Gato", "Mediano", "Richard", 3, 1, false);
        Mascota nuevoRegistro4 = new Mascota("Tortuga", "Grande", "Raquel", 4, 12, false);
        Mascota nuevoRegistro5 = new Mascota("Loro", "Pequeño", "Francisco", 5, 10, false);
        Mascota nuevoRegistro6 = new Mascota("Perro", "Mediano", "Claudia", 6, 2, true);
        Mascota nuevoRegistro7 = new Mascota("Gato", "Mediano", "Fran", 7, 6, false);
        Mascota nuevoRegistro8 = new Mascota("Perro", "Grande", "Moni", 8, 7, false);

        mascotaHashMap.put(1, nuevoRegistro1);
        mascotaHashMap.put(2, nuevoRegistro2);
        mascotaHashMap.put(3, nuevoRegistro3);
        mascotaHashMap.put(4, nuevoRegistro4);
        mascotaHashMap.put(5, nuevoRegistro5);
        mascotaHashMap.put(6, nuevoRegistro6);
        mascotaHashMap.put(7, nuevoRegistro7);
        mascotaHashMap.put(8, nuevoRegistro8);
    }
}
