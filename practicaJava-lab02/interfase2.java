public class interfase2 implements Figura {
    private double longitud;
    private double ancho;

    public Rectangulo(double longitud, double ancho) {
        this.longitud = longitud;
        this.ancho = ancho;
    }

    @Override
    public double calcularArea() {
        return longitud * ancho;
    }

    @Override
    public double calcularPerimetro() {
        return 2 * (longitud + ancho);
    }
}

public class Circulo implements Figura {
    private double radio;

    public Circulo(double radio) {
        this.radio = radio;
    }

    @Override
    public double calcularArea() {
        return Math.PI * Math.pow(radio, 2);
    }

    @Override
    public double calcularPerimetro() {
        return 2 * Math.PI * radio;
    }
}

public class Main {
    public static void main(String[] args) {
        Figura rectangulo = new Rectangulo(4, 5);
        System.out.println("Área del rectángulo: " + rectangulo.calcularArea());
        System.out.println("Perímetro del rectángulo: " + rectangulo.calcularPerimetro());

        Figura circulo = new Circulo(3);
        System.out.println("Área del círculo: " + circulo.calcularArea());
        System.out.println("Perímetro del círculo: " + circulo.calcularPerimetro());
    }
}
