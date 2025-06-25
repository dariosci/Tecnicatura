package clase9ejercicio7;
import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        // COMO LO HICE
        final float salario = 1000;
        Double salarioMes, comision, valorVenta;
        int cantA;
        String vendedor;

        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese el nombre el Vendedor:");
        vendedor = String.valueOf(entrada.nextLine());
        System.out.println("Ingrese la cantidad de auto que vendió " + vendedor + ":");
        cantA = Integer.parseInt(entrada.nextLine());
        System.out.println("Ingrese el monto de venta por carro: ");
        valorVenta = Double.valueOf(entrada.nextLine());
        comision = 150 * cantA + (((valorVenta * cantA) * 5)/100);
        salarioMes = salario + comision;
        System.out.println("El salario por mes de " + vendedor + " es: $" + salarioMes);
        
        //COMO SALIA RESUELTO (EL RESULTADO ES EL MISMO)
        /* 
        Scanner entrada = new Scanner(System.in);
        final int salario = 1000;
        int comision = 150, venta;
        float salarioMes, ventaCarro, porcVenta, totalPrecio;
        String vendedor;
        
        System.out.println("Ingrese el nombre el Vendedor:");
        vendedor = String.valueOf(entrada.nextLine());
        System.out.println("Ingrese la cantidad de auto vendidos por " + vendedor + ":");
        venta = Integer.parseInt(entrada.nextLine());
        System.out.println("Ingrese el precio de un carro: ");
        ventaCarro = Float.parseFloat(entrada.nextLine());
        
        comision *= venta;
        totalPrecio = ventaCarro * venta;
        porcVenta = totalPrecio * 0.05f;
        salarioMes = salario + comision + porcVenta;
        System.out.println("El salario por mes de " + vendedor + " es: $" + salarioMes);
        */
    }    
}
