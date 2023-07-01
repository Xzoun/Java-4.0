package Entidad;

public class Armadura {

    private Double bateria;
    private String colorPrinc,
            colorSec;
    private Botas botaIzq,
            botaDer;
    private Guantes guanteIzq,
            guanteDer;

    public String toString(Armadura armadura) {
        return "Bateria: " + armadura.bateria + "%"
                + "\n-----------------------------------------------------------------------------"
                + "\n Bota Izquierda: " + armadura.botaIzq.danhos(armadura.botaIzq) 
                + "| Bota Derecha: " + armadura.botaDer.danhos(armadura.botaDer)
                + "\n-----------------------------------------------------------------------------"
                + "\n GuanteIzq: " + armadura.guanteIzq.danhos(armadura.guanteIzq) 
                + "| Guante Derecho: " + armadura.guanteDer.danhos(armadura.guanteDer);
    }

    public Armadura() {
    }

    public Armadura(Double bateria, String colorPrinc, String colorSec, Botas botaIzq, Botas botaDer, Guantes guanteIzq, Guantes guanteDer) {
        this.bateria = bateria;
        this.colorPrinc = colorPrinc;
        this.colorSec = colorSec;
        this.botaIzq = botaIzq;
        this.botaDer = botaDer;
        this.guanteIzq = guanteIzq;
        this.guanteDer = guanteDer;
    }

    public Double getBateria() {
        return bateria;
    }

    public void setBateria(Double bateria) {
        this.bateria = bateria;
    }

    public String getColorPrinc() {
        return colorPrinc;
    }

    public void setColorPrinc(String colorPrinc) {
        this.colorPrinc = colorPrinc;
    }

    public String getColorSec() {
        return colorSec;
    }

    public void setColorSec(String colorSec) {
        this.colorSec = colorSec;
    }

    public Botas getBotaIzq() {
        return botaIzq;
    }

    public void setBotaIzq(Botas botaIzq) {
        this.botaIzq = botaIzq;
    }

    public Botas getBotaDer() {
        return botaDer;
    }

    public void setBotaDer(Botas botaDer) {
        this.botaDer = botaDer;
    }

    public Guantes getGuanteIzq() {
        return guanteIzq;
    }

    public void setGuanteIzq(Guantes guanteIzq) {
        this.guanteIzq = guanteIzq;
    }

    public Guantes getGuanteDer() {
        return guanteDer;
    }

    public void setGuanteDer(Guantes guanteDer) {
        this.guanteDer = guanteDer;
    }

}
