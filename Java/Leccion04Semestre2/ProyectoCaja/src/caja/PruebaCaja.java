package caja;

import java.util.Scanner;

public class PruebaCaja {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int medidaAncho = 3;
        int medidaAlto = 2;
        int medidaProf = 6;
    
        Caja caja1 = new Caja();//Instanciamos el objeto, constructor vacio
        caja1.ancho = medidaAncho;
        caja1.alto = medidaAlto;
        caja1.profundidad = medidaProf;
        int resultado = caja1.calcularVolumen(); // Llamamos al método
        // Primer resultado
        System.out.println("Resultado = " + resultado);
        
        Caja caja2 = new Caja(); //Instanciamos el objeto, constructor vacio
        //le pasamos los valores al objeto con Scanner
        System.out.println("Ingrese ancho: "); 
        caja2.ancho = Integer.parseInt(entrada.nextLine());
        System.out.println("Ingrese alto: ");
        caja2.alto = Integer.parseInt(entrada.nextLine());
        System.out.println("Ingrese profundidad: ");
        caja2.profundidad = Integer.parseInt(entrada.nextLine());
    
        int resultado2 = caja2.calcularVolumen(); // Llamamos al método
        // Segundo resultado
        System.out.println("Resultado = " + resultado2);
        
        Caja caja3 = new Caja(2, 4, 6); // Llamamos al constructor 2 con nuevos argumentos
        // Llamamos con el nuevo objeto al método para un nuevo calculo
        // Tercer Resultado
        System.out.println("Resultado volumen de caja 2: " + caja3.calcularVolumen());
    }
}
