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

    @Autowired
    private ProvinciaRepository provinciaRepository;

    @Override
    public void run(String... args) throws Exception {
        // hybrid database
        List<MecanicoAvionDTO> mecanicoAvionDTOList = this.mecanicoRepository.obtenerMecanicosParaCadaAvion();
        muestraDatos("Mecanico avion dto list", mecanicoAvionDTOList);
        // TODO falta la segunda query
        // no sql database
        List<Provincia> provinciaList = this.provinciaRepository.findAll();
        muestraDatos("Find all provincia list", provinciaList);
        List<ComunidadesProvinciasDTO> comunidadesProvinciasDTOList = this.provinciaRepository.findCommunitiesAndNumberProvinces();
        muestraDatos("Find communities and number province list", comunidadesProvinciasDTOList);

    }

    private static void muestraDatos(String titulo, List datos) {
        System.out.println(titulo);
        System.out.println("-----------------------------------------");
        datos.forEach(System.out::println);
        System.out.println();

    }

}
