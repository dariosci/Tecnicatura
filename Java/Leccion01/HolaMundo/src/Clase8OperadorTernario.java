public class Clase8OperadorTernario {
    public static void main(String[] args) {
        //Operador Ternario
        var resultadoT = (5 > 4) ? "Verdadero" : "Falso";
        System.out.println("resultadoT = " + resultadoT);

        var numeroT = 4;
        resultadoT = (numeroT % 2 == 0) ? "Es PAR" : "Es IMPAR";
        System.out.println("resultadoT = " + resultadoT);
    }
}