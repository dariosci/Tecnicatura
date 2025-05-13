import java.util.Scanner;

public class Clase3ClaseScanner {
    public static void main(String[] args) {
        //Clase Scanner
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite su nombre: ");
        var usuario2 = entrada.nextLine(); //lee una cadena de texto
        System.out.println("usuario2 = " + usuario2);
        System.out.println("Escriba el titulo: ");
        var titulo2 = entrada.nextLine(); //lee una cadena de texto
        System.out.println("Resultado = " + titulo2 + " " + usuario2);
    }
}
