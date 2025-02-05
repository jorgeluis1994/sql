--STRUCTURA DE PANTALLAS8
select * from structure_process sp where id_struc_proc =36

select * from structure_process sp where sp.id_establishment =9

select * from establishment e 


select * from detail_struc_proc dsp where id_struc_proc =36

--DOCUMENTOS 
select * from "document" d order by d.id_document 

select * from "document" d where id_establishment =9

delete  from "document" d where id_establishment =9

select * from detail_document dd where dd.id_document =2868

select count(*) from detail_document dd 

select * from document_view 

select * from establishment e 

select * from customer c 

--DETALLE DOCUMENTOS
select
	id_document 
from
	detail_document 
group by
	id_document

	
select * from detail_document dd 

select count(*) from detail_document dd 

SELECT *
FROM detail_document
WHERE creation_date  = 1719249112218;



ORDER BY id_document DESC;


where dd.id_det_docu =55

--FORMULARIO
select * from forms_establishment fe 


select * from establishment e 

select * from parameters p 

select * from private_key_view pkv 



select
	id_det_strpro,
	id_struc_proc,
	information,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	flow_struc_proc,
	status,
	mnemonic,
	description
from
	detail_struc_proc
where
	mnemonic = 'MF-ADV-01-02'   

--FIRMADO DE DOCUMENTOS 

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
	id_document = 2356
	
	select * from signature_data_view sdv where id_det_docu =2359
	
	SELECT id_det_docu, id_document, id_det_strpro, firm_acquirer, firm_customer, hash_facquirer, hash_fcustomer, document_data, url_doc, traceability, traceability->> 'statusAceptance', payment_data, attachments, form_vars, error, rejected_date, acceptance_date, creation_date, modification_date, id_user_create, id_user_modify, status, comments 
FROM detail_document 
WHERE id_det_docu = 3033;

SELECT id_det_docu, firm_acquirer, firm_customer, hash_facquirer, hash_fcustomer, document_data, url_doc, traceability, payment_data, attachments, form_vars, error, rejected_date, acceptance_date, detail_document_status, id_det_strpro, comments, id_establishment, id_customer, establishment_description, nemonic, establishment_dni, establishment_address, establishment_phone, establishment_mail, contact_name, establishment_code_phone, hash, id_cat_language, hash_connection, info_additional, establishment_status, id_document, id_struc_proc, id_adviser, process_info, document_status, document_description, id_acquirer, acquirer_dni, name_acquirer, lastname, mail, code_phone, acquirer_phone, acquirer_structure, acquirer_status, customer_description, canal_domain_access, customer_connection_params, customer_hash_connection, customer_hash, id_cat_process, otp_codes, customer_nemonic, structure_screens, structure_process_nemonic, structure_process_description, photos_list, dsp_nemonic, has_form, dsp_description, dsp_status 
FROM signature_data_view 
WHERE id_document = 2361;

select *from "document" d where id_struc_proc =35

select * from detail_document d where id_det_strpro =35


select * from forms_establishment fe 

select
	id_det_docu,
	id_document,
	id_det_strpro,
	firm_acquirer,
	firm_customer,
	hash_facquirer,
	hash_fcustomer,
	document_data,
	url_doc,
	traceability,
	traceability->> 'statusAceptance',
	payment_data,
	attachments,
	form_vars,
	error,
	rejected_date,
	acceptance_date,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	status,
	comments
from
	detail_document
where
	id_det_docu = 3987

	
	



select
	id_establishment,
	id_customer,
	description,
	dni,
	address,
	phone,
	mail,
	contact_name,
	contact_phone,
	hash_connection,
	id_cat_language,
	hash,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	id_cat_language,
	info_additional,
	status,
	hash_connection,
	nemonic
from
	establishment
where
	id_establishment = 9 ;

select
	id_establishment,
	id_customer,
	description,
	dni,
	address,
	phone,
	mail,
	contact_name,
	contact_phone,
	hash_connection,
	id_cat_language,
	hash,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	id_cat_language,
	info_additional,
	status,
	hash_connection,
	nemonic
from
	establishment
where
	id_establishment = 9

select
	id_form_est,
	id_establishment,
	name,
	description,
	structure,
	periodicity,
	weight,
	info_additional,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	id_cat_formgroup,
	status
from
	forms_establishment
where
	id_form_est = 2
	
	
	
select
	id_document,
	dni,
	name_acquirer,
	lastname,
	code_phone,
	phone,
	mail,
	document_data,
	url_doc,
	creation_date,
	modification_date,
	traceability,
	id_transaction,
	status,
	doc_authorization_items,
	id_establishment,
	payment_data,
	attachments,
	form_vars,
	attachments,
	id_struc_proc,
	estbMnemonic,
	urlHash,
	process_info
from
	document_view
where
	id_transaction = '1370'
	and estbMnemonic = 'MF-SAZ'
	
	
	
	
	
	
select
	id_prm,
	name,
	params,
	params::json -> 0 ->'url' as urls,
	params::json -> 0 ->'url' as urls,
	params::json -> 'privateKey' as privateKey ,
	params::json -> 'publicKey' as publicKey,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	status
from
	parameters
where
	name = 'id_mnemonic'
order by
	id_prm asc ;


select
	id_catalog,
	description,
	id_cat_language,
	structure_jb,
	data_jb,
	id_cat_tipocatalogo,
	id_establishment,
	nemonic,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	status
from
	catalogs
where
	description = 'type-document'
	and id_cat_language = '{"idCatLanguage":"0,0,0"}'
order by
	id_catalog asc ;


select * from users u 

select * from acquirer a where id_acquirer =76

select * from establishment e where id_establishment =15

SELECT hash FROM hash_view

select
	id_customer,
	description,
	canal_domain_access,
	info_additional,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	status,
	hash_connection,
	hash,
	nemonic,
	connection_params
from
	customer
where
	nemonic = 'MF'
	
select
	id_establishment,
	id_customer,
	description,
	dni,
	address,
	phone,
	mail,
	contact_name,
	contact_phone,
	hash_connection,
	id_cat_language,
	hash,
	creation_date,
	modification_date,
	id_user_create,
	id_user_modify,
	id_cat_language,
	info_additional,
	status,
	hash_connection,
	nemonic
from
	establishment
where
	nemonic = 'MF-SAZ'
	
	
select
	id_document,
	dni,
	name_acquirer,
	lastname,
	code_phone,
	phone,
	mail,
	document_data,
	url_doc,
	creation_date,
	modification_date,
	traceability,
	id_transaction,
	status,
	doc_authorization_items,
	id_establishment,
	payment_data,
	attachments,
	form_vars,
	attachments,
	id_struc_proc,
	estbMnemonic,
	urlHash,
	process_info
from
	document_view
where
	id_transaction = '1493'
	and estbMnemonic = 'MF-SAZ'
