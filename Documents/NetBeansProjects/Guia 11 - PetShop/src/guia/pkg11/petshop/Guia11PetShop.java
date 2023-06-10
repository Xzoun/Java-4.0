package guia.pkg11.petshop;

import Servicios.ServicioPetShop;

public class Guia11PetShop {

    public static void main(String[] args) {
        ServicioPetShop PetShop = new ServicioPetShop();
        System.out.println("----------------------");
        System.out.println("Bienvenido");
        PetShop.DB();
        PetShop.menu();
    }
}
