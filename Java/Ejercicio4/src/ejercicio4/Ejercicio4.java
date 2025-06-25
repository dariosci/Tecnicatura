package ejercicio4;
import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {
        //El mayor de dos números (Operador Ternario)
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite el primer numero: ");
        int numA = Integer.parseInt(entrada.nextLine());
        System.out.println("Digite el segundo numero: ");
        int numB = Integer.parseInt(entrada.nextLine());

        var esMayor = numA > numB ? "numA es mayor" : "numB es mayor";
        System.out.println(esMayor);        
    }    
}