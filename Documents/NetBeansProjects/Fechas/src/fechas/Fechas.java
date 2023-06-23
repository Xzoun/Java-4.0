package fechas;

import java.time.LocalDate;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Fechas {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.println("Cuantas Muestras generamos?");
        Integer generarVarias = leer.nextInt();
        for (int i = 0; i < generarVarias; i++) {
            LocalDate fechaInicio = generarFechaInicio();
            LocalDate fechaFin = generarFechaFinalizacion(fechaInicio);

            System.out.println("--------------------------------------");
            System.out.println("Fecha Inicio: " + fechaInicio);
            System.out.println("Fecha fin: " + fechaFin);
            Integer meses = mesesTranscurridos(fechaInicio, fechaFin);
            System.out.println("Meses: " + meses);
            LocalDate unMesMas = proximoVencimiento(fechaInicio, fechaFin);
            System.out.println("Un mes más: " + unMesMas);
            System.out.println("--------------------------------------");
            System.out.println("");
        }
    }
//--------------------------------------- FechaInicio : ------------------------------

    public static LocalDate generarFechaInicio() {
        LocalDate fechaActual = LocalDate.now();
        LocalDate fechaHace5Anios = fechaActual.minusYears(5);

        long minDay = fechaHace5Anios.toEpochDay();
        long maxDay = fechaActual.toEpochDay();

        long randomDay = ThreadLocalRandom.current().nextLong(minDay, maxDay + 1);

        return LocalDate.ofEpochDay(randomDay);
    }
//--------------------------------------- Fecha Fin : ------------------------------

    public static LocalDate generarFechaFinalizacion(LocalDate fechaInicio) {
        LocalDate fechaActual = LocalDate.now();
        LocalDate fechaRenovacion = fechaInicio.plusYears(1);

        if (fechaRenovacion.isAfter(fechaActual)) {
            return fechaRenovacion;
        } else {
            long minDay = fechaRenovacion.toEpochDay();
            long maxDay = fechaActual.toEpochDay();

            long randomDay = ThreadLocalRandom.current().nextLong(minDay, maxDay + 1);

            return LocalDate.ofEpochDay(randomDay);
        }
    }
//--------------------------------------- Meses : ------------------------------

    public static int mesesTranscurridos(LocalDate fechaInicio, LocalDate fechaFinalizacion) {
        LocalDate fechaActual = LocalDate.now();
        int cuotasAbonadas = 0;

        LocalDate fechaRenovacion = fechaInicio.plusYears(1);
        while ((fechaRenovacion.isBefore(fechaActual)
                || fechaRenovacion.isEqual(fechaActual))
                && (fechaRenovacion.isBefore(fechaFinalizacion)
                || fechaRenovacion.isEqual(fechaFinalizacion))) {
            cuotasAbonadas += 12;
            fechaInicio = fechaRenovacion;
            fechaRenovacion = fechaRenovacion.plusYears(1);
        }

        if (fechaFinalizacion.isBefore(fechaActual)
                || fechaFinalizacion.isEqual(fechaActual)
                || fechaFinalizacion.isBefore(fechaRenovacion)
                || fechaFinalizacion.isEqual(fechaRenovacion)) {
            int mesesHastaFinalizacion = fechaInicio.until(fechaFinalizacion).getMonths();
            cuotasAbonadas += mesesHastaFinalizacion;
        }

        return cuotasAbonadas;
    }
//--------------------------------------- 1 mes mas : ------------------------------

    public static LocalDate proximoVencimiento(LocalDate fechaInicio, LocalDate fechaFinalizacion) {
        LocalDate fechaActual = LocalDate.now();

        LocalDate fechaRenovacion = fechaInicio.plusMonths(1);
        while ((fechaRenovacion.isBefore(fechaActual)
                || fechaRenovacion.isEqual(fechaActual))
                && (fechaRenovacion.isBefore(fechaFinalizacion)
                || fechaRenovacion.isEqual(fechaFinalizacion))) {
            fechaRenovacion = fechaRenovacion.plusMonths(1);
        }
        return fechaRenovacion;
    }
}
