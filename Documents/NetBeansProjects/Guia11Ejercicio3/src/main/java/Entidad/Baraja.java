
package Entidad;

import java.util.ArrayList;

public class Baraja {
    private ArrayList<Carta> baraja;

    public ArrayList<Carta> getBaraja() {
        return baraja;
    }

    public void setBaraja(ArrayList<Carta> baraja) {
        this.baraja = baraja;
    }

    public Baraja() {
    }

    public Baraja(ArrayList<Carta> baraja) {
        this.baraja = baraja;
    }
    
    public void tostring(){
        for (Carta carta : baraja){
            System.out.println(carta);
        }
    }
    
}
