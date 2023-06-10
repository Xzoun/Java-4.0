/*
Realizar un programa para que una Persona pueda adoptar un Perro. Vamos a contar de 
dos clases. Perro, que tendrá como atributos: nombre, raza, edad y tamaño; y la clase 
Persona con atributos: nombre, apellido, edad, documento y Perro.
Ahora deberemos en el main crear dos Personas y dos Perros. Después, vamos a tener que
pensar la lógica necesaria para asignarle a cada Persona un Perro y por ultimo,
mostrar desde la clase Persona, la información del Perro y de la Persona.
 */
package Entidad;

public class Mascota {

    private String especie,
            tamaño,
            nombre;
    private int id,
            edad;

    @Override
    public String toString() {
        return "Mascota{" + "especie=" + especie + ", tama\u00f1o=" + tamaño + ", nombre=" + nombre + ", id=" + id + ", edad=" + edad + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Mascota(int id) {
        this.id = id;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getTamaño() {
        return tamaño;
    }

    public void setTamaño(String tamaño) {
        this.tamaño = tamaño;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public Mascota() {
    }

    public Mascota(String especie, String tamaño, String nombre, int edad,int id) {
        this.especie = especie;
        this.tamaño = tamaño;
        this.nombre = nombre;
        this.edad = edad;
        this.id = id;
    }

}