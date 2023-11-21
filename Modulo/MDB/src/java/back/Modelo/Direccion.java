/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.Modelo;

/**
 *
 * @author diego
 */
public class Direccion {
    private int posicion;
    private int idDireccion;
    private String idTipoPersona;
    private String idTipoDoc;
    private String nDocumento;
    private String idNomen;
    private String valorDirec;

    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int Posicion) {
        this.posicion = Posicion;
    }

    public int getIdDireccion() {
        return idDireccion;
    }

    public void setIdDireccion(int idDireccion) {
        this.idDireccion = idDireccion;
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

    public String getIdNomen() {
        return idNomen;
    }

    public void setIdNomen(String idNomen) {
        this.idNomen = idNomen;
    }

    public String getValorDirec() {
        return valorDirec;
    }

    public void setValorDirec(String valorDirec) {
        this.valorDirec = valorDirec;
    }

}

