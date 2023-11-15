package back;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Facturita {
    private String tipoFactura;
    private Number numeroFact;
    private Date fecha;
    private Map<String, String> cliente;
    private Map<String, String> vendedor;

    // Constructor
    public Facturita(String tipoFactura, Number numeroFact, Date fecha, Map<String, String> cliente, Map<String, String> vendedor) {
        this.tipoFactura = tipoFactura;
        this.numeroFact = numeroFact;
        this.fecha = fecha;
        this.cliente = cliente;
        this.vendedor = vendedor;
    }

    public String getTipoFactura() {
        return tipoFactura;
    }

    public Number getNumeroFact() {
        return numeroFact;
    }

    public Date getFecha() {
        return fecha;
    }

    public Map<String, String> getCliente() {
        return cliente;
    }

    public Map<String, String> getVendedor() {
        return vendedor;
    }

    public void setTipoFactura(String tipoFactura) {
        this.tipoFactura = tipoFactura;
    }

    public void setNumeroFact(Number numeroFact) {
        this.numeroFact = numeroFact;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setCliente(Map<String, String> cliente) {
        this.cliente = cliente;
    }

    public void setVendedor(Map<String, String> vendedor) {
        this.vendedor = vendedor;
    }


    // Método para obtener la representación de la factura como cadena de texto
    @Override
    public String toString() {
        return "Factura{" +
                "tipoFactura='" + tipoFactura + '\'' +
                ", numeroFact=" + numeroFact +
                ", fecha=" + fecha +
                ", cliente=" + cliente +
                ", vendedor=" + vendedor +
                '}';
    }

    // Método para crear y devolver un objeto Factura
    public static Facturita crearFactura() {
        String tipoFactura = "Factura";
        Number numeroFact = 12345;
        Date fecha = new Date();

        Map<String, String> cliente = new HashMap<>();
        cliente.put("Nombre", "Pepito Perez");
        cliente.put("Documento", "123456789");
        cliente.put("Direccion", "cra14 12 c 45");
        cliente.put("Correo", "Pepitoperez@gmail.com");

        Map<String, String> vendedor = new HashMap<>();
        vendedor.put("Nombre", "Pepito Vadenas");
        vendedor.put("Documento", "987654321");
        vendedor.put("Direccion", "cra14 12 c 45");
        vendedor.put("Correo", "Pepitovadenas@gmail.com");

        // Crear objeto Factura
        return new Facturita(tipoFactura, numeroFact, fecha, cliente, vendedor);
    }
}

