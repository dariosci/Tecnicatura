import java.util.Scanner;

public class Clase6TiposPrimitivosConversion {
    public static void main(String[] args) {
    // Conversion de tipos primitivos
    var edad = Integer.parseInt("20");  //convertimos a int
    System.out.println("Edad: " + (edad + 1));
    var valorPI = Double.parseDouble("3.1416");
    System.out.println("Valor PI: " + valorPI);

    //Pedir un valor
    var entrada = new Scanner(System.in);
    System.out.println("Digite su edad:");
    edad = Integer.parseInt(entrada.nextLine());
    System.out.println("edad = " + edad);

    // Convertir de tipos primitivos en Java Parte 2
    var edadTexto = String.valueOf(10);
    System.out.println("edadTexto = " + edadTexto);
    
    var fraseChar = "programadores".charAt(12);
    System.out.println("fraseChar = " + fraseChar);
    
    System.out.println("Digite un caracter");
    fraseChar = entrada.nextLine().charAt(0);
    System.out.println("fraseChar = " + fraseChar);


    }
}
