package caja;

public class Caja {
    //Atributos de la Clase
    int ancho;
    int alto;
    int profundidad;
    
    // Metodos y Constructores (acciones)
    public Caja(){ // Constructor 1 = vacio
        
    }
    // Constructor con parámetros
    public Caja(int ancho, int alto, int profundidad){ // Constructor 2
        this.ancho = ancho;
        this.alto = alto;
        this.profundidad = profundidad;
    }
    public int calcularVolumen(){ // Método para calcular
        return ancho * alto * profundidad;
    }
        
}
