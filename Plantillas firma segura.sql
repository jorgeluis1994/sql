--ESTRUCTURA DE PANTALLAS FIRMA DIGITAL

select * from establishment e 

--Seguros Alianza = 9 Sweaden Seguros = 8
select
	*
from
	structure_process sp
	where sp.id_establishment =8;
	
--DETALLE DE ESTRUCTURA
	
select
	*
from
	detail_struc_proc dsp
where
	dsp.id_struc_proc in(9,8);
	

--DOCUEMTOS 
select
	*
from
	"document" d
where
	d.id_establishment = 9;
	
--DETALLE DE DOUMENTOS TOTAL
	
select
	count(*)
from
	detail_document dd
where
	dd.id_det_strpro in(8);

--DETALLE DE DOUMENTOS

select
	*
from
	detail_document dd
where
	dd.id_det_strpro in(9);

	
--Vista de documentos
select
	*
from
	document_view dv
where
	dv.id_establishment = 8
	
---- Restablecer el valor de la secuencia a 1
--ALTER SEQUENCE acount_id_acount_seq RESTART WITH 1;
---- Restablecer el valor de la secuencia a 1
--ALTER SEQUENCE acount_id_acount_seq RESTART WITH 1;	


