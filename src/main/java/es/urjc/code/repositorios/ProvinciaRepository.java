package es.urjc.code.repositorios;

import es.urjc.code.modelo.ComunidadesProvinciasDTO;
import es.urjc.code.modelo.Provincia;
import org.springframework.data.mongodb.repository.Aggregation;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProvinciaRepository extends MongoRepository<Provincia, String> {
    List<Provincia> findAll();

    @Aggregation(pipeline = {"{$group: {\"_id\" : \"$CA\", \"numProvincias\": {$sum:1}}}"})
    List<ComunidadesProvinciasDTO> findCommunitiesAndNumberProvinces();
}
