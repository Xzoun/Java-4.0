package Servicios;

import Entidad.Armadura;

public class GuantesServicios extends ArmaduraServicios {

    @Override
    public double consumo(Integer consumo, Integer tiempo) {
        Double consumoX = super.consumo(consumo, tiempo);
        return consumoX;
    }

    public boolean getDanhado(Armadura armadura) {

        if (armadura.getGuanteDer().getDanhado()) {
            return armadura.getGuanteIzq().getDanhado();
        } else {
            return armadura.getGuanteDer().getDanhado();
        }
    }
}
