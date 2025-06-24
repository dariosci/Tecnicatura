
public class Clase3ReglasParaDefinirVariables {
    public static void main(String[] args) {
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

    }
}
