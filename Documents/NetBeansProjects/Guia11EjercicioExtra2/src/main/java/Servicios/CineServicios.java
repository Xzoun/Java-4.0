package Servicios;

import Entidad.Cine;
import Entidad.Espectador;
import Enum.Letras;
import java.util.HashMap;
import java.util.Scanner;

public class CineServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    HashMap<Integer, Cine> salasHashMap = new HashMap();
    Letras letra[] = Letras.values();

// ---------------- Metodos - Simulacion ----------------
    public Integer crearSalaSimulacion() {
        Cine salaX = new Cine();
        Integer salaNum = salasHashMap.size() + 1;
        Object[][] sala = new Object[6][8];
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 6; j++) {
                sala[j][i] = letra[j] + "" + (i + 1);
            }
        }
        salaX.setSala(sala);
        salaX.setPrecio(1500);
        int peliculaIndex = (int) (Math.random() * 10);
        String[] Pelicula = new String[10];
        Pelicula[0] = "Volver al futuro";
        Pelicula[1] = "El señor de los anillos: Las dos Coronas.";
        Pelicula[2] = "Harry Potter y el misterio del principe.";
        Pelicula[3] = "Harry Potter y el prisionero de Azkabahn.";
        Pelicula[4] = "Un viernes de locos.";
        Pelicula[5] = "Un novio para mi mujer.";
        Pelicula[6] = "Cazafantasmas";
        Pelicula[7] = "El cazarecompensas";
        Pelicula[8] = "Los declaro marido y Larry";
        Pelicula[9] = "Hitch: Especialista en seduccion.";
        salaX.setPeliculaRep(Pelicula[peliculaIndex]);
        salasHashMap.put(salaNum, salaX);

        return salaNum;
    }

    public void asignacionSimulacion(Integer salaNum, Espectador asiento) {

        Cine cineX = salasHashMap.get(salaNum);
        int fila = (int) (Math.random() * 6);
        int columna = (int) (Math.random() * 8);

        if (asiento.getDinero() >= cineX.getPrecio()) {
            boolean asignado = comprobarAsignacion(salaNum, fila, columna);
        } else {
            System.out.println("El dinero de " + asiento.getNombre() + " no es suficiente para comprar la entrada.");
        }
    }

// ---------------- Metodos - Compartidos ----------------
    public void mostrarSala(Integer salaNum) {

        Cine cineX = salasHashMap.get(salaNum);
        String pelicula = cineX.getPeliculaRep();
        if (cineX != null) {
            System.out.println(pelicula);
            Object[][] salaX = cineX.getSala();
            for (int i = 0; i < 8; i++) {
                for (int j = 0; j < 6; j++) {
                    System.out.print(salaX[j][i] + " | ");
                }
                System.out.println("");
            }
        } else {
            System.out.println("No hay sala " + salaNum + " creadas en el hashMap");
        }
    }

    public boolean comprobarAsignacion(Integer salaNum, Integer fila, Integer columna) {

        Cine cineX = salasHashMap.get(salaNum);
        Object[][] salaX = cineX.getSala();
        boolean asignado = false;
        boolean salaCompleta = true;

        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 8; j++) {
                if (!salaX[i][j].toString().contains("X")) {
                    salaCompleta = false;
                    break;
                }
            }
            if (!salaCompleta) {
                break;
            }
        }

        if (salaCompleta) {
            System.out.println("La sala está completa. No hay asientos disponibles.");
        } else {
            do {
                if (salaX[fila][columna].toString().contains("X")) {
                    fila = (int) (Math.random() * 6);
                    columna = (int) (Math.random() * 8);
                } else {
                    salaX[fila][columna] = letra[fila] + "" + columna + "X";
                    asignado = true;
                }
            } while (!asignado);
            cineX.setSala(salaX);
            salasHashMap.put(salaNum, cineX);

        }
        return asignado;
    }
// ---------------- Metodos - Usuario ----------------

    public Integer crearSala() {
        Cine salaX = new Cine();
        Integer salaNum = salasHashMap.size() + 1;
        Object[][] sala = new Object[6][8];
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 6; j++) {
                sala[j][i] = letra[j] + "" + (i + 1);
            }
        }
        salaX.setSala(sala);

        System.out.println("Ingrese el título de la Película");
        salaX.setPeliculaRep(leer.next());
        System.out.println("Ingrese el precio de la Película");
        salaX.setPrecio(leer.nextInt());

        salasHashMap.put(salaNum, salaX);

        return salaNum;
    }

    public void comprarEntrada() {
        Integer salaNum = verTitulos();
        mostrarSala(salaNum);
        boolean filaValida = false;
        boolean columnaValida = false;
        System.out.println("--------------------------------------");
        System.out.println("Para seleccionar un asiento:");
        System.out.println("Ingrese la fila seleccionada (letra)");
        Integer filaNum = 0;
        do {
            String fila = leer.next();
            System.out.println("--------------------------------------");

            for (Letras letraX : letra) {
                if (letraX.name().equalsIgnoreCase(fila)) {
                    filaValida = true;
                    filaNum = letraX.ordinal();
                    break;
                }
                if (filaValida) {
                    break;
                }
            }

            if (!filaValida) {
                System.out.println("Ingrese una fila válida");
            }
        } while (!filaValida);

        System.out.println("--------------------------------------");
        System.out.println("Ingrese la columna seleccionada (número)");
        int colNum;

        do {
            colNum = leer.nextInt();
            System.out.println("--------------------------------------");

            if (colNum > 0 && colNum < 9) {
                columnaValida = true;
            }
            if (!columnaValida) {
                System.out.println("Ingrese una fila válida");
            }
        } while (!columnaValida);

        asignacion(salaNum, filaNum, colNum);

    }

    public Integer verTitulos() {
        System.out.println("Peliculas disponibles.");

        for (int i = 1; i <= salasHashMap.size(); i++) {

            Cine cineX = salasHashMap.get(i);
            String tituloX = cineX.getPeliculaRep();
            System.out.println("Sala " + i + ": " + tituloX);
        }

        System.out.println("--------------------------------------");
        System.out.println("Que Pelicula quiere ver? Ingrese el número de sala.");
        Integer salaX = leer.nextInt();
        Cine cineX = salasHashMap.get(salaX);

        System.out.println("--------------------------------------");
        System.out.println("El costo de la entrada es: $" + cineX.getPrecio());

        return salaX;
    }

    public void asignacion(Integer salaNum, Integer filaNum, Integer colNum) {
        Cine cineX = salasHashMap.get(salaNum);
        Object[][] salaX = cineX.getSala();
        salaX[filaNum][colNum] = letra[filaNum] + "" + colNum + "X";
        boolean asignado = comprobarAsignacion(salaNum, filaNum, colNum);
        if (asignado) {
            System.out.println("Asiento " + letra[filaNum] + colNum + "de la sala " + salaNum + ", asignado.");
        }
    }
}
