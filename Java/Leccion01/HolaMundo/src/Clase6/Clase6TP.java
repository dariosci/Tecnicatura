package Clase6;
import java.util.Scanner;

public class Clase6TP {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite el nombre del libro: ");
        String nombreLibro = entrada.nextLine();
        System.out.println("Digite el ID del libro: ");
        int idLibro = Integer.parseInt(entrada.nextLine());
        System.out.println("Digite el precio del libro: ");
        double precioLibro = Double.parseDouble(entrada.nextLine()); 
        System.out.println("Es envío es gratuito (true/false): ");
        boolean gratuito = Boolean.parseBoolean(entrada.nextLine()); 

        System.out.println("Nombre: " + nombreLibro);
        System.out.println("ID: " + idLibro);
        System.out.println("Precio: $" + precioLibro);
        System.out.println("Envío Gratuito?: " + gratuito);
    }
}
