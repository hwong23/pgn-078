---
author: Stefanini - FNA
title: E-Service. Arquitectura FNA y Capacidades TI
subtitle: 
date: Octubre 10, 2022
---

# Diagnóstico de Arquitectura
Resumen de las problemática del portafolio de servicios SOA FNA.

---

## Acoplamiento de las capacidades de negocio del FNA a COBIS
Existen más de 96 relaciones entre las capacidades de negocio y las herramientas de software de COBIS.

Todo acoplamiento produce rigidez. Esta rigidez es la causa que afecta a la flexibilidad de negocio y al tiempo de mercado.

---

## Alto grado de relación de dependencia
El grado de relación de dependencia de las aplicaciones proveedoras de servicios es alto y requiere de intervención que prevenga y controle su aumento. El aumento de la cantidad de relaciones entre los servicios del portafolio causa problemas de degradación, mantenimiento y rigidez al cambio. 

Aplicaciones como COBIS Clientes y COBIS Cartera suman más de 60 relaciones con otros servicios. En total, el grupo de aplicaciones de COBIS suma más de 100 relaciones a servicios SOA del portafolio del Fondo.

---

## Bajo relacionamiento servicios-negocio
El bajo relacionamiento de los servicios con los requerimientos de las vicepresidencias de Crédito y la vicepresidencia de Operaciones evidenciada en los modelos del FNA es causa de complicaciones en la gestión de la demanda y afecta a la eficacia del portafolio de servicios, que empieza a llenarse de servicios de tipo intermediarios o servicios utilitarios que terminan consumiendo mayores recursos que los servicios de negocio.

---

## Dificultades en información de arquitecturas FNA
Problemática general que agrava a las anteriores. El repositorio de arquitectura del FNA presenta redundancias y desactualizaciones que causan dificultades al entendimiento de los conceptos y modelos de arquitectura del FNA. Encontrar un modelo o un concepto repetido entre todas las consultorías anteriores. Todo esto complica los análisis con base a este.

---

## Interdependencias del Portafolio FNA

![](../output/images/VistaPortafolio-CatalogoServiciosFNA.1.png){#fig: width=10in}

---

## Oportunidades y Beneficios SOA Futuros
Las problemática de rigidez de cambio, entendida como el tiempo de mercado, o el tiempo que toma entregar a producción una mejora, cambio o funcionalidad evidenciada en los diagnósticos de acoplamiento de las capacidades de negocio al proveedor la prevalencia del enfoque ascendente, esto es desde el proveedor hacia el negocio, los diagnósticos anteriores en aspectos como tecnología, decisiones de los tipos de servicios del portafolio del FNA, y del bajo uso de soluciones modernas de gestión de reglas de negocio 

Dejan oportunidades y retos. 

---

## Oportunidad 1. Desarrollo de Servicios FNA Guiada por la Arquitectura de Referencia
Con base en el análisis de alineación SOA, que muestra que el enfoque predominante no es el descendente, si no que, los servicios del portafolio del FNA provienen más de las aplicaciones de los proveedores que desde las vicepresidencia de Crédito o de Operaciones, tenemos la oportunidad de reforzar la arquitectura de referencia SOA del Fondo.

![](../output/images/vistafuncional.png){#fig: width=10in}

---

## Oportunidad 2. Monitoreo de los índices de eficacia de Servicios FNA
La oportunidad de monitorear el desarrollo SOA con la arquitectura de referencia asegura una mejora alineación y focalización de los esfuerzos operativos (del día a día), evolutivos, correctivos, y los de inversión de tecnología para el negocio, que son planes de mediano y largo plazo.

--- 

## Oportunidad 3. Utilización de la Tecnología SOA del FNA
En el FNA hay un campo grande de análisis para determinar con exactitud señalado: analizar el nivel de utilización de cada uno de las características de las plataformas, soluciones y productos de proveedor en los que el FNA invierte. 

Al momento no hay tal información en el repositorio del FNA.

---

## Oportunidad 4. Gestión de la Tecnología (gobierno) por Medio de Arquitectura

:::::::::::::: {.columns}
::: {.column width="50%"}
Impulsar la evolución de la alineación de la tecnología con las áreas misionales del FNA dado que su repositorio de arquitectura contiene información inicial para este objetivo 

| **Contenidos FNA**                 |          |
|------------------------------------|----------|
| Servicios                          | **543**  |
| Arquitectura                       | 352      |
| Información                        | 248      |
| Aplicación                         | 107      |
| Funcional                          | 61       |
| **Total Contenidos FNA revisados** | **1311** |
:::
::: {.column width="50%"}
Antes de dar paso a la gestión de la tecnología para el negocio de FNA hay que subsanar problemática de información del repositorio de arquitectura

1. Redundancias y el atraso de la información de los modelos y conceptos. 
1. Incompletitud en el modelamiento de conceptos, capacidades y procesos de negocio FNA.
1. Inconsistencia en el lenguaje de modelado:  falta estandarización de representación de los conceptos.
:::
::::::::::::::

---

## Hoja de Ruta E-Service FNA de los Proyectos de Cambio

:::::::::::::: {.columns}
::: {.column width="50%"}
Proyectos de cierre de brecha FNA. Prioridades, dependencias, secuencia, puntos de control de la evolución de la arquitectura de referencia SOA 2.0 del Fondo.

La hoja de ruta E-Service busca los objetivos

- Flexibilidad y tiempo de mercado (OBJ3)
- Fortaleza SOA de las aplicaciones (OBJ2)
- Independencia de proveedor (OBJ1)
:::
::: {.column width="50%"}
![](../output/images/hojaruta1.png){#fig: width=10in}
:::
::::::::::::::

---

## Hoja de Ruta E-Service FNA de los Proyectos de Cambio

:::::::::::::: {.columns}
::: {.column width="50%"}
La hoja de ruta E-Service está orientada a impactar los siguientes brechas y oportunidades:

* OP1. Instaurar la figura de gobierno SOA, capacidad, proceso y recursos
* OP2. Mejorar proceso de diseño, construcción y DevOps de soluciones SOA
* OP3. Mejorar la oferta de servicios analíticos en segmento FNA
* OP4. Aumentar el nivel de utilización de la Tecnología SOA del FNA
* OP5. Desarrollo de Servicios FNA guiada por la arquitectura de referencia 2.0
:::
::: {.column width="50%"}
![](../output/images/hojaruta1.png){#fig: width=10in}

* OP6. Gestión de la Tecnología (gobierno) orientada por arquitectura 2.0
* OP7. Articulación y fortalecimiento del equipo de arquitectura del FNA junto a proveedores
* OP8. Monitoreo de los índices de eficacia de los servicios FNA

:::
::::::::::::::
