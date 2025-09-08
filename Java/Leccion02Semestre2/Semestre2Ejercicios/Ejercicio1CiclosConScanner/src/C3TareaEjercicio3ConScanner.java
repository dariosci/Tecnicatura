/*
 * Ejercicio 3: Leer números hasta que se introduzca un cero.
 * Para cada uno indicar si es par o impar.
 * Primero lo haremos con la Clase Scanner
 * Luego con la Clase JOptionPane
 */

import java.util.Scanner;

public class C3TareaEjercicio3ConScanner {
    public static void main(String[] args) {
        int num;
        Scanner entrada = new Scanner(System.in);
        do {
            System.out.println("Ingrese un número: "); // pedimos al usuario un número
            num = Integer.parseInt(entrada.nextLine()); // capturamos el numero con la clase scanner
            if (num == 0) { // Si es igual a cero termina el programa
                System.out.println("Programa finalizado por que ingresó cero");
                break;
            } else if (num % 2 != 0) { // Comparamos si el número es IMPAR
                System.out.println("El número " + num + " es IMPAR");
            } else if (num % 2 == 0) { // Comparamos si el numero es PAR
                System.out.println("El número " + num + " es PAR");
            }
        } while (num != 0);
    }
}
