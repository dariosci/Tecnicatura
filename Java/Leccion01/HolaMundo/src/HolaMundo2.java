

public class HolaMundo2 {

    public static void main(String[] args) {
        /*System.out.println("Hola Mundo desde Java");

        int miVariable = 10;
        System.out.println(miVariable);
        miVariable = 5;
        System.out.println(miVariable);
        //tipo String
        String miVariableCadena = "Bienvenidos";
        System.out.println(miVariableCadena);
        miVariableCadena = "Sigamos creciendo en programación";
        System.out.println(miVariableCadena);
         
        //var - inferencia de tipos en Java
        var miVariableEntera2 = 10;
        var miVariableCadena2 = "Seguimos estudiando";
        System.out.println("miVariableEntera2 = " + miVariableEntera2);
        System.out.println("miVariableCadena2 = " + miVariableCadena2);
        //soutv + tab
        //Para ejecutar shift + f6 es la tecla para mayuscula

        // Reglas para definir variables en Java
        // 1. No se puede iniciar con un número
        //var 1miVariableEjemplo = 45;
        // 2. No se pueden usar caracteres especiales, excepto el guion bajo y el signo de dólar
        var miVariableEjemplo2 = 45;
        var $miVariableEjemplo3 = 45;
        // 3. No se pueden usar palabras reservadas
        //var class = 45;
        // 4. No se pueden usar espacios en blanco
        //var mi Variable Ejemplo = 45;
        // 5. Se recomienda usar camelCase para nombres de variables
        var miVariableEjemplo = 45;
        // 6. Se recomienda usar nombres significativos para las variables
        var miVariableEjemploConNombreSignificativo = 45;
        // para borrar el warning de variable no utilizada
        System.out.println("miVariableEjemplo2 = " + miVariableEjemplo2);
        System.out.println("$miVariableEjemplo3 = " + $miVariableEjemplo3);
        System.out.println("miVariableEjemplo = " + miVariableEjemplo);
        System.out.println("miVariableEjemploConNombreSignificativo = " + miVariableEjemploConNombreSignificativo);

        //Ejercicio contatenación
        var usuario = "Osvaldo";
        var titulo = "Ingeniero";
        var union = titulo + " " + usuario;
        System.out.println("union = " + union);

        var a = 8;
        var b = 4;
        System.out.println(a + b);
        System.out.println(usuario + a + b); //prioridad a la cadena, despues contatena los numeros
        System.out.println(usuario + (a + b)); //prioridad a la suma, despues contatena

        // Ejercicio: Caracteres especiales con Java
        var nombre = "Natalia";
        System.out.println("\nNueva linea: \n" + nombre); //agrega un salto de linea \n
        System.out.println("Tabulador: \t" + nombre); //agrega un tabulador \t
        System.out.println("\t\t.:Menu:."); //otro ejemplo de tabulador, se puede usar varias veces
        System.out.println("Retroceso: \b" + nombre); //agrega un retroceso \b, elimina el caracter anterior. Se puede usar varias veces
        System.out.println("Comilla simple: \'" + nombre + "\'"); //agrega una comilla simple \'
        System.out.println("Comilla doble: \"" + nombre + "\""); //agrega una comilla doble \"
         */
 /*
        //Clase Scanner
        /*
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite su nombre: ");
        var usuario2 = entrada.nextLine(); //lee una cadena de texto
        System.out.println("usuario2 = " + usuario2);
        System.out.println("Escriba el titulo: ");
        var titulo2 = entrada.nextLine(); //lee una cadena de texto
        System.out.println("Resultado = " + titulo2 + " " + usuario2);

        //Ejercicio final Clase3:
        Scanner entrada2 = new Scanner(System.in);
        System.out.println("Ingrese nombre del libro: ");
        var nombreLibro = entrada2.nextLine(); //lee una cadena de texto
        System.out.println("Ingrese autor del libro: ");
        var nombreAutor = entrada2.nextLine(); //lee una cadena de texto
        System.out.println(nombreLibro + " fue escrito por " + nombreAutor);

        //Clase 4 Tipos Numericos Enteros
        byte numEnteroByte = (byte)127; // 1 byte
        System.out.println("numEnteroByte = " + numEnteroByte);
        System.out.println("Valor minimo del Byte = " + Byte.MIN_VALUE);
        System.out.println("Valor maximo del Byte = " + Byte.MAX_VALUE);
        
        short numEnteroShort = (short)32767; // 2 bytes
        System.out.println("numEnteroShort = " + numEnteroShort);
        System.out.println("Valor minimo del Short = " + Short.MIN_VALUE);
        System.out.println("Valor maximo del Short = " + Short.MAX_VALUE);

        int numEnteroInt = 2147483647; // 4 bytes
        System.out.println("numEnteroInt = " + numEnteroInt);
        System.out.println("Valor minimo del Int = " + Integer.MIN_VALUE);
        System.out.println("Valor maximo del Int = " + Integer.MAX_VALUE);

        long numEnteroLong = 9223372036854775807L; // 8 bytes
        System.out.println("numEnteroLong = " + numEnteroLong);
        System.out.println("Valor minimo del Long = " + Long.MIN_VALUE);
        System.out.println("Valor maximo del Long = " + Long.MAX_VALUE);

        //Tipos de datos flotantes
        //float numFloat = 10.0F;
        //float numfloat = (float) 10.0; //tambien es valido así
        float numFloat = 3.4028235E38F; // 4 bytes
        System.out.println("numFloat = " + numFloat);
        System.out.println("Valor minimo del Float = " + Float.MIN_VALUE);
        System.out.println("Valor maximo del Float = " + Float.MAX_VALUE);

        //double numDouble = 10;
        double numDouble = 1.7976931348623157E308;
        System.out.println("numDouble = " + numDouble);
        System.out.println("Valor minimo del Double = " + Double.MIN_VALUE);
        System.out.println("Valor maximo del Double = " + Double.MAX_VALUE);

        //Inferencia de tipos var y tipos primitivos
        var numEntero = 20; //las literales sin punto automaticamente son enteros (int)
        System.out.println("numEntero = " + numEntero);
        //var numfloat = 10.0; //las literales con F son float
        var numFloat = 10.0F; //las literales con F son float
        System.out.println("numFloat = " + numFloat);
        var numDouble = 10.0;
        System.out.println("numDouble = " + numDouble);
         */
 /*
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
         */

 /*
        //Tipos primitivos tipos booleanos
        var varBool = false;
        System.out.println("varBool = " + varBool);

        if (varBool) {
            System.out.println("La bandera es verde");
        } else {
            System.out.println("La bandera es roja");
        }

        //Algoritmo: ¿Es mayor de edad?
        var edad = 18; //Literal tener presente la inferencia de tipos
        //var adulto = edad >= 18; //Esta es una expresión booleana
        if (edad >= 18){
            System.out.println("Eres mayor de edad");
        } else {
            System.out.println("Eres menor de edad");
        }
         */

        /*
        // Conversion de tipos primitivos
        var edad = Integer.parseInt("20");  //convertimos a int
        System.out.println("Edad: " + (edad + 1));
        var valorPI = Double.parseDouble("3.1416");
        System.out.println("Valor PI: " + valorPI);

        //Pedir un valor
        var entrada = new Scanner(System.in);
        System.out.println("Digite su edad:");
        edad = Integer.parseInt(entrada.nextLine());
        System.out.println("edad = " + edad);

        // Convertir de tipos primitivos en Java Parte 2
        var edadTexto = String.valueOf(10);
        System.out.println("edadTexto = " + edadTexto);

        var fraseChar = "programadores".charAt(12);
        System.out.println("fraseChar = " + fraseChar);

        System.out.println("Digite un caracter");
        fraseChar = entrada.nextLine().charAt(0);
        System.out.println("fraseChar = " + fraseChar);
         */

        
    }
}
