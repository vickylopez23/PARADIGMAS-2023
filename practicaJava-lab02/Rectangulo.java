public class Rectangulo {
    private double longitud;
    private double ancho;

    public Rectangulo(double longitud, double ancho) {
        this.longitud = longitud;
        this.ancho = ancho;
    }

    public double getLongitud() {
        return longitud;
    }

    public double getAncho() {
        return ancho;
    }

    public double calcularArea() {
        return longitud * ancho;
    }

    public double calcularPerimetro() {
        return 2 * (longitud + ancho);
    }

    public static void main(String[] args) {
        Rectangulo rectangulo = new Rectangulo(5, 3);
        System.out.println("Longitud: " + rectangulo.getLongitud());
        System.out.println("Ancho: " + rectangulo.getAncho());
        System.out.println("Área: " + rectangulo.calcularArea());
        System.out.println("Perímetro: " + rectangulo.calcularPerimetro());
    }
}

//javac Rectangulo.java
//java Rectangulo