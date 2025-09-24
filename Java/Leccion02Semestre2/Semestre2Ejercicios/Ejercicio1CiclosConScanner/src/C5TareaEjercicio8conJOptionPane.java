
import javax.swing.JOptionPane;

/*
Ejercicio 8: Pedir un número N, y mostrar todos los números de 1 a N.
*/

public class C5TareaEjercicio8conJOptionPane {
    public static void main(String[] args) {
        int num;
        num = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un número: ")); // capturamos el numero con la clase scanner
        for (int i = 1; i <= num; i++){
            System.out.println(i);
        }
    }  
}
