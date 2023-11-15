package back;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;


public class Factura {
    private String tipoFactura;
    private Number numeroFact;
    private Date fecha;
    private Map<String, String> cliente = new HashMap<String, String>();
    private Map<String, String> vendedor = new HashMap<String, String>();

    
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
    
    
}