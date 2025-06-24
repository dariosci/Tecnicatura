
public class Clase7OperadoresEnJava {
    public static void main(String[] args) {
        //Operadores Aritmeticos
        int num1 = 5, num2 = 4; //se pueden declarar e inicializar variables en la misma linea, deben ser del mismo tipo
        var solucion = num1 + num2;
        System.out.println("solucion de la suma = " + solucion);

        solucion = num1 - num2;
        System.out.println("solucion de la resta = " + solucion);

        solucion = num1 * num2;
        System.out.println("solucion de la multiplicación = " + solucion);

        solucion = num1 / num2;
        System.out.println("solucion de la división = " + solucion);

        var solucion2 = 3.4D / num2;
        System.out.println("solucion2 resultado de la división = " + solucion2);

        solucion = num1 % num2; //Guarda el residuo entero de la división
        System.out.println("solucion = " + solucion);

        if (num2 % 2 == 0) //Si solo tiene una linea el if y una el else puede ir sin llaves
            System.out.println("El número es PAR");
        else 
            System.out.println("Es un número IMPAR");

        //Operadores de Asignación
        int varNum1 = 1, varNum2 =4;
        var varNum3 = varNum1 + 6 - varNum2; //Una operación
        System.out.println("varNum3 = " + varNum3);

        varNum1 += 1; //varNum1 = varNum1 + 1;
        System.out.println("varNum1 = " + varNum1);

        varNum2 -= 2;
        System.out.println("varNum2 = " + varNum2);

        varNum1 *= 5;
        System.out.println("varNum1 = " + varNum1);

        varNum3 /= 4;
        System.out.println("varNum3 = " + varNum3);

        varNum1 %= 6;
        System.out.println("varNum1 = " + varNum1);
    }
}
