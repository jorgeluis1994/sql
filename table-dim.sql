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

CREATE TABLE Users (
    id_user INT PRIMARY KEY,
    id_center INT,
    num_residents INT,
    num_female_residents INT,
    num_residents_over_65 INT,
    num_dependency_level1 INT,
    num_dependency_level2 INT,
    num_dependency_level3 INT,
    FOREIGN KEY (id_center) REFERENCES Centers(id_center)
);



CREATE TABLE Estancias (
    id_estancia INT PRIMARY KEY,
    id_usuario INT,
    n_dias_estancia_total INT,
    n_altas INT,
    n_bajas INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Stays (
    id_stay INT PRIMARY KEY,
    id_user INT,
    total_stay_days INT,
    num_discharges INT,
    num_admissions INT,
    FOREIGN KEY (id_user) REFERENCES Users(id_user)
);


CREATE TABLE Profesionales (
    id_profesional INT PRIMARY KEY,           -- Identificador único del profesional
    id_center INT,                            -- Relación con la tabla Centros
    codigo_profesional VARCHAR(100),          -- Código o identificador del profesional
    nombre_profesional VARCHAR(255),          -- Nombre del profesional
    genero VARCHAR(50),                       -- Género del profesional
    puesto VARCHAR(255),                      -- Puesto del profesional (Ej. Trabajador/a social)
    experiencia DECIMAL(3,1),                 -- Años de experiencia del profesional
    horas_trabajadas INT,                     -- Número de horas trabajadas por el profesional
    horas_pendientes INT,                     -- Horas de trabajo pendientes del profesional
    fecha_actualizacion DATE,                 -- Fecha de la última actualización
    creator VARCHAR(255),                     -- Usuario que realizó la actualización
    FOREIGN KEY (id_center) REFERENCES Centros(id_center)   -- Relación con la tabla Centros
);


CREATE TABLE Professionals (
    id_professional INT PRIMARY KEY,           -- Unique identifier for the professional
    id_center INT,                             -- Relationship with the Centers table
    professional_code VARCHAR(100),            -- Professional's code or identifier
    professional_name VARCHAR(255),            -- Name of the professional
    gender VARCHAR(50),                        -- Gender of the professional
    position VARCHAR(255),                     -- Professional's position (e.g. Social Worker)
    experience DECIMAL(3,1),                    -- Professional's years of experience
    hours_worked INT,                          -- Number of hours worked by the professional
    hours_pending INT,                         -- Pending work hours of the professional
    update_date DATE,                          -- Last updated date
    creator VARCHAR(255),                      -- User who made the update
    FOREIGN KEY (id_center) REFERENCES Centers(id_center)  -- Relationship with the Centers table
);




