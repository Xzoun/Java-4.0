/*Crear una clase llamada Libro que contenga los siguientes atributos: 
ISBN, Título, Autor, Número de páginas, y un constructor con todos los atributos 
pasados por parámetro y un constructor vacío. Crear un método para cargar un libro pidiendo 
los datos al usuario y luego informar mediante otro método el número de ISBN, el título, el autor 
del libro y el número de páginas.
*/
package LIBRO1;

import java.util.Scanner;


public class Libro1 {
    
    private String Titulo;
    private String Autor;
    private int ISBN;
    private int numPag;
    //El vacio se crea para poder importar a traves del get las variables desde elmain sin declararlas.
    public Libro1() {
    }
    //El constructor con a traves del set le asigna los valores a las propiedades declaradas.Parametros
    public Libro1(int ISBN, int numPag, String Titulo, String Autor) {
        this.ISBN = ISBN;
        this.numPag = numPag;
        this.Titulo = Titulo;
        this.Autor = Autor;
    }
    //El set lleva el valor al main
    //El get le carga los valores a las variables
    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getAutor() {
        return Autor;
    }

    public void setAutor(String Autor) {
        this.Autor = Autor;
    }

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    public int getNumPag() {
        return numPag;
    }

    public void setNumPag(int numPag) {
        this.numPag = numPag;
    }

    
    
    public void datos(){
        System.out.println("Ingrese los datos \n Titulo: \n Autor: \n ISBN: \n Numero de Paginas:");
        Scanner leer = new Scanner(System.in);
        Titulo = leer.nextLine();
        Autor = leer.nextLine();
        ISBN = leer.nextInt();
        numPag = leer.nextInt();
        
    }
    public void mostrar(){
        System.out.println("Titulo: " + Titulo + "\nAutor: "+ Autor + "\nISBN: " + ISBN + "\nNumero de Páginas: "+ numPag);
    }
    function subir(){
    }
            
}
