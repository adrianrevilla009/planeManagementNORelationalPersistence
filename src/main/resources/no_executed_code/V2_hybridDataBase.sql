!-- Tenemos que meter la informacion de los tripulantes en un json dentro de cada vuelo
ALTER TABLE test.vuelo ADD tripulantes_json json NULL;

!-- de momento lo que tengo
update vuelo v
set v.tripulantes_json = (

	SELECT JSON_ARRAYAGG(t.id)
	from tripulante_vuelo tv inner join tripulante t on tv.tripulante_id = t.id
	where tv.vuelo_id = v.id
	group by tv.vuelo_id

	)
where v.id > 0;

ALTER TABLE test.avion ADD revisiones_json json NULL;

update avion a1
set a1.revisiones_json = (SELECT JSON_ARRAYAGG(JSON_OBJECT(
		'id', r.id ,
		'descripcion', r.descripcion,
		'fecha_fin', r.fecha_fin,
		'fecha_inicio', r.fecha_inicio,
		'horas_mecanico', r.horas_mecanico,
		'tipo_revision', r.tipo_revision,
		'aeropuerto_id', r.aeropuerto_id,
		'avion_id', r.avion_id,
		'mecanico_encargado_id', r.mecanico_encargado_id
		))
	from revision r
	where a1.id = r.avion_id
	group by r.avion_id)
where a1.id > 0;

