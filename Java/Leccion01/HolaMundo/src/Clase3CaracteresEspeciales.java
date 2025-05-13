
public class Clase3CaracteresEspeciales {

    public static void main(String[] args) {
        // Ejercicio: Caracteres especiales con Java
        var nombre = "Natalia";
        System.out.println("\nNueva linea: \n" + nombre); //agrega un salto de linea \n
        System.out.println("Tabulador: \t" + nombre); //agrega un tabulador \t
        System.out.println("\t\t.:Menu:."); //otro ejemplo de tabulador, se puede usar varias veces
        System.out.println("Retroceso: \b" + nombre); //agrega un retroceso \b, elimina el caracter anterior. Se puede usar varias veces
        System.out.println("Comilla simple: \'" + nombre + "\'"); //agrega una comilla simple \'
        System.out.println("Comilla doble: \"" + nombre + "\""); //agrega una comilla doble \"        
    }
}
