/*
Crear una superclase llamada Edificio con los siguientes atributos: ancho, alto y
largo. La clase edificio tendrá como métodos:

• Método calcularSuperficie(): calcula la superficie del edificio.
• Método calcularVolumen(): calcula el volumen del edifico.
Estos métodos serán abstractos y los implementarán las siguientes clases:
• Clase Polideportivo con su nombre y tipo de instalación que puede ser Techado o
Abierto, esta clase implementará los dos métodos abstractos y los atributos del
padre.
• Clase EdificioDeOficinas con sus atributos número de oficinas, cantidad de 
personas por oficina y número de pisos. Esta clase implementará los dos métodos
abstractos y los atributos del padre.

De esta clase nos interesa saber cuántas personas pueden trabajar en todo el
edificio, el usuario dirá cuántas personas entran en cada oficina, cuantas oficinas
y el número de piso (suponiendo que en cada piso hay una oficina). Crear el método
cantPersonas(), que muestre cuantas personas entrarían en un piso y cuantas en todo
el edificio.

Por último, en el main vamos a crear un ArrayList de tipo Edificio. El ArrayList
debe contener dos polideportivos y dos edificios de oficinas. Luego, recorrer este
array y ejecutar los métodos calcularSuperficie y calcularVolumen en cada Edificio.
Se deberá mostrar la superficie y el volumen de cada edificio.
Además de esto, para la clase Polideportivo nos interesa saber cuántos 
polideportivos son techados y cuantos abiertos. Y para la clase EdificioDeOficinas
deberemos llamar al método cantPersonas() y mostrar los resultados de cada edificio
de oficinas.
 */
package guia12ejercicioextra2;

import Entidad.Edificio;
import Entidad.Herencia.EdificioDeOficinas;
import Entidad.Herencia.Polideportivo;
import Servicios.Herencia.Edificio.EdificioDeOficinasServicios;
import Servicios.Herencia.Edificio.PolideportivoServicios;
import java.util.ArrayList;

public class Guia12EjercicioExtra2 {

    public static void main(String[] args) {
        PolideportivoServicios poli = new PolideportivoServicios();
        EdificioDeOficinasServicios edOf = new EdificioDeOficinasServicios();
        ArrayList<Edificio> edificiosArrayList = new ArrayList();
        for (int i = 0; i < 4; i++) {
            if (i < 2) {
                edificiosArrayList.add(poli.crearPolideportivo(i + 1));
            } else {
                edificiosArrayList.add(edOf.cantPersonas());
            }
        }
        System.out.println("------------------------------------------");
        for (Edificio ed : edificiosArrayList) {

            if (ed instanceof Polideportivo) {
                System.out.println("Polideportivo: ");
                System.out.println(ed);
                System.out.println("Superficie: " + poli.calcularSuperficie(ed)+ " metros cuadrados.");
                System.out.println("Volumen: " + poli.calcularVolumen(ed) + " metros cubicos.");
                System.out.println("------------------------------------------");
            } else if (ed instanceof EdificioDeOficinas) {
                System.out.println("Oficinas: ");
                System.out.println(ed);
                System.out.println("Superficie: " + edOf.calcularSuperficie(ed) + " metros cuadrados.");
                System.out.println("Volumen: " + edOf.calcularVolumen(ed) + " metros cubicos.");
                System.out.println("------------------------------------------");
            }
        }
    }

}
