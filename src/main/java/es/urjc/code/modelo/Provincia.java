package es.urjc.code.modelo;

import jakarta.persistence.Id;

import java.util.List;

public class Provincia {
    @Id
    private String id;
    private String Nombre;
    private String CA;
    private Long Superficie;
    private List<ProvinciaDato> Datos;

    public Provincia() {
    }

    public Provincia(String nombre, String CA, Long superficie) {
        Nombre = nombre;
        this.CA = CA;
        Superficie = superficie;
    }

    public Provincia(String nombre, String CA, Long superficie, List<ProvinciaDato> datos) {
        Nombre = nombre;
        this.CA = CA;
        Superficie = superficie;
        Datos = datos;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        Nombre = nombre;
    }

    public String getCA() {
        return CA;
    }

    public void setCA(String CA) {
        this.CA = CA;
    }

    public Long getSuperficie() {
        return Superficie;
    }

    public void setSuperficie(Long superficie) {
        Superficie = superficie;
    }

    public List<ProvinciaDato> getDatos() {
        return Datos;
    }

    public void setDatos(List<ProvinciaDato> datos) {
        Datos = datos;
    }

    @Override
    public String toString() {
        return "Provincia{" +
                "id='" + id + '\'' +
                ", Nombre='" + Nombre + '\'' +
                ", CA='" + CA + '\'' +
                ", Superficie=" + Superficie +
                ", Datos=" + Datos +
                '}';
    }
}
