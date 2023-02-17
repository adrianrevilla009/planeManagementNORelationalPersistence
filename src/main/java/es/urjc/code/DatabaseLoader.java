package es.urjc.code;

import es.urjc.code.modelo.*;
import es.urjc.code.repositorios.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Cargador de la BD y solución de apartados de la práctica.
 *
 * @author J. Manuel Colmenar
 */
@Controller
public class DatabaseLoader implements CommandLineRunner {

    @Autowired
    private AvionRepository avionRepository;

    @Autowired
    private AeropuertoRepository aeropuertoRepository;

    @Autowired
    private TripulanteRepository tripulanteRepository;

    @Autowired
    private VueloRepository vueloRepository;

    @Autowired
    private MecanicoRepository mecanicoRepository;

    @Autowired
    private RevisionRepository revisionRepository;

    @Override
    public void run(String... args) throws Exception {
        List<MecanicoAvionDTO> mecanicoAvionDTOList = this.mecanicoRepository.obtenerMecanicosParaCadaAvion();
        muestraDatos("Mecanico avion dto list", mecanicoAvionDTOList);

    }

    private static void muestraDatos(String titulo, List datos) {
        System.out.println(titulo);
        System.out.println("-----------------------------------------");
        datos.forEach(System.out::println);
        System.out.println();

    }

}
