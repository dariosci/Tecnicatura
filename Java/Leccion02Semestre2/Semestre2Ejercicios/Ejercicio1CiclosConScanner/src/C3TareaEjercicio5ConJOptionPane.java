/*
 * Ejercicio 5: Realizar un juego para adivinar un número,
 * para ello generar un número aleatorio entre 0-100, y luego
 * ir pidiendo números indicando "es mayor" o "es menor" segun
 * sea mayor y menor con respecto a N.
 * El proceso termina cuando el usuario acierta y mostramos la cantidad de intentos hechos
 */

import javax.swing.JOptionPane;

public class C3TareaEjercicio5ConJOptionPane {
    public static void main(String[] args) {
        int num;
        int max = 100;
        int min = 1;
        int intentos = 0;
        int numAleatorio = (int) (Math.random() * (max - min + 1)) + min;   
        System.out.println("Adivina el Número Secreto! ");
        do {            
            System.out.println("Ingrese un número: "); // pedimos al usuario un número
            num = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un número: ")); // Pedimos al usuario que ingrese un número usando la clase JOptionPane
            if (num == numAleatorio) { // Si hubo acierto termina el programa
                intentos++;
                System.out.println("Felicitaciones!!! Adivinaste el número secreto en: " + intentos + " intentos");                
                break;
            } else if (num < numAleatorio) {
                intentos += 1;
                System.out.println("El número secreto es MAYOR");
            } else {
                intentos += 1;
                System.out.println("El número secreto es MENOR");
            }
        } while (num != numAleatorio);
    }
}
