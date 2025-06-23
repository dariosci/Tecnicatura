
public class Clase8OperadoresCondicionales {

    public static void main(String[] args) {
        //Operadores Condicionales
        //AND
        var valorA= 7;
        var valorMinimo = 0;
        var valorMaximo = 10;
        var respuesta = (valorA >= valorMinimo) && (valorA <= valorMaximo);
        if (respuesta){
            System.out.println("Esta dentro del rango establecido");
        } else {
            System.out.println("Esta fuera del rango establecido");
        }
        //OR
        var vacaciones = false;
        var diaLibre = true;
        if (vacaciones || diaLibre){
            System.out.println("Papá puede asistir al juego de su hijo");
        } else {
            System.out.println("Papá no puede asistir al juego de su hijo");
        }
    }
}
