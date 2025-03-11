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




