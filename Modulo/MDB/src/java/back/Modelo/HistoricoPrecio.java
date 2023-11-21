/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.Modelo;

import java.util.Date;

/**
 *
 * @author diego
 */
public class HistoricoPrecio {
    private String idCatProducto;
    private String refProducto;
    private int consecPrecio;
    private Date fechaInicio;
    private Date fechaFin;
    private float valor;

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

    public int getConsecPrecio() {
        return consecPrecio;
    }

    public void setConsecPrecio(int consecPrecio) {
        this.consecPrecio = consecPrecio;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }
    
}
