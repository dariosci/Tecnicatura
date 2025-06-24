package condicionalejercicio_2;

import java.util.Scanner;

public class CondicionalEjercicio_2 {

    public static void main(String[] args) {
        //Ejercicio2: Estaciones del año con switch
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese un mes del año: ");
        var mes = Integer.parseInt(entrada.nextLine());
        var estacion = "Estación desconocida";
        switch (mes) {
            case 12, 1, 2:
                estacion = "Verano";
                break;
            case 3, 4, 5:
                estacion = "Otoño";
                break;
            case 6, 7, 8:
                estacion = "Invierno";
                break;
            case 9, 10 , 11:
                estacion = "Primavera";
                break;
            default: //OPCIONAL
                estacion = "Mes incorrecto";
        }
        System.out.println("estacion = " + estacion);
    }
    
}
