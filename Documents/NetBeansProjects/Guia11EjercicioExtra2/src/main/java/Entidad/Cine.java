package Entidad;

public class Cine {
    private String peliculaRep;
    private Integer precio;
    private  Object[][] sala;

    public String getPeliculaRep() {
        return peliculaRep;
    }

    public void setPeliculaRep(String peliculaRep) {
        this.peliculaRep = peliculaRep;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

    public Object[][] getSala() {
        return sala;
    }

    public void setSala(Object[][] sala) {
        this.sala = sala;
    }

    public Cine(String peliculaRep, Integer precio, Object[][] sala) {
        this.peliculaRep = peliculaRep;
        this.precio = precio;
        this.sala = sala;
    }
}
