public class Clase8OperadoresUnarios {
    public static void main(String[] args) {
        //Operadores Unarios: Cambio de signo
        var varA = 7;
        var varB = -varA;
        System.out.println("varA = " + varA);
        System.out.println("varB = " + varB); //El resultado será un número negativo

        //Operador de negación
        var varC = true; //Esta literal por default en Java es de tipo boolean
        var varD = !varC; //Aquí esta invirtiendo el valor
        System.out.println("varC = " + varC);
        System.out.println("varD = " + varD);

        //Operadores Unarios de Incremento: Preincremento
        var varE = 9; //Se va a modificar su valor
        var varF = ++varE; //Simbolo antes de la variable
        //Primero se incrementa la variable y despues se usa su valor
        System.out.println("varE = " + varE); //Se incrementa en la unidad
        System.out.println("varF = " + varF); //Va a sumar uno

        //Postincremento (el simbolo va despues de la variable)
        var varG = 3;
        var varH = varG++; //Primero el valor de la variable, luego el incremento
        System.out.println("varG = " + varG);
        System.out.println("varH = " + varH);

        //Operadores Unarios de decremento: Predecremento
        var varI = 4;
        var varJ = --varI;
        System.out.println("varI = " + varI);
        System.out.println("varJ = " + varJ);

        //Posdecremento
        var varK = 8;
        var varL = varK--;
        System.out.println("varK = " + varK);
        System.out.println("varL = " + varL);
    }
}