package clase12ejercicio2;
import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        /* 
        Ejercicio 2: Hacer un programa que calcule el cuadro de una suma,
        el usuario debe ingresar el valor de a y el valor de b.
        Formula: (a+b)2=a2+b2+2*a*b
        Para esto deberán utilizar la clase Math y un método llamado pow
        */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese a: ");
        int a = Integer.parseInt(entrada.nextLine());
        System.out.println("Ingrese a: ");
        int b = Integer.parseInt(entrada.nextLine());

        var formula = (Math.pow((a + b), 2)) == (Math.pow (a, 2) + Math.pow(b, 2) + 2 * a * b);
        double resultado1 = Math.pow((a + b), 2);
        double resultado2 = Math.pow (a, 2) + Math.pow(b, 2) + 2 * a * b;
        System.out.println("resultado 1: " + resultado1);
        System.out.println("resultado 2: " + resultado2);
        System.out.println("Se cumple la formula?: "+ formula);        
    }
}