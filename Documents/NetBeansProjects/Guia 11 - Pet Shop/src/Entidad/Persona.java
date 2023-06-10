/*
Realizar un programa para que una Persona pueda adoptar un Perro. Vamos a contar dedos
clases. Perro, que tendrá como atributos: nombre, raza, edad y tamaño; y la clase 
Persona conatributos: nombre, apellido, edad, documento y Perro.
Ahora deberemos en el main crear dos Personas y dos Perros. Después, vamos a tener que
pensar la lógica necesaria para asignarle a cada Persona un Perro y por ultimo,
mostrar desde la clase Persona, la información del Perro y de la Persona.
 */
package Entidad;

public class Persona {

    private String nombre,
            apellido;
    private Mascota mascota;
    private int edad,
            documento;

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

    public Persona(String nombre, String apellido, Mascota mascota, int edad, int documento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.mascota = mascota;
        this.edad = edad;
        this.documento = documento;
    }

    public Persona() {
    }

}