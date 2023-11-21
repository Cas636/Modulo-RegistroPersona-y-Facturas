/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.Modelo;

/**
 *
 * @author diego
 */
public class Cargo {
    private String codCargo;
    private String codDependencia;
    private String Car_codCargo;
    private String nomCargo;
    private boolean estadoCargo;

    public String getCodCargo() {
        return codCargo;
    }

    public void setCodCargo(String codCargo) {
        this.codCargo = codCargo;
    }

    public String getCodDependencia() {
        return codDependencia;
    }

    public void setCodDependencia(String codDependencia) {
        this.codDependencia = codDependencia;
    }

    public String getCar_codCargo() {
        return Car_codCargo;
    }

    public void setCar_codCargo(String Car_codCargo) {
        this.Car_codCargo = Car_codCargo;
    }

    public String getNomCargo() {
        return nomCargo;
    }

    public void setNomCargo(String nomCargo) {
        this.nomCargo = nomCargo;
    }

    public boolean isEstadoCargo() {
        return estadoCargo;
    }

    public void setEstadoCargo(boolean estadoCargo) {
        this.estadoCargo = estadoCargo;
    }
    
}
