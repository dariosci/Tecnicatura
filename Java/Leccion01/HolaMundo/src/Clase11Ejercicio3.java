import java.util.Scanner;

public class Clase11Ejercicio3 {
    public static void main(String[] args) {
        /*
         * Leer 2 números; si son iguales que los multiplique, si el primero
         * es mayor que el segundo que los reste y si no que los sume.
         */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite un número: ");
        var num1 = Float.parseFloat(entrada.nextLine());
        System.out.println("Digite otro número: ");
        var num2 = Float.parseFloat(entrada.nextLine());
        double resultado = 0;
        if (num1 == num2) {
            resultado = num1 * num2;
        } else if (num1  > num2) {
            resultado = num1 - num2;
        } else {
            resultado = num1 + num2;
        }
        System.out.println("resultado = " + resultado);
    }
}