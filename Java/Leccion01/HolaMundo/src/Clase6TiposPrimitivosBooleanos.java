

public class Clase6TiposPrimitivosBooleanos {

    public static void main(String[] args) {
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
    }
}
