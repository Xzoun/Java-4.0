package Servicios;

import Entidad.Armadura;
import Entidad.Herencia.Consola;
import java.util.Scanner;

public class JARVISServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    BotasServicios botasServ = new BotasServicios();
    GuantesServicios guantesServ = new GuantesServicios();
    Consola consola = new Consola();

    public Integer imput() {
        int tiempo = 0;
        do {
            try {
                tiempo = leer.nextInt();
            } catch (Exception a) {
                leer.next();
                System.out.println("Intene nuevamente");
            }
        } while (tiempo == 0);
        return tiempo;
    }

    public Armadura caminar(Armadura armadura, Integer tiempo) {

        if (!botasServ.getDanhado(armadura)) {

            armadura.setBateria(armadura.getBateria() - botasServ.consumo(1, tiempo));
        }

        return armadura;
    }

    public Armadura correr(Armadura armadura, Integer tiempo) {

        if (!botasServ.getDanhado(armadura)) {
            armadura.setBateria(armadura.getBateria() - botasServ.consumo(2, tiempo));
        }

        return armadura;
    }

    public Armadura propulsar(Armadura armadura) {

        if (!armadura.getBotaDer().getDanhado() && !armadura.getBotaIzq().getDanhado()) {
            armadura.setBateria(armadura.getBateria() - botasServ.consumo(3, 3));
        } else {
            consola.informeDeDanhos("Bota", 3);
        }
        armadura = posibleDanho(armadura, 2);
        return armadura;
    }

    public Armadura volar(Armadura armadura, Integer tiempo) {

        if (!guantesServ.getDanhado(armadura)) {
            if (!botasServ.getDanhado(armadura)) {
                armadura.setBateria(armadura.getBateria() - botasServ.consumo(3, 3) - guantesServ.consumo(2, tiempo));
            } else {
                consola.informeDeDanhos("Bota", 3);

            }
        } else {
            consola.informeDeDanhos("Guante", 3);
        }

        armadura = posibleDanho(armadura, 1);
        armadura = posibleDanho(armadura, 2);

        return armadura;
    }

    public void verEstado(Armadura armadura) {
        System.out.println(consola.toString(armadura));
    }

    public Armadura reparar(Armadura armadura) {

        if (armadura.getGuanteDer().getDanhado() && armadura.getGuanteIzq().getDanhado()) {
            Double aleatorio1 = Math.random();
            Double aleatorio2 = Math.random();
            if (aleatorio1 < 0.4 && aleatorio2 < 0.4) {
                armadura.getGuanteIzq().setDanhado(false);
                armadura.getGuanteDer().setDanhado(false);
                consola.informeDeReparacion("Guante", 3, true);
                //Se repara solo un guante aleatorio. Se informa que se reparó uno y otro no
            } else if (aleatorio1 < 0.4 || aleatorio2 < 0.4) {
                if (Math.random() < 0.5) {
                    consola.informeDeReparacion("Guante", 1, true);
                    consola.informeDeReparacion("Guante", 2, false);
                    armadura.getGuanteDer().setDanhado(false);
                } else {
                    consola.informeDeReparacion("Guante", 1, false);
                    consola.informeDeReparacion("Guante", 2, true);
                    armadura.getGuanteIzq().setDanhado(false);
                }
            }
        } else if (armadura.getGuanteDer().getDanhado()) {
            if (Math.random() < 0.4) {
                armadura.getGuanteDer().setDanhado(false);
                consola.informeDeReparacion("Guante", 1, true);
            } else {
                consola.informeDeReparacion("Guante", 1, false);
            }
        } else if (armadura.getGuanteIzq().getDanhado()) {
            if (Math.random() < 0.4) {
                armadura.getGuanteIzq().setDanhado(false);
                consola.informeDeReparacion("Guante", 2, true);
            } else {
                consola.informeDeReparacion("Guante", 2, false);
            }
        }

        if (armadura.getBotaDer().getDanhado() && armadura.getBotaIzq().getDanhado()) {
            Double aleatorio3 = Math.random();
            Double aleatorio4 = Math.random();
            if (aleatorio3 < 0.4 && aleatorio4 < 0.4) {
                armadura.getBotaIzq().setDanhado(false);
                armadura.getBotaDer().setDanhado(false);
                consola.informeDeReparacion("Bota", 3, true);
                //Se repara solo una bota aleatoria. Se informa que se reparó una y otra no
            } else if (aleatorio3 < 0.4 || aleatorio4 < 0.4) {
                if (Math.random() < 0.5) {
                    consola.informeDeReparacion("Bota", 1, true);
                    consola.informeDeReparacion("Bota", 2, false);
                    armadura.getBotaDer().setDanhado(false);
                } else {
                    consola.informeDeReparacion("Bota", 1, false);
                    consola.informeDeReparacion("Bota", 2, true);
                    armadura.getBotaIzq().setDanhado(false);
                }
            }
        } else if (armadura.getBotaDer().getDanhado()) {
            if (Math.random() < 0.4) {
                armadura.getBotaDer().setDanhado(false);
                consola.informeDeReparacion("Bota", 1, true);
            } else {
                consola.informeDeReparacion("Bota", 1, false);
            }
        } else if (armadura.getBotaIzq().getDanhado()) {
            if (Math.random() < 0.4) {
                armadura.getBotaIzq().setDanhado(false);
                consola.informeDeReparacion("Bota", 2, true);
            } else {
                consola.informeDeReparacion("Bota", 2, false);
            }
        }
        armadura.setBateria(armadura.getBateria() - botasServ.consumo(3, 10));
        return armadura;
    }

    public Armadura disparar(Armadura armadura, Boolean descarga) {

        if (!guantesServ.getDanhado(armadura)) {
            Integer disparos = 1;
            Integer contador = 0;
            if (descarga) {
                disparos = 5;
                for (int i = 0; i < disparos; i++) {
                    if (Math.random() >= 0.3) {
                        contador++;
                    }
                }
            }
            consola.informeDeAciertos(contador, descarga);
            armadura = posibleDanho(armadura, 1);
            armadura.setBateria(armadura.getBateria() - guantesServ.consumo(3, disparos));

        } else {
            consola.informeDeDanhos("Guante", 3);
        }
        return armadura;
    }

    public Armadura posibleDanho(Armadura armadura, Integer parte) {
        if (parte.equals(1)) {
            if (Math.random() <= 0.2) {
                if (armadura.getGuanteDer().getDanhado()) {
                    armadura.getGuanteIzq().setDanhado(true);
                } else if (armadura.getGuanteIzq().getDanhado()) {
                    armadura.getGuanteDer().setDanhado(true);
                } else {
                    if (Math.random() >= 0.5) {
                        armadura.getGuanteDer().setDanhado(true);
                    } else {
                        armadura.getGuanteIzq().setDanhado(true);
                    }
                }
            }
        } else {
            if (Math.random() <= 0.2) {
                if (armadura.getBotaDer().getDanhado()) {
                    armadura.getBotaIzq().setDanhado(true);
                } else if (armadura.getBotaIzq().getDanhado()) {
                    armadura.getBotaDer().setDanhado(true);
                } else {
                    if (Math.random() >= 0.5) {
                        armadura.getBotaDer().setDanhado(true);
                    } else {
                        armadura.getBotaIzq().setDanhado(true);
                    }
                }
            }
        }
        return armadura;
    }
}
