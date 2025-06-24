
public class Clase4TiposNumericosEnteros {
    public static void main(String[] args) {
        byte numEnteroByte = (byte)127; // 1 byte
        System.out.println("numEnteroByte = " + numEnteroByte);
        System.out.println("Valor minimo del Byte = " + Byte.MIN_VALUE);
        System.out.println("Valor maximo del Byte = " + Byte.MAX_VALUE);
        
        short numEnteroShort = (short)32767; // 2 bytes
        System.out.println("numEnteroShort = " + numEnteroShort);
        System.out.println("Valor minimo del Short = " + Short.MIN_VALUE);
        System.out.println("Valor maximo del Short = " + Short.MAX_VALUE);

        int numEnteroInt = 2147483647; // 4 bytes
        System.out.println("numEnteroInt = " + numEnteroInt);
        System.out.println("Valor minimo del Int = " + Integer.MIN_VALUE);
        System.out.println("Valor maximo del Int = " + Integer.MAX_VALUE);

        long numEnteroLong = 9223372036854775807L; // 8 bytes
        System.out.println("numEnteroLong = " + numEnteroLong);
        System.out.println("Valor minimo del Long = " + Long.MIN_VALUE);
        System.out.println("Valor maximo del Long = " + Long.MAX_VALUE);
    }
}
