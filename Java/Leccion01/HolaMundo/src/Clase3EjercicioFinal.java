
import java.util.Scanner;

public class Clase3EjercicioFinal {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese nombre del libro: ");
        var nombreLibro = entrada.nextLine(); //lee una cadena de texto
        System.out.println("Ingrese autor del libro: ");
        var nombreAutor = entrada.nextLine(); //lee una cadena de texto
        System.out.println(nombreLibro + " fue escrito por " + nombreAutor);
    }
}
