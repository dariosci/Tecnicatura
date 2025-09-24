/*
Ejercicio 8: Pedir un número N, y mostrar todos los números de 1 a N.
*/

import java.util.Scanner;

public class C5TareaEjercicio8conScanner {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int num;
        System.out.println("Ingrese un número: "); // pedimos al usuario un número
        num = Integer.parseInt(entrada.nextLine()); // capturamos el numero con la clase scanner
        for (int i = 1; i <= num; i++){
            System.out.println(i);
        }
    }    
}
