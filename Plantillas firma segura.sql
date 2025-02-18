select count(*) from user_documents_view udv where id_establishment =9 

select *from users udv where id_establishment =9 


--ESTRUCTURA DE PANTALLAS FIRMA DIGITAL

select * from establishment e 

select * from hash_view hv 

select * from customer c 

--Seguros Alianza = 9 Sweaden Seguros = 8
select
	*
from
	structure_process sp
	where sp.id_establishment in(9);
	
--DETALLE DE ESTRUCTURA
	
select
	*
from
	detail_struc_proc dsp
where
	dsp.id_struc_proc in(35);
	

--DOCUEMTOS 
delete * from "document" where d.id_establishment = 9

select * from document where id_establishment =9 order by id_document desc  

--TOTAL

select
	count(*)
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
	dd.id_det_strpro in(9);

--DETALLE DE DOUMENTOS

delete
	*
from
	detail_document dd
where
	dd.id_det_strpro in(35,36);

	
--Vista de documentos
select
	*
from
	document_view dv
where
	dv.id_establishment = 9
	
	
select
	id_det_docu,
	firm_acquirer,
	firm_customer,
	hash_facquirer,
	hash_fcustomer,
	document_data,
	url_doc,
	traceability,
	payment_data,
	attachments,
	form_vars,
	error,
	rejected_date,
	acceptance_date,
	detail_document_status,
	id_det_strpro,
	comments,
	id_establishment,
	id_customer,
	establishment_description,
	nemonic,
	establishment_dni,
	establishment_address,
	establishment_phone,
	establishment_mail,
	contact_name,
	establishment_code_phone,
	hash,
	id_cat_language,
	hash_connection,
	info_additional,
	establishment_status,
	id_document,
	id_struc_proc,
	id_adviser,
	process_info,
	document_status,
	document_description,
	id_acquirer,
	acquirer_dni,
	name_acquirer,
	lastname,
	mail,
	code_phone,
	acquirer_phone,
	acquirer_structure,
	acquirer_status,
	customer_description,
	canal_domain_access,
	customer_connection_params,
	customer_hash_connection,
	customer_hash,
	id_cat_process,
	otp_codes,
	customer_nemonic,
	structure_screens,
	structure_process_nemonic,
	structure_process_description,
	photos_list,
	dsp_nemonic,
	has_form,
	dsp_description,
	dsp_status
from
	signature_data_view
where
	id_document = 2959
	
---- Restablecer el valor de la secuencia a 1
---- ALTER SEQUENCE acount_id_acount_seq RESTART WITH 1;
---- Restablecer el valor de la secuencia a 1
---- ALTER SEQUENCE acount_id_acount_seq RESTART WITH 1;	
	
select * from users where id_establishment=15

--Validacion usuarios por establecimiento general id 15

select
	*
from
	users
where
	login = '9bfb7a7983ec8acf'
	and password_user = 'e08c1a0b'
	and status != '0';


select
	*
from
	users
where
	id_establishment=15

	
--get documents
	
	SELECT 
    d.id_document,
    d.process_info,
    dd.id_det_docu,
    dd.traceability,
    dd.url_doc,
    dd.status,
    dd.creation_date,
    c.hash,
    a.dni,
    a.name_acquirer,
    a.lastname,
    a.mail,
    a.phone
FROM 
    public.document d
INNER JOIN 
    public.detail_document dd ON dd.id_document = d.id_document
INNER JOIN 
    public.establishment e ON d.id_establishment = e.id_establishment
INNER JOIN 
    public.customer c ON e.id_customer = c.id_customer
INNER JOIN 
    public.acquirer a ON d.id_acquirer = a.id_acquirer
INNER JOIN 
    public.users u ON a.id_acquirer = u.id_acquirer
WHERE 
    d.creation_date BETWEEN $1 AND $2 
    AND u.id_user = $3::integer 
    AND dd.status = $4
ORDER BY 
    d.id_document;

select * from forms_establishment fe 



