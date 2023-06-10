package Entidad;

public class Persona {

    private String nombre,
            apellido;
    private Mascota mascota;
    private int edad,
            documento;

    @Override
    public String toString() {
        return "nombre=" + nombre + ", apellido=" + apellido + ", mascota=" + mascota + ", documento=" + documento;
    }

    public Persona() {
    }

    public Persona(String nombre, String apellido, Mascota mascota, int edad, int documento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.mascota = mascota;
        this.edad = edad;
        this.documento = documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Mascota getMascota() {
        return mascota;
    }

    public void setMascota(Mascota mascota) {
        this.mascota = mascota;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

}
