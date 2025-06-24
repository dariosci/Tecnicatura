package ejercicio5;
import java.util.Scanner;

/**
 *
 * @author dario
 */
public class Ejercicio5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float notaA, notaB, notaC, sumaNotas;
        System.out.println("Digite notaA: ");
        notaA = Float.parseFloat(entrada.nextLine());
        System.out.println("Digite notaB: ");
        notaB = Float.parseFloat(entrada.nextLine());
        System.out.println("Digite notaC: ");
        notaC = Float.parseFloat(entrada.nextLine());
        sumaNotas = notaA + notaB + notaC;
        System.out.println("La suma de las notas es: " + sumaNotas);
    }
    
}
