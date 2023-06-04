import java.util.Scanner;

public class Calculadora {
    public static void main(String[] args) {
        Scanner sca = new Scanner(System.in);

        System.out.println("Calculadora");
        System.out.println("============");

        System.out.print("Ingrese el primer número: ");
        double numero1 = sca.nextDouble();

        System.out.print("Ingrese el segundo número: ");
        double numero2 = sca.nextDouble();

        System.out.println("Seleccione la operación:");
        System.out.println("1. Suma");
        System.out.println("2. Resta");
        System.out.println("3. Multiplicación");
        System.out.println("4. División");

        System.out.print("Ingrese el número de la operación deseada: ");
        int operacion = sca.nextInt();

        double resultado = 0;

        if (operacion == 1) {
            resultado = numero1 + numero2;
        } else if (operacion == 2) {
            resultado = numero1 - numero2;
        } else if (operacion == 3) {
            resultado = numero1 * numero2;
        } else if (operacion == 4) {
            resultado = numero1 / numero2;
        } else {
            System.out.println("Operación inválida");
            return;
        }

        System.out.println("El resultado es: " + resultado);
    }
}
