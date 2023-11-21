/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.Modelo;

/**
 *
 * @author diego
 */
public class DetalleFactura {
    private String idTipoFac;
    private String nFactura;
    private int item;
    private String idCatProducto;
    private String refProducto;
    private int cantidad;
    private int precio;

    public String getIdTipoFac() {
        return idTipoFac;
    }

    public void setIdTipoFac(String idTipoFac) {
        this.idTipoFac = idTipoFac;
    }

    public String getnFactura() {
        return nFactura;
    }

    public void setnFactura(String nFactura) {
        this.nFactura = nFactura;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public String getIdCatProducto() {
        return idCatProducto;
    }

    public void setIdCatProducto(String idCatProducto) {
        this.idCatProducto = idCatProducto;
    }

    public String getRefProducto() {
        return refProducto;
    }

    public void setRefProducto(String refProducto) {
        this.refProducto = refProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
}
