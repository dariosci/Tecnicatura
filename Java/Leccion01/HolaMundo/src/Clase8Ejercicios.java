import java.util.Scanner;

public class Clase8Ejercicios {
    public static void main(String[] args) {
        //Sacar área y perímetro de un rectángulo
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese el alto del rectangulo: ");
        double alto = Double.parseDouble(entrada.nextLine());
        System.out.println("Ingrese el ancho del rectángulo:");
        double ancho = Double.parseDouble(entrada.nextLine());

        var area = alto * ancho;
        var perimetro = (alto * 2) + (ancho * 2);
        System.out.println("Área = " + area);
        System.out.println("Perímetro = " + perimetro);

        //El mayor de dos números (Operador Ternario)
        //Scanner entrada = new Scanner(System.in);
        System.out.println("-----------------------------------------");
        System.out.println("Digite el primer numero: ");
        int numA = Integer.parseInt(entrada.nextLine());
        System.out.println("Digite el segundo numero: ");
        int numB = Integer.parseInt(entrada.nextLine());

        var esMayor = numA > numB ? "numA es mayor" : "numB es mayor";
        System.out.println(esMayor);
    }
}