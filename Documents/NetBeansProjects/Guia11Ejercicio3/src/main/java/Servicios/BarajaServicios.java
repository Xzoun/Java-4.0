package Servicios;

import Entidad.Baraja;
import Entidad.Carta;
import Enum.Palos;
import java.util.ArrayList;

public class BarajaServicios {

    Baraja baraja = new Baraja();

    public void nuevaBaraja() {
        ArrayList<Carta> nuevaBaraja = new ArrayList();
        Palos palo[] = Palos.values();
        for (Palos tipo : palo) {

            for (int i = 0; i < 10; i++) {
                Carta objCarta = new Carta();
                objCarta.setPalo(tipo);
                if (i == 7 || i == 8 || i == 9) {
                    objCarta.setNumero(i + 3);
                    nuevaBaraja.add(objCarta);
                } else {
                    objCarta.setNumero(i + 1);
                    nuevaBaraja.add(objCarta);
                }
            }
        }
        baraja.setBaraja(nuevaBaraja);
        baraja.tostring();
    }
}
