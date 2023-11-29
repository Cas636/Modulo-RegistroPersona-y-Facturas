package back.Modelo;

public class Factura {
    private String idTipoFactura;
    private String nFactura;
    private String idTipoPersona;
    private String idTipoDoc;
    private String nDocumento;
    private String Fac_idTipoFac;
    private String Fac_nFactura;
    private String codEmpleado;
    private String fecha;
    private float totalFactura;

    public String getIdTipoFactura() {
        return idTipoFactura;
    }

    public void setIdTipoFactura(String idTipoFactura) {
        this.idTipoFactura = idTipoFactura;
    }

    public String getnFactura() {
        return nFactura;
    }

    public void setnFactura(String nFactura) {
        this.nFactura = nFactura;
    }

    public String getIdTipoPersona() {
        return idTipoPersona;
    }

    public void setIdTipoPersona(String idTipoPersona) {
        this.idTipoPersona = idTipoPersona;
    }

    public String getIdTipoDoc() {
        return idTipoDoc;
    }

    public void setIdTipoDoc(String idTipoDoc) {
        this.idTipoDoc = idTipoDoc;
    }

    public String getnDocumento() {
        return nDocumento;
    }

    public void setnDocumento(String nDocumento) {
        this.nDocumento = nDocumento;
    }

    public String getFac_idTipoFac() {
        return Fac_idTipoFac;
    }

    public void setFac_idTipoFac(String Fac_idTipoFac) {
        this.Fac_idTipoFac = Fac_idTipoFac;
    }

    public String getFac_nFactura() {
        return Fac_nFactura;
    }

    public void setFac_nFactura(String Fac_nFactura) {
        this.Fac_nFactura = Fac_nFactura;
    }

    public String getCodEmpleado() {
        return codEmpleado;
    }

    public void setCodEmpleado(String codEmpleado) {
        this.codEmpleado = codEmpleado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public float getTotalFactura() {
        return totalFactura;
    }

    public void setTotalFactura(float totalFactura) {
        this.totalFactura = totalFactura;
    }
    
}