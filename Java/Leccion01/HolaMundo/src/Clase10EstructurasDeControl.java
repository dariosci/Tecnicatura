import java.util.Scanner;

public class Clase10EstructurasDeControl {
    public static void main(String[] args) {
        //ESTRUCTURA DE CONTROL IF/ELSE
        var condicion = true;
        if (condicion) {
            System.out.println("Condicion Verdadera"); //condicional simple
        } else {
            System.out.println("Condicion Falsa"); //condicional doble
        }

        //Ejercicio
        var numero = 5;
        var numeroTexto = "Número desconocido";
        if (numero == 1) {
            numeroTexto = "Número uno";
        } else if (numero == 2) {
            numeroTexto = "Número dos";
        } else if (numero == 3) {
            numeroTexto = "Número tres";
        } else if (numero == 4) {
            numeroTexto = "Número cuatro";
        } else {
            numeroTexto = "Número no encontrado";
        }
        System.out.println("numeroTexto = " + numeroTexto);

        //Ejercicio: Cálculo de las estaciones del año con if else
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese un mes: ");
        var mes = Integer.parseInt(entrada.nextLine());
        String estacion = "Valor incorrecto";
        if (mes == 12 || mes == 1 || mes == 2){
            estacion = "Verano";
        } else if (mes == 3 || mes == 4 || mes == 5) {
            estacion = "Otoño";
        } else if (mes == 6 | mes == 7 || mes == 8) {
            estacion = "Invierno";
        } else if (mes == 9 || mes == 10 || mes == 11) {
            estacion = "Primavera";
        } else {
            estacion = "Valor incorrecto";
        }
        System.out.println("estacion = " + estacion);
    }
}
