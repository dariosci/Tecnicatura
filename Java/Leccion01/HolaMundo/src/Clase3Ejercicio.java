
public class Clase3Ejercicio {
    public static void main(String[] args) {
        var usuario = "Osvaldo";
        var titulo = "Ingeniero";
        var union = titulo + " " + usuario;
        System.out.println("union = " + union);

        var a = 8;
        var b = 4;
        System.out.println(a + b);
        System.out.println(usuario + a + b); //prioridad a la cadena, despues contatena los numeros
        System.out.println(usuario + (a + b)); //prioridad a la suma, despues contatena

    }
}
