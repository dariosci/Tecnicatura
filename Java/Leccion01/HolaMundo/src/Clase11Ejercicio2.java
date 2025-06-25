import java.util.Scanner;

public class Clase11Ejercicio2 {
    public static void main(String[] args) {
        /*
         * En un almacén se hace un 20 MOD de descuento a los clientes cuya 
         * compra supere los $100. ¿Cuál será la cantidad que pagará una persona
         * por su compra?
         */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese la cantidad a pagar: ");
        float compra = Float.parseFloat(entrada.nextLine());
        double descuento = 0;
        if (compra > 100){
            descuento = compra * 0.2;
        } else {
            descuento = 0;
        }
        double precioFinal = compra - descuento;
        System.out.println("El precio a pagar es: " + precioFinal);
    }
}