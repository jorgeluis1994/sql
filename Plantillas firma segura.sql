--ESTRUCTURA DE PANTALLAS FIRMA DIGITAL

--alianza sp.id_establishment =9
select
	*
from
	structure_process sp
	where sp.id_establishment =9
	
--DETALLE DE ESTRUCTURA
	
select
	*
from
	detail_struc_proc dsp
where
	dsp.id_struc_proc in(35, 36)
	

--DOCUEMTOS 
select
	*
from
	"document" d
where
	d.id_establishment = 9
