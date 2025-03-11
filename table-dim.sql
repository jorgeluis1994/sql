CREATE TABLE Centros (
    id_center INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    num_identification VARCHAR(100) NOT NULL,
    type_center VARCHAR(100),
    personalidad_juridica_titular VARCHAR(255),
    personalidad_juridica_gestora VARCHAR(255),
    municipio_ubicacion VARCHAR(255),
    es_libre_de_restricciones BOOLEAN,
    fecha_actualizacion DATE,
    creator VARCHAR(255)
);


CREATE TABLE Centers (
    id_center INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    num_identification VARCHAR(100) NOT NULL,
    center_type VARCHAR(100),
    legal_entity_owner VARCHAR(255),
    legal_entity_manager VARCHAR(255),
    municipality_location VARCHAR(255),
    is_free_of_restrictions BOOLEAN,
    update_date DATE,
    creator VARCHAR(255)
);



CREATE TABLE Plazas (
    id_plaza INT PRIMARY KEY,
    id_center INT,
    n_plazas_autorizadas INT,
    n_plazas_concertadas INT,
    dispone_plazas_autonomas BOOLEAN,
    n_plazas_autonomas INT,
    dispone_plazas_psicogeriatricas BOOLEAN,
    n_plazas_psicogeriatricas INT,
    dispone_plazas_paliativas BOOLEAN,
    n_plazas_paliativas INT,
    FOREIGN KEY (id_center) REFERENCES Centros(id_center)
);

CREATE TABLE Places (
    id_place INT PRIMARY KEY,
    id_center INT,
    authorized_places INT,
    contracted_places INT,
    has_autonomous_places BOOLEAN,
    num_autonomous_places INT,
    has_psychogeriatric_places BOOLEAN,
    num_psychogeriatric_places INT,
    has_palliative_places BOOLEAN,
    num_palliative_places INT,
    FOREIGN KEY (id_center) REFERENCES Centers(id_center)
);



CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    id_center INT,
    n_personas_usuarias INT,
    n_personas_mujeres INT,
    n_personas_mayores_65 INT,
    n_dependencia_grado1 INT,
    n_dependencia_grado2 INT,
    n_dependencia_grado3 INT,
    FOREIGN KEY (id_center) REFERENCES Centros(id_center)
);


CREATE TABLE Estancias (
    id_estancia INT PRIMARY KEY,
    id_usuario INT,
    n_dias_estancia_total INT,
    n_altas INT,
    n_bajas INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);




