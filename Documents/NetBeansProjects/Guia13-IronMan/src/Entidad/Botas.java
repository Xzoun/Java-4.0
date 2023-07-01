package Entidad;

import Entidad.Herencia.Propulsores;

public class Botas{
private boolean danhado ;
private Propulsores propulsor;

    public Botas() {
    }

    public String danhos(Botas bota) {
        String daños = "";
        if(bota.danhado){
            daños = "Inutilizable.";
        }else{
            daños = "Utilizable.";
        }
        return "Propulsor: " + daños;
    }

    public Botas(boolean danhado, Propulsores propulsor) {
        this.danhado = danhado;
        this.propulsor = propulsor;
    }

    public boolean getDanhado() {
        return danhado;
    }

    public void setDanhado(boolean danhado) {
        this.danhado = danhado;
    }

    public Propulsores getPropulsor() {
        return propulsor;
    }

    public void setPropulsor(Propulsores propulsor) {
        this.propulsor = propulsor;
    }
    

}
