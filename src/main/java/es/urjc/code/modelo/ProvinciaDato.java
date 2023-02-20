package es.urjc.code.modelo;

public class ProvinciaDato {
    private Long Anyo;
    private Long Valor;

    public ProvinciaDato() {
    }

    public ProvinciaDato(Long anyo, Long valor) {
        Anyo = anyo;
        Valor = valor;
    }

    @Override
    public String toString() {
        return "ProvinciaDato{" +
                "Anyo=" + Anyo +
                ", Valor=" + Valor +
                '}';
    }
}
