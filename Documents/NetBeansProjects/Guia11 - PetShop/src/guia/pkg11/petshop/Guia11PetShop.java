package guia.pkg11.petshop;

import Servicios.PetShop;

public class Guia11PetShop {

    public static void main(String[] args) {
        PetShop PetShop = new PetShop();
        System.out.println("----------------------");
        System.out.println("Bienvenido");
        PetShop.DB();
        PetShop.menu();
    }
}
