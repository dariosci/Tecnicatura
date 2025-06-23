public class Clase8Ejercicios {
    public static void main(String[] args) {
        //Sacar área y perímetro de un rectángulo
        var ladoA = 4;
        var ladoB = 6;
        var area = ladoA * ladoB;
        var perimetro = (ladoA * 2) + (ladoB * 2);
        System.out.println("Área = " + area);
        System.out.println("Perímetro = " + perimetro);

        //El mayor de dos números (Operador Ternario)
        var numA = 10;
        var numB = 8;
        var esMayor = numA > numB ? "numA es mayor" : "numB es mayor";
        System.out.println(esMayor);
    }
}
