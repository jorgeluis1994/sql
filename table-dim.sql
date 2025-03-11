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

CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY,               -- Identificador único del paciente
    nombre VARCHAR(255),                        -- Nombre o código del paciente (por ejemplo, ang.adr.)
    genero VARCHAR(50),                         -- Género del paciente (por ejemplo, "Hombre")
    fecha_nacimiento DATE,                      -- Fecha de nacimiento (por ejemplo, 31/5/1939)
    fecha_admision DATE,                        -- Fecha de admisión (por ejemplo, 22/8/2019)
    tipo_cuidado VARCHAR(255),                  -- Tipo de cuidado requerido (por ejemplo, "Larga estancia")
    numero_plazas INT,                          -- Número de plazas disponibles (por ejemplo, 162)
    fecha_alta DATE,                            -- Fecha de alta (por ejemplo, 1/6/2023)
    peso DECIMAL(5,2),                          -- Peso del paciente (por ejemplo, 76.4)
    fecha_proxima_visita DATE,                  -- Fecha de la próxima visita (por ejemplo, 4/1/2023)
    tiene_restricciones VARCHAR(3),             -- Si tiene restricciones (por ejemplo, "Sí")
    esta_activo BOOLEAN,                        -- Indica si el paciente sigue activo o no
    tiene_cuidados_paliativos BOOLEAN,          -- Si el paciente requiere cuidados paliativos (por ejemplo, "Sí")
    estado_cuidado VARCHAR(50),                 -- Estado del cuidado del paciente (por ejemplo, "MEC-35")
    otras_observaciones TEXT,                   -- Otras observaciones relevantes
    fecha_actualizacion DATE,                   -- Fecha de la última actualización (por ejemplo, 29/11/2023)
    creador VARCHAR(255)                        -- Usuario que realizó la actualización (por ejemplo, "crpm.10590786.311@gmail.com")
);

CREATE TABLE Patient (
    id_patient INT PRIMARY KEY,                -- Unique identifier for the patient
    name VARCHAR(255),                         -- Name or code of the patient (e.g., ang.adr.)
    gender VARCHAR(50),                        -- Gender of the patient (e.g., "Hombre" for male)
    birthdate DATE,                            -- Date of birth (e.g., 31/5/1939)
    admission_date DATE,                       -- Admission date (e.g., 8/22/2019)
    care_type VARCHAR(255),                    -- Type of care required (e.g., "Larga estancia")
    number_plazas INT,                         -- Number of available spots (e.g., 162)
    discharge_date DATE,                       -- Discharge date (e.g., 6/1/2023)
    weight DECIMAL(5,2),                       -- Patient's weight (e.g., 76.4)
    next_visit_date DATE,                      -- Next visit date (e.g., 4/1/2023)
    has_restrictions VARCHAR(3),               -- If there are any restrictions (e.g., "Sí" for Yes)
    is_active BOOLEAN,                         -- Whether the patient is still active or not
    has_palliative_care BOOLEAN,               -- If the patient requires palliative care (e.g., "Sí" or "No")
    care_status VARCHAR(50),                   -- Care status of the patient (e.g., "MEC-35")
    other_notes TEXT,                          -- Other relevant notes
    update_date DATE,                          -- Last update date (e.g., 29/11/2023)
    creator VARCHAR(255),                      -- User who made the update (e.g., "crpm.10590786.311@gmail.com")
);



CREATE TABLE PersonaDetalle (
    persona_id SERIAL PRIMARY KEY,
    dni VARCHAR(10) NOT NULL UNIQUE,
    sexo VARCHAR(10),
    fecha_nacimiento DATE,
    tipo_estancia VARCHAR(20),
    tipo_plaza_ocupada VARCHAR(50),
    altura INT,
    peso DECIMAL(5,2),
    incontinencia_fecal BOOLEAN,
    enfermedad_vascular BOOLEAN,
    enfermedad_arterial_periferica BOOLEAN,
    diabetes_mellitus BOOLEAN,
    puntuacion_bvd INT,
    puntuacion_barthel INT,
    puntuacion_mmse INT,
    ulcera_estado VARCHAR(10),
    caidas BOOLEAN,
    tipo_actividad_1 VARCHAR(50),
    duracion_actividad_1 INT,
    participacion_grupal_1 BOOLEAN,
    tipo_actividad_2 VARCHAR(50),
    duracion_actividad_2 INT,
    participacion_grupal_2 BOOLEAN,
    tipo_actividad_3 VARCHAR(50),
    duracion_actividad_3 INT,
    participacion_grupal_3 BOOLEAN,
    tipo_actividad_4 VARCHAR(50),
    duracion_actividad_4 INT,
    participacion_grupal_4 BOOLEAN,
    tipo_actividad_5 VARCHAR(50),
    duracion_actividad_5 INT,
    participacion_grupal_5 BOOLEAN,
    fecha_pai DATE,
    revision_pai BOOLEAN,
    fecha_valoracion_bvd DATE,
    valoracion_bvd INT,
    fecha_valoracion_barthel DATE,
    valoracion_barthel INT,
    fecha_valoracion_mmse DATE,
    valoracion_mmse INT,
    transaccion_fecha DATE,
    transaccion_tipo VARCHAR(50),
    transaccion_cantidad INT,
    transaccion_precio DECIMAL(10,2),
    transaccion_total DECIMAL(10,2),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);






