// CLASE 5
package Operaciones;

public class Aritmetica {
    //Atributos de la Clase
    int a;
    int b;
    // El constructor es un método especial
    public Aritmetica(){ //Constructor 1 vacio
        System.out.println("Se está ejecutando este constructor número 1");
    }
    // Estamos viendo lo que se llama sobrecarga de constructores
    public Aritmetica(int a, int b){ //Constructor 2
        this.a = a;
        this.b = b;
        System.out.println("Se está ejecutando este constructor número 2");
    }
    // Metodo
    public void sumarNumeros() {
        int resultado = a + b;
        System.out.println("Resultado = " + resultado);
    }

    public int sumarConRetorno(){
        //int resultado = a + b;
        return this.a + this.b;
    }
    
    public int sumarConArgumentos(int a, int arg2){
        this.a = a; //El argumento a se asigna al atributo this.a
        this.b = arg2;
        //return a + b;
        return this.sumarConRetorno();
    }
}
