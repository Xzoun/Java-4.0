package Entidad;

import Entidad.Herencia.Repulsores;

public class Guantes {

    private boolean danhado;
    private Repulsores repulsores;

    public String danhos(Guantes guante) {
        String daños = "";
        if (guante.danhado) {
            daños = "Inutilizable.";
        } else {
            daños = "Utilizable.";
        }
        return "Repulsor: " + daños;
    }

    public Guantes() {
    }

    public boolean getDanhado() {
        return danhado;
    }

    public void setDanhado(boolean danhado) {
        this.danhado = danhado;
    }

    public Repulsores getRepulsores() {
        return repulsores;
    }

    public void setRepulsores(Repulsores repulsores) {
        this.repulsores = repulsores;
    }

    public Guantes(boolean danhado, Repulsores repulsores) {
        this.danhado = danhado;
        this.repulsores = repulsores;
    }

}
