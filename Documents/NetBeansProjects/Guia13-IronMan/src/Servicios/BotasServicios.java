package Servicios;

import Entidad.Armadura;

public class BotasServicios extends ArmaduraServicios {

    @Override
    public double consumo(Integer consumo, Integer tiempo) {
        Double consumoX = super.consumo(consumo, tiempo);
        return consumoX;
    }

    public boolean getDanhado(Armadura armadura) {

        if (Math.random() >= 0.4) {

            if (armadura.getBotaIzq().getDanhado()) {
                return armadura.getBotaDer().getDanhado();
            } else {
                return armadura.getBotaIzq().getDanhado();
            }

        } else {

            if (armadura.getBotaDer().getDanhado()) {
                return armadura.getBotaIzq().getDanhado();
            } else {
                return armadura.getBotaDer().getDanhado();
            }

        }

    }
}
