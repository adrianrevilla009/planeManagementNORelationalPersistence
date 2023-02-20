package es.urjc.code.modelo;

public class ComunidadesProvinciasDTO {
    String id;
    String numProvincias;

    public ComunidadesProvinciasDTO() {
    }

    public ComunidadesProvinciasDTO(String id, String numProvincias) {
        this.id = id;
        this.numProvincias = numProvincias;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNumProvincias() {
        return numProvincias;
    }

    public void setNumProvincias(String numProvincias) {
        this.numProvincias = numProvincias;
    }

    @Override
    public String toString() {
        return "ComunidadesProvinciasDTO{" +
                "id='" + id + '\'' +
                ", numProvincias='" + numProvincias + '\'' +
                '}';
    }
}
