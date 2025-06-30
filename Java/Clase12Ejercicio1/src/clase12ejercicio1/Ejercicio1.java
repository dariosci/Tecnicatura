package clase12ejercicio1;

import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        /* Ejercicio 1: Construir un programa que, dado un número total de
        horas, devuelve el número de semanas, días y horas equivalentes.
        Por ejemplo dado un total de 1000 horas debe mostrar 5 semanas,
        6 días y 16 horas.
         */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese la cantidad de horas totales: ");
        int horasTotales = Integer.parseInt(entrada.nextLine());
        
        int semanas = horasTotales / 168; // 1 semana = 168 horas
        int dias = (horasTotales % 168) / 24; // 1 día = 24 horas
        int horas = horasTotales % 24;
        System.out.println(horasTotales + " horas son equivalentes a: " + semanas + " semanas, " + dias + " dias y " + horas + " horas.");
    }
}
