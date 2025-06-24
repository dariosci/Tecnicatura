package condicionalejercicio_1;
import java.util.Scanner;

public class CondicionalEjercicio_1 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese un mes del año: ");
        var mes = Integer.parseInt(entrada.nextLine());
        var estacion = "Estación desconocida";
        if (mes == 12 || mes == 1 || mes == 2){
            estacion = "Verano";
        } else if (mes == 3 || mes == 4 || mes == 5) {
            estacion = "Otoño";
        } else if (mes == 6 | mes == 7 || mes == 8) {
            estacion = "Invierno";
        } else if (mes == 9 || mes == 10 || mes == 11) {
            estacion = "Primavera";
        }
        System.out.println("estacion = " + estacion);
    }
    
}
