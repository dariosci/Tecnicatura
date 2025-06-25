import java.util.Scanner;
public class Clase7Ejercicio2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int horas;
        double tarifaHora, salario;
        System.out.println("Ingrese las horas semanales trabajadas:");
        horas = entrada.nextInt();
        System.out.println("Ingrese el salario por hora:");
        tarifaHora = entrada.nextDouble();

        salario = horas * tarifaHora;
        System.out.println("El salario del empleado es: " + salario);
    }
}