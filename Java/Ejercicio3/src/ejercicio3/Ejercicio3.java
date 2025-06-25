package ejercicio3;
import java.util.Scanner;

public class Ejercicio3 {
    public static void main(String[] args) {
        //Sacar área y perímetro de un rectángulo
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese el alto del rectangulo: ");
        System.out.println("Ingree el alto del rectangulo: ");
        double alto = Double.parseDouble(entrada.nextLine());
        System.out.println("Digite el ancho del rectángulo:");
        double ancho = Double.parseDouble(entrada.nextLine());

        var area = alto * ancho;
        var perimetro = (alto * 2) + (ancho * 2);
        System.out.println("Área = " + area);
        System.out.println("Perímetro = " + perimetro);
    }    
}