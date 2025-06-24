
public class Clase5TipoPrimitivoChar {
    public static void main(String[] args) {
        // Tipos primitivos Char
        char miVariableChar = 'a'; // se usa comillas simples
        System.out.println("miVariableChar = " + miVariableChar);
        
        char varCaracter = '\u0024'; // Indicamos a Java la asignación con el código unicode
        System.out.println("varCaracter = " + varCaracter);
        char varCaracterDecimal = 36; // Indicamos a Java la asignación con el código decimal
        System.out.println("varCaracterDecimal = " + varCaracterDecimal);
        char varCaracterSimbolo = '$'; // Indicamos a Java la asignación con el símbolo (podemos copiar y pegar desde unicode)
        System.out.println("varCaracterSimbolo = " + varCaracterSimbolo);

        var varCaracter1 = '\u0024'; // Indicamos a Java la asignación con el código unicode
        System.out.println("varCaracter = " + varCaracter1);
        var varCaracterDecimal1 = (char)36; // Valor entero y le asigna tipo int, con esa conversión toda el simbolo
        System.out.println("varCaracterDecimal = " + varCaracterDecimal1);
        var varCaracterSimbolo1 = '$'; // Indicamos a Java la asignación con el símbolo (podemos copiar y pegar desde unicode)
        System.out.println("varCaracterSimbolo = " + varCaracterSimbolo1);

        int varEnteroChar = '$'; //guarda el valor entero del caracter
        System.out.println("varEnteroChar = " + varEnteroChar); // Imprimimos el valor entero del caracter
        int caracterChar = 'b'; //guarda el valor entero del caracter
        System.out.println("caracterChar = " + caracterChar); // Imprimimos el valor entero del caracter
    }
}