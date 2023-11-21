/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.Modelo;

/**
 *
 * @author diego
 */
public class Dependencia {
    private String condDependencia;
    private String nomDependencia;
    private boolean estadoDepen;

    public String getCondDependencia() {
        return condDependencia;
    }

    public void setCondDependencia(String condDependencia) {
        this.condDependencia = condDependencia;
    }

    public String getNomDependencia() {
        return nomDependencia;
    }

    public void setNomDependencia(String nomDependencia) {
        this.nomDependencia = nomDependencia;
    }

    public boolean isEstadoDepen() {
        return estadoDepen;
    }

    public void setEstadoDepen(boolean estadoDepen) {
        this.estadoDepen = estadoDepen;
    }
    
}
