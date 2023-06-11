package Entidad;

public class Mascota {

    private String especie,
            tamano,
            nombre;
    private Integer id,
            edad;
    private boolean adoptada;

    @Override
    public String toString() {
        return "{" + nombre + ", tamano " +tamano + ", id " + id + ", edad " + edad + '}';
    }



    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getTamano() {
        return tamano;
    }

    public void setTamano(String tamano) {
        this.tamano = tamano;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
     public boolean getAdoptada() {
        return adoptada;
    }

    public void setAdoptada(boolean adoptada) {
        this.adoptada = adoptada;
    }

    public Mascota() {
    }

    public Mascota(String especie, String tamano, String nombre, int id, int edad,boolean adoptada) {
        this.especie = especie;
        this.tamano = tamano;
        this.nombre = nombre;
        this.id = id;
        this.edad = edad;
        this.adoptada = adoptada;
    }
}
