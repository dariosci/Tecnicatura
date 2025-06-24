/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package clase9ejercicio6;

import java.util.Scanner;

/**
 *
 * @author dario
 */
public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float guillermo, luis, juan, total;
        System.out.println("Ingrese la cantidad de dinero de Guillermo: ");
        guillermo = Float.parseFloat(entrada.nextLine());
        luis = guillermo/2;
        juan = (guillermo + luis) / 2;
        total = guillermo + luis + juan;
        System.out.println("Guillermo tiene $" + guillermo);
        System.out.println("Luis tiene $" + luis);
        System.out.println("Juan tiene $" + juan);
        System.out.println("El dinero total que juntan entre los 3: " + total);
    }    
}

