/*
 * Ejercicio 4: Pedir números hasta que se teclee uno negativo,
 * y mostrar cuantos números se han introducido.
 * Lo hacemos primero con la clase Scanner
 * Luego lo hacemos con la clase JOptionPane
 */
import javax.swing.JOptionPane;

public class C4TareaEjercicio7conJOptionPane {
    public static void main(String[] args) {
        float num, contador, suma;
        float media;
        suma = 0;
        contador = 0;
        media = 0;
        System.out.println("Ingrese números, para terminar digite un número negativo");
        System.out.println("----------------------------------------------------------");
        do { // Usamos el do-while para que al menos se ejecute una vez el ciclo            
            System.out.println("Ingrese un número: "); // pedimos al usuario un número
            num = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un número: ")); // Pedimos al usuario que ingrese un número usando la clase JOptionPane
            if (num >= 0) { // Comparamos si el numero es mayor o igual a cero
                contador += 1;
                suma += num;
            } else { // Si es Negativo, termina el programa
                System.out.println("Programa finalizado por que ingresó un número negativo");
                break;
            }            
        } while (num >= 0); // el ciclo se va a repetir mientras el numero ingresado es mayor o igual a cero
        media = suma / contador;
        System.out.println("La media de los número ingresados es: " + media);
    }        
}