//clases
public class Vehiculo {
    String marca; //atributos
    String modelo;
    int anio;
    //constructor
    public Vehiculo(String marca, String modelo, int anio) {
        this.marca = marca;
        this.modelo = modelo;
        this.anio = anio;
    }
 //costructor para inicalizar los atributos
    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public int getAnio() {
        return anio;
    }
    //metodos agregados
    public void acelerar() {
        System.out.println("El vehículo está acelerando.");
    }

    public void frenar() {
        System.out.println("El vehículo está frenando.");
    }
}
//extiende
public class Automovil extends Vehiculo {
    private int numeroPuertas;

    public Automovil(String marca, String modelo, int anio, int numeroPuertas) {
        super(marca, modelo, anio); //hace referencia..
        this.numeroPuertas = numeroPuertas;
    }

    public int getNumeroPuertas() {
        return numeroPuertas;
    }

    public void abrirMaletero() {
        System.out.println("Abriendo el maletero del automóvil.");
    }
}

public class Motocicleta extends Vehiculo {
    private boolean tieneSidecar;

    public Motocicleta(String marca, String modelo, int anio, boolean tieneSidecar) {
        super(marca, modelo, anio);
        this.tieneSidecar = tieneSidecar;
    }

    public boolean tieneSidecar() {
        return tieneSidecar;
    }

    public void hacerCaballito() {
        System.out.println("La motocicleta está haciendo un caballito.");
    }
}

public class Main {
    public static void main(String[] args) {
        Automovil automovil = new Automovil("Toyota", "Corolla", 2022, 4);
        System.out.println("Marca: " + automovil.getMarca());
        System.out.println("Modelo: " + automovil.getModelo());
        System.out.println("Año: " + automovil.getAnio());
        System.out.println("Número de puertas: " + automovil.getNumeroPuertas());
        automovil.acelerar();
        automovil.frenar();
        automovil.abrirMaletero();

        System.out.println();

        Motocicleta motocicleta = new Motocicleta("Honda", "CBR600RR", 2021, false);
        System.out.println("Marca: " + motocicleta.getMarca());
        System.out.println("Modelo: " + motocicleta.getModelo());
        System.out.println("Año: " + motocicleta.getAnio());
        System.out.println("Tiene sidecar: " + motocicleta.tieneSidecar());
        motocicleta.acelerar();
        motocicleta.frenar();
        motocicleta.hacerCaballito();
    }
}
