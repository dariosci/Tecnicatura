package clase12ejercicio3;

import java.util.Scanner;

public class Clase12Ejercicio3 {
    public static void main(String[] args) {
        /*Ejercicio 3: La calificacion final de un estudiante de informática
        se calcula con base a las calificaciones de cuatro aspectos de su
        rendimiento académico: participación, primer examen parcial, segundo
        examen parcial y examen final. Sabiendo que las calificaciones anteriores
        entran a la calificación final con ponderaciones de 10%, 25%, 25%
        y 40%, Hacer un programa que calcule e imprima la calificación final
        obtenida por un estudiante. 
        Que el usuario digite las calificaciones de estos 4 datos y así podremos tener,
        la calificación final.
        */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese las Notas para calcular la Calificación Final:");
        System.out.println("Nota Participacion: ");
        float participacion = Float.parseFloat(entrada.nextLine());
        System.out.println("Nota Primer Examen: ");
        float examen1 = Float.parseFloat(entrada.nextLine());
        System.out.println("Nota Segundo Examen: ");
        float examen2 = Float.parseFloat(entrada.nextLine());
        System.out.println("Nota Examen Final: ");
        float examenFinal = Float.parseFloat(entrada.nextLine());
        //Hacemos la comparación requerida y mostramos en pantalla el resultado
	    double notaFinal = (participacion * 0.1) + (examen1 * 0.25) + (examen2 * 0.25) + (examenFinal * 0.4);
	    System.out.println("La calificación final es: " + notaFinal);
    }    
}
