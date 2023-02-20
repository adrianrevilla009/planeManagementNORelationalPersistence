select m2.nombre, m2.apellidos, a.fabricante, a.modelo
from avion a inner join mecanico m2
where JSON_EXTRACT(a.revisiones_json ,"$[0].mecanico_encargado_id") = m2.id