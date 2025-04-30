-- % con dependencia severa o total
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'categoria_barthel',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.categoria_barthel = 'SEVERA') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.categoria_barthel != 'SEVERA') AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.categoria_barthel = 'SEVERA') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con IMC bajo
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'categoria_imc',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.categoria_imc = 'BAJO') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.categoria_imc != 'BAJO') AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.categoria_imc = 'BAJO') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con IMC alto
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'categoria_imc',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.categoria_imc = 'ALTO') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.categoria_imc != 'ALTO') AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.categoria_imc = 'ALTO') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con incontinencia fecal
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'incontinencia_fecal',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.incontinencia_fecal = 'SI') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.incontinencia_fecal != 'SI' OR vp.incontinencia_fecal IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.incontinencia_fecal = 'SI') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes diagnosticados con enfermedad arterial periférica
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'enfermedad_arterial_periférica',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.enfermedad_arterial_periférica = 'SI') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.enfermedad_arterial_periférica != 'SI' OR vp.enfermedad_arterial_periférica IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.enfermedad_arterial_periférica = 'SI') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes diagnosticados con diabetes mellitus
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'diabetes',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.diabetes = 'SI') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.diabetes != 'SI' OR vp.diabetes IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.diabetes = 'SI') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con enfermedad vascular
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'enfermedad_vascular',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.enfermedad_vascular = 'SI') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.enfermedad_vascular != 'SI' OR vp.enfermedad_vascular IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.enfermedad_vascular = 'SI') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con ingreso en los últimos 30 días
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'hospital_admision',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.hospital_admision = 'SI') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.hospital_admision != 'SI' OR vp.hospital_admision IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.hospital_admision = 'SI') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;

-- % de residentes con deterioro cognitivo severo
INSERT INTO public.centro_estadisticas (
    id_center,
    caracterics,
    groupfilter,
    categoria,
    totalusuarios,
    totalvalidos,
    totalinvalidos,
    indicador,
    desviacion,
    created_at
)
SELECT
    NULL,
    'categoriza_mmse',
    'personalidad_legal_gestor',
    vc.personalidad_legal_gestor,
    COUNT(*) AS totalusuarios,
    COUNT(*) FILTER (WHERE vp.categoriza_mmse = 'SEVERO') AS totalvalidos,
    COUNT(*) FILTER (WHERE vp.categoriza_mmse != 'SEVERO' OR vp.categoriza_mmse IS NULL) AS totalinvalidos,
    ROUND(
        (COUNT(*) FILTER (WHERE vp.categoriza_mmse = 'SEVERO') * 100.0) / NULLIF(COUNT(*), 0), 2
    ) AS indicador,
    NULL AS desviacion,
    CURRENT_TIMESTAMP
FROM view_peoples vp
JOIN view_centers vc ON vp.identificador_centro = vc.identificador_centro
JOIN centers_establishments ce ON ce.center_identifier = vc.identificador_centro
GROUP BY vc.personalidad_legal_gestor;


select * from public.centro_estadisticas