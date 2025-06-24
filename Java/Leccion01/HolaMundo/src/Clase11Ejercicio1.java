import java.util.Scanner;

public class Clase11Ejercicio1 {
    public static void main(String[] args) {
        /*
         * Determinar si un alumno aprueba o reprueba un curso, sabiendo que
         * aprobará si su promedio de tres calificaciones es mayor o igual a 70,
         * Reprueba casa contrario.
         */
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese Nota1: ");
        var nota1 = Float.parseFloat(entrada.nextLine());
        System.out.println("Ingrese Nota2: ");
        var nota2 = Float.parseFloat(entrada.nextLine());
        System.out.println("Ingrese Nota3: ");
        var nota3 = Float.parseFloat(entrada.nextLine());
        var promedio = (nota1 + nota2 + nota3) / 3;
        if (promedio >= 70 ){
            System.out.println("El alumno está aprobado con: " + promedio);
        } else {
            System.out.println("El alumno está desaprobado con: " + promedio);
        }
    }
}
