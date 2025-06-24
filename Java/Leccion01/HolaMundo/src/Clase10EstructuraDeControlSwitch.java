
import java.util.Scanner;





public class Clase10EstructuraDeControlSwitch {
    public static void main(String[] args) {
        //ESTRUCTURA DE CONTROL SWITCH
        // Scanner entrada = new Scanner(System.in);
        // System.out.println("Ingrese un numero: ");
        // int numero = Integer.parseInt(entrada.nextLine());
        // var numeroTexto = "Número desconocido";
        // switch (numero) {
        //     case 1:
        //         numeroTexto = "Número uno";
        //         break;
        //     case 2:
        //         numeroTexto = "Número dos";
        //         break;
        //     case 3:
        //         numeroTexto = "Número tres";
        //         break;
        //     case 4:
        //         numeroTexto = "Número cuatro";
        //         break;
        //     default:
        //         numeroTexto = "Caso no encontrado";
        // }
        // System.out.println("numeroTexto = " + numeroTexto);

        //Ejercicio2: Estaciones del año con switch
        // Scanner entrada = new Scanner(System.in);
        // System.out.println("Ingrese un mes del año: ");
        // var mes = Integer.parseInt(entrada.nextLine());
        // var estacion = "Estación desconocida";
        // switch (mes) {
        //     case 12, 1, 2:
        //         estacion = "Verano";
        //         break;
        //     case 3, 4, 5:
        //         estacion = "Otoño";
        //         break;
        //     case 6, 7, 8:
        //         estacion = "Invierno";
        //         break;
        //     case 9, 10 , 11:
        //         estacion = "Primavera";
        //         break;
        //     default: //OPCIONAL
        //         estacion = "Mes incorrecto";
        // }
        // System.out.println("estacion = " + estacion);

        //Ejercicio: sistema de calificaciones con if else, como tarea hacerlo también con la sentencia de control switch
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese una Calificación entre 0 y 10: ");
        var notaNumero = Integer.parseInt(entrada.nextLine());
        var notaLetra = "Nota desconocida";

        if(notaNumero >= 9 && notaNumero <= 10){
            notaLetra = "A";
        } else if (notaNumero >= 8 && notaNumero < 9){
            notaLetra = "B";
        }else if (notaNumero >= 7 && notaNumero < 8){
            notaLetra = "C";
        }else if (notaNumero >= 6 && notaNumero < 7){
            notaLetra = "D";
        }else if (notaNumero >= 5 && notaNumero < 6){
            notaLetra = "E";
        }else if (notaNumero >= 4 && notaNumero < 5){
            notaLetra = "F";
        }else {
            notaLetra = "Fuera de rango";
        }
        System.out.println("notaLetra = " + notaLetra);
        
        switch (notaNumero) {
            case 10, 9:
                notaLetra = "A";
                break;
            case 8:
                notaLetra = "B";
                break;
            case 7:
                notaLetra = "C";
                break;
            case 6:
                notaLetra = "D";
                break;
            default:
                notaLetra = "Fuera de rango";
        }
        System.out.println("notaLetra = " + notaLetra);

    }
}
