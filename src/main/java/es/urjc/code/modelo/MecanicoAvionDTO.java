package es.urjc.code.modelo;

public class MecanicoAvionDTO {
    String fabricante;
    String modelo;
    String nombre;
    String apellidos;

    public MecanicoAvionDTO(String fabricante, String modelo, String nombre, String apellidos) {
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.nombre = nombre;
        this.apellidos = apellidos;
    }

    @Override
    public String toString() {
        return "MecanicoAvionDTO{" +
                "fabricante='" + fabricante + '\'' +
                ", modelo='" + modelo + '\'' +
                ", nombre='" + nombre + '\'' +
                ", apellidos='" + apellidos + '\'' +
                '}';
    }
}
