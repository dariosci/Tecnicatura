
public class Clase8PrioridadOperadores {
    public static void main(String[] args) {
        //Prioridad de Operadores
        var x = 5;
        var y = 10;
        var z = ++x + y--;
        System.out.println("x = " + x); //6
        System.out.println("y = " + y); //9
        System.out.println("z = " + z); //16

        var solucionAritmetica = 4 + 5 * 6 / 3; // 4 + ((5 * 6) / 3) = 10 + 4 = 14
        System.out.println("solucionAritmetica = " + solucionAritmetica);

        solucionAritmetica = (4 + 5) * 6 / 3; // (9 * 6) / 3 = 54 / 3 = 18
        System.out.println("solucionAritmetica = " + solucionAritmetica);
    }
}
