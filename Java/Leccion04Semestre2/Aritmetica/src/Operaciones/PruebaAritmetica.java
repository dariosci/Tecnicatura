package Operaciones;

public class PruebaAritmetica {
    public static void main(String[] args) {
        //variables locales - Memoria stack
        var a = 10; 
        int b = 7;
        
        miMetodo(); // Llamamos al metodo nuevo
        
        Aritmetica aritmetica1 = new Aritmetica();
        aritmetica1.a = 3;
        aritmetica1.b = 7;
        aritmetica1.sumarNumeros();
        
        // Para almacenar un objeto o los atributos se utiliza la "memoria heap"
        int resultado = aritmetica1.sumarConRetorno();
        System.out.println("Resultado = " + resultado);
        
        int resultadoArgs = aritmetica1.sumarConArgumentos(12, 26);
        System.out.println("Resultado usando argumentos = " + resultadoArgs);
        
        System.out.println("aritmetica1 a: " + aritmetica1.a);
        System.out.println("aritmetica1 b: " + aritmetica1.b);
        
        Aritmetica aritmetica2 = new Aritmetica(5, 8);
        System.out.println("artimetica2 a: " + aritmetica2.a);
        System.out.println("artimetica2 b: " + aritmetica2.b);
        //aritmetica1 = null; // Nunca utilizar esto, no se debe hacer
        //System.gc(); // Metodo para limpiar residuos, es pesado, no utilizar
        
        Persona persona = new Persona("Ariel", "Betancud");
        System.out.println("persona = " + persona);
        System.out.println("Persona nombre: " + persona.nombre);
        System.out.println("Persona apellido: " + persona.apellido);
    }
    // Modularidad creamos un nuevo método
    public static void miMetodo(){
        //int a = 10; //una variable está limitada
        System.out.println("Aquí hay otro metodo");
    }
}
// Creamos una nueva clase
class Persona{
    String nombre;
    String apellido;
    
    Persona (String nombre, String apellido) { // Constructor
        //super(); // Llamada al contrucctor de la clase Padre object
        //Imprimir imprimir = new Imprimir();
        new Imprimir().imprimir(this);
        this.nombre = nombre;
        this.apellido = apellido;
        System.out.println("Objeto persona usando this: " + this);
    }
}

class Imprimir{
    public Imprimir(){
        super(); // El constructor de la clase padre, para reservar memoria
    }
    public void imprimir(Persona persona){
        System.out.println("Persona desde la clase imprimir" + persona);       
        System.out.println("Impresion del objeto actual (this): " + this);
    }
}