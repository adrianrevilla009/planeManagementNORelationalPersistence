
package es.urjc.code.repositorios;

import es.urjc.code.modelo.Mecanico;
import es.urjc.code.modelo.MecanicoAvionDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Repositorio para mecánicos.
 *
 *  @author J. Manuel Colmenar
 */
public interface MecanicoRepository extends JpaRepository<Mecanico, Long> {
    @Query("select new es.urjc.code.modelo.MecanicoAvionDTO(a.fabricante, a.modelo, m.nombre, m.apellidos) " +
            "from Avion a inner join Mecanico m " +
            "where JSON_EXTRACT(a.revisiones_json ,'$[0].mecanico_encargado_id') = m.id")
    List<MecanicoAvionDTO> obtenerMecanicosParaCadaAvion();
}
