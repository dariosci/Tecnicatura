/*
 * Ejercicio 3: Leer números hasta que se introduzca un cero.
 * Para cada uno indicar si es par o impar.
 * Primero lo haremos con la Clase Scanner
 * Luego con la Clase JOptionPane
 */

import javax.swing.JOptionPane;

public class C3TareaEjercicio3ConJOptionPane {
    public static void main(String[] args) {
        int num;        
        do {
            num = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un número: ")); // pedimos al usuario un número usando la clase JOptionPane
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
