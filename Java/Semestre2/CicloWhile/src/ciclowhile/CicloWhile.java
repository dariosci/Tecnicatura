package ciclowhile;
public class CicloWhile {
    public static void main(String[] args) {
        //CICLO WHILE
        var conteo = 0; //inferencia de tipos
        while(conteo < 3){
            System.out.println("conteo = " + conteo);
            conteo++; //vamos aumentando en uno la variable
        }
        System.out.println("------------");
        
        //CICLO DO-WHILE
        var contador = 0;
        do { 
            System.out.println("contador = " + contador);
            contador++; //vamos aumentando en uno la variable
        } while (contador <= 7);
        System.out.println("------------");

        //CICLO FOR
        for (var contando = 0; contando < 7; contando++) {
            System.out.println("contando = " + contando);
        }
    }
    
}
