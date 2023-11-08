---
keywords:
- SOA
- madurez
- gobierno
- PGN
lang: en-US
date-meta: '2023-11-08'
author-meta:
- Harry Wong, ing.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-11-08" />
  <meta name="citation_publication_date" content="2023-11-08" />
  <meta property="article:published_time" content="2023-11-08" />
  <meta name="dc.modified" content="2023-11-08T04:59:27+00:00" />
  <meta property="article:modified_time" content="2023-11-08T04:59:27+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Harry Wong, ing." />
  <meta name="citation_author_institution" content="Arquitecto, Softgic" />
  <link rel="canonical" href="https://hwong23.github.io/pgn-078/" />
  <meta property="og:url" content="https://hwong23.github.io/pgn-078/" />
  <meta property="twitter:url" content="https://hwong23.github.io/pgn-078/" />
  <meta name="citation_fulltext_html_url" content="https://hwong23.github.io/pgn-078/" />
  <meta name="citation_pdf_url" content="https://hwong23.github.io/pgn-078/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://hwong23.github.io/pgn-078/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/pgn-078/v/c296a0360f100a2890f32613a076495ac948113a/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/pgn-078/v/c296a0360f100a2890f32613a076495ac948113a/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/pgn-078/v/c296a0360f100a2890f32613a076495ac948113a/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.bib
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...

---
title: Documento de Arquitectura Migración Funcional PGN SIU
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SIU
geometry:
  - top=1in
  - bottom=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
...


<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.c296a03 de 08 Nov 2023

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 08 Nov 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, Migración Funcional SIU, Contrato 078-2023, 
([Web](https://hwong23.github.io/pgn-078/v/c296a0360f100a2890f32613a076495ac948113a/))
están basados en el resultado de la Fase 1 del proyecto PGN SIU del 2022,
[Sharepoint Softgic@c296a03](http://softgic.sharepoint.com)
del November 8, 2023.
</em></small>





<br>

## Autores



+ **Harry Wong, ing.**
  <br>
    · ![Usuario](images/github.svg){.inline_icon width=16 height=16}
    [e_hwong](https://github.com/e_hwong)
    <br>
  <small>
     Arquitecto, Softgic
  </small>


::: {#correspondence}
✉ — Enviar mensajes a Harry Wong, ing. \<harry.wong@softgic.co\>.


:::

<br>



## Objetivo del Documento
Descripción de los productos del trabajo de arquitectura de la Fase 2, proyecto Migración Funcional SIU de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SIU      |
|----------------|----------------------------|
| Palabras clave | SIU, Softgic, PGN, Análisis de brecha, GAP, Comparativa |
| Autor          |                            |
| Fuente         |                            |
| **Versión**    |                            |
| 1.c296a03 | 2023-11-07. Merge branch 'main' of https://github.com/hwong23/pgn-078 |
| 1.57a9a5e | 2023-11-07. arqdoc |
| 1.bc63c34 | 2023-10-27. ing--indcdr |
| 1.c61d86d | 2023-10-27. riesgos2 |
| 1.bd83343 | 2023-10-27. riesgos |
| 1.3a67565 | 2023-10-22. output readme--version |
| 1.15ac385 | 2023-10-22. histr27 |
| 1.a97248b | 2023-10-22. histr26 |
| 1.ef11c3e | 2023-10-22. histr25 |
| 1.8d76f0f | 2023-10-22. histr24 |
| Vínculos       | [N003a Vista Segmento PGN SIU](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage




## Contenidos
\toc

<br>

<div style="page-break-before: always;"></div>
\newpage



# Introducción

## Propósito
Este documento tiene como propósito presentar la arquitectura del aplicativo Sistema Único de Información (SUI) para Procuraduría General de la Nación (PGN). según los requerimientos definidos durante la etapa de preventa y luego detallados en las historias de usuario.

La arquitectura será una guía para que el diseño y la implementación de los componentes que conforman la solución sean cobijados bajo lineamientos y premisas bien definidos, permitiendo a los elementos del sistema interactuar entre sí de forma coherente. La arquitectura será tomada como un diseño estratégico que establece restricciones globales para el diseño, define un marco inicial de trabajo para la implementación de los requerimientos funcionales y no funcionales.

La definición arquitectónica de este proyecto será un proceso evolutivo como tal. Este documento puede ser susceptible a cambios a medida que se vayan agregando nuevas funcionalidades o requisitos al sistema.

Uno de los principales propósitos de este documento es hacer una representación de las decisiones de disposición lógica y física de las partes del sistema; por tanto, es un diseño estratégico, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

 <div style="page-break-before: always;"></div>
\newpage



# Restricciones Principales
Informamos de las restricciones que hacen parte del proyecto, y por tanto, a considera en el ejercicio de arquitectura del presente proyecto.

Lista de restricciones de la migración SUI, 2023.

1. Restricciones de hardware o software en servidores. Los equipos de infraestructura del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 serán los mismos de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.
1. Disponibilidad de recursos. Los recursos de implementación y validación de calidad de esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Estándares. Los estándares seleccionados por la solución de este proyecto, (Fase 2, PGN Migración Funcional SIU, están determinados por el uso de las plataformas específicas determinadas por la implementación (desarrollo del software).
1. Requerimientos de interoperabilidad. Los recursos de interoperabilidad y colaboración entre sistemas, módulos, submódulos y aplicaciones de terceros relacionados con esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Requerimientos de protocolos o interfaces. Los recursos de red, y protocolos de comunicación o transporte de esta Fase del proyecto a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de los considerados en la anterior Fase 1. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Seguridad. Las restricciones de seguridad del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de las de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.

<br>

## Restricciones Secundarias
Otras restricciones a detallar.

1. Repositorio de datos.
1. Memoria, disco, CPU.
1. Requerimientos de rendimiento.

<br>


# Requisitos de Arquitectura (no funcional)
Entendemos como requisitos de arquitectura aquellos requerimientos no visibles pero estructurales, medibles, y que impactan al funcionamiento, desarrollo y mantenimiento de la solución migración SUI, objeto de este proyecto, OP 078-2023.
 
Definiremos estos requisitos de la solución a tener en cuenta al momento del desarrollo.

## Requerimientos generales
1. **Parametrización**. Crear desarrollos parametrizables necesarios para permitir la administración de la información de uso general.
1. **Interoperabilidad**. Crear desarrollos de SUI interoperables con otros sistemas de información de la entidad según requerimientos de los procesos.
1. **Diseño**. Los desarrollos complementarios deben responder a los criterios de bajo acoplamiento y alta cohesión.
1. **Reglas de negocio**. Las soluciones deben disponer de todas las validaciones y controles que garanticen la calidad, seguridad y unicidad de la información.
1. Para los casos que aplique, la solución debe contar con una integración con el servicio de correo de la Entidad.
1. Todos los desarrollos complementarios serán en su totalidad propiedad de la entidad, para lo cual la entidad podrá modificar y/o actualizar a futuro los procesos modelados, acorde a las necesidades; por tanto, deberán entregarse los derechos intelectuales y patrimoniales como parte de la documentación y el código fuente que corresponda.

<div style="page-break-before: always;"></div>
\newpage


## Requisitos Particulares de Arquitectura (no funcional) 

### Consistencia SUI (lógica)

| Requisito      | Extensibilidad SUI |
|----------------|--------------------|
| Descripción | Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. |
| Calidad sistémica | La consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos. |

Table: Requisito no. 1, Migración SUI, Consistencia. {#tbl:requisito1-id}

### Mantenibilidad SUI

| Requisito      | Mantenibilidad SUI |
|----------------|--------------------|
| Descripción | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  |
| Calidad sistémica | La mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |

Table: Requisito no. 2, Mantenibilidad SUI. {#tbl:requisito2-id}

### Extensibilidad SUI

| Requisito      | Extensibilidad SUI |
|----------------|--------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Requisito no. 3, Migración SUI, Flexibilidad. {#tbl:requisito3-id}


# Doc.3.Migración Funcional SUI
* [Patrón de Diseño Línea Base SUI PGN](#patrón-de-diseño-línea-base-sui-pgn)
	* [Lineabase.0.SIU applicación](#lineabase.0.siu-applicación)
	* [Lineabase.1.SIU componente](#lineabase.1.siu-componente)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Linebase.2.Portal](#linebase.2.portal)
* [Patrón de Diseño Migración SUI PGN](#patrón-de-diseño-migración-sui-pgn)
	* [Migracion.1a.a.SIU Contexto Módulo](#migracion.1a.a.siu-contexto-módulo)
	* [Migracion.1b.1. SIU Módulos Componentes](#migracion.1b.1.-siu-módulos-componentes)
	* [Migracion.1c.SIU Modulos Colaboración](#migracion.1c.siu-modulos-colaboración)
* [Organización cambios arquitectura](#organización-cambios-arquitectura)
	* [Organización. 1n. Mapa producto](#organización.-1n.-mapa-producto)
	* [Organización. 1n.1.b. Mapa producto PGN. Relatoría](#organización.-1n.1.b.-mapa-producto-pgn.-relatoría)
	* [Organización. 2n.1a. Mapa producto PGN. Conciliacion](#organización.-2n.1a.-mapa-producto-pgn.-conciliacion)
	* [Organización. 4n.1. Mapa producto PGN. Estratego](#organización.-4n.1.-mapa-producto-pgn.-estratego)
	* [Organización. 3n.1. Mapa producto PGN. SIAF](#organización.-3n.1.-mapa-producto-pgn.-siaf)
* [Arquitectura de Seguridad, SUI Migración](#arquitectura-de-seguridad,-sui-migración)
	* [Seguridad.1. Requerimientos](#seguridad.1.-requerimientos)
	* [Seguridad. Linebase.2.Portal](#seguridad.-linebase.2.portal)
* [Análisis de Productos](#análisis-de-productos)
	* [Organización. 4n.1a. Mapa producto PGN. Comparativa](#organización.-4n.1a.-mapa-producto-pgn.-comparativa)
* [Riesgos Técnicos](#riesgos-técnicos)
	* [Riesgos.1. Migración funcional](#riesgos.1.-migración-funcional)
	* [Riesgos.2. Modelo Riesgo RSG10](#riesgos.2.-modelo-riesgo-rsg10)

<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Línea Base SUI PGN
## Lineabase.0.SIU applicación
![Diagram: Lineabase.0.SIU applicación](images/Lineabase.0.SIUapplicación.png){#fig:Lineabase.0.SIUapplicación width=}

Procuraduría General de la Nación, proyecto Migración SIU, 2023, Fase II. Línea base del sistema único de información (SUI en adelante) de la PGN. Presentación de componentes de software  originales implementados en la Fase I del presente proyecto.


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||

## Lineabase.1.SIU componente
![Diagram: Lineabase.1.SIU componente](images/Lineabase.1.SIUcomponente.png){#fig:Lineabase.1.SIUcomponente width=5.89in}

Distribución de los servicios y paquetes que integran la aplicación de SUI. 

Cuatro paquetes con tecnologías respectivas

1. Angular 11 (Web)
1. API Transaccional (Node Js)
1. API Config (C#)
1. Persistencia (SQL)

Asuntos de la Migración:

* Estrategia CMS central
* Motor de búsqueda
* Estatego como BI
* Conciliación y Doku
* Gestión de sesiones / caducidad



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>El api transaccional construida en Node js con ORM Sequelize cuenta con obligatoriedad de token tipo bearer generado desde Api config (Api security token generado con autenticación de directorio activo o login de usuario <br>externo) cuenta con un modelo de capas donde primero se encuentra un DTO consistente en estructura de datos y métodos de “check permissions” (un endpoint del api de seguridad para validar privilegios sobre las acciones de <br>la petición en ingreso) luego dependiendo del tipo de transacción se tiene una capa para Lappiz functions, Lappiz Jobs (Tareas programables) y Lappiz model (Generado con base ORM sequelize). Todas las transacciones una vez <br>son validadas en token y permisos, pasan a un tenedor de conexión para modificar las cadenas de conexión en marcha y saber que usuario de bd va a efectuar la operación y con qué privilegios. Todas las peticiones entran en <br>un modelo natural de node js compuesto por un Event queue y un evento Loop; estas peticiones se procesan en la base de datos y todas las excepciones controladas se registran en un log de errores en formato txt con las especificaciones y devolviendo errores controlados con protocolos HTTPs al Runtime (front de SUI).||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>El api transaccional construida en Node js con ORM Sequelize cuenta con obligatoriedad de token tipo bearer generado desde Api config (Api security token generado con autenticación de directorio activo o login de usuario <br>externo) cuenta con un modelo de capas donde primero se encuentra un DTO consistente en estructura de datos y métodos de “check permissions” (un endpoint del api de seguridad para validar privilegios sobre las acciones de <br>la petición en ingreso) luego dependiendo del tipo de transacción se tiene una capa para Lappiz functions, Lappiz Jobs (Tareas programables) y Lappiz model (Generado con base ORM sequelize). Todas las transacciones una vez <br>son validadas en token y permisos, pasan a un tenedor de conexión para modificar las cadenas de conexión en marcha y saber que usuario de bd va a efectuar la operación y con qué privilegios. Todas las peticiones entran en <br>un modelo natural de node js compuesto por un Event queue y un evento Loop; estas peticiones se procesan en la base de datos y todas las excepciones controladas se registran en un log de errores en formato txt con las especificaciones y devolviendo errores controlados con protocolos HTTPs al Runtime (front de SUI).||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||

## Linebase.2.Portal
![Diagram: Linebase.2.Portal](images/Linebase.2.Portal.png){#fig:Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||
<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Migración SUI PGN
## Migracion.1a.a.SIU Contexto Módulo
![Diagram: Migracion.1a.a.SIU Contexto Módulo](images/Migracion.1a.a.SIUContextoMódulo.png){#fig:Migracion.1a.a.SIUContextoMódulo width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales dell SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

Los submódulos identificados tienen los siguientes roles para el SUI migrado:

1. cc:Presentación
1. cc:Servicios de aplicación
1. cc:Portales y canales
1. cc:Administración y configuración
1. cc:Almacenamiento

### Requerimientos Asociados a los Submódulos
La disposición de los módulos y submódulos presentada, denominada SUI Migración en adelante, facilita la focalización de los requerimientos encontrados en el levantamiento realizado en el actual proyecto. Así, por ejemplo, los requerimientos funcionales se encuentran concentrados en el submódulo de presentación (ver imagen).


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**cc:Servicios de aplicación**|application-collaboration|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**Cliente PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Migracion.1b.1. SIU Módulos Componentes
![Diagram: Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización intena de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologeias. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Función PGN**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Entidad negocio PGN**|business-object|Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

## Migracion.1c.SIU Modulos Colaboración
![Diagram: Migracion.1c.SIU Modulos Colaboración](images/Migracion.1c.SIUModulosColaboración.png){#fig:Migracion.1c.SIUModulosColaboración width=}

Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante API de comunicación (o buses de datos empresarial que ya disponga la PGN), sin perjuicio del patrón de comunicación estadar descrito en el diagrama.

Los únicos elementos para la comunicación (e integración) son los indicados en la vista actual. En este diseño no considera tipos de comunición mediante  mesajería, datos, ni 

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Almacenamiento**|application-collaboration|Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
<div style="page-break-before: always;"></div>
\newpage

# Organización cambios arquitectura
## Organización. 1n. Mapa producto
![Diagram: Organización. 1n. Mapa producto](images/Organización.1n.Mapaproducto.png){#fig:Organización.1n.Mapaproducto width=3.14in}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Tiempo**|gap|||
|**Características**|goal||*modulo:* <br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|

## Organización. 1n.1.b. Mapa producto PGN. Relatoría
![Diagram: Organización. 1n.1.b. Mapa producto PGN. Relatoría](images/Organización.1n.1.b.MapaproductoPGN.Relatoría.png){#fig:Organización.1n.1.b.MapaproductoPGN.Relatoría width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Administración de contenidos**|capability||*modulo:* relatoria<br>|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Componentes de usabilidad, no. 1**|capability||*modulo:* relatoria<br>|
|**Componentes de usabilidad, no. 2**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de búsqueda**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de descripción de contenidos**|capability||*modulo:* relatoria<br>|
|**Integración API CMS**|capability||*modulo:* relatoria<br>|
|**Motor de búsqueda**|capability||*modulo:* relatoria<br>|
|**Proceso de organización de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de recolección de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de sincronización automática de contenidos**|capability||*modulo:* relatoria<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Búsqueda**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Características**|goal||*modulo:* <br>|
|**Contenidos**|goal|Se tendran que adecuar los contenidos audivisuales de los sitios web, con subtitulos o CLosed Caption y la apropiacion de lenguajes de señas. |*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Descripción (metatada)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Indexación**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Recolección**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Sincronización (actualizcn)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* relatoria<br>|
|**Búsqueda de contenidos. Relatoría v0.1**|value||*modulo:* relatoria<br>|
|**Despliegue Relatoría v1.2**|value||*modulo:* relatoria<br>|
|**Gestión contenidos. Rltría v1.0**|value||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Organización contenidos. Rltría v0.5**|value||*modulo:* relatoria<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 2**|work-package||*modulo:* relatoria<br>|
|**Iteración 3**|work-package||*modulo:* relatoria<br>|
|**Iteración 4**|work-package||*modulo:* relatoria<br>|
|**Iteración 5**|work-package||*modulo:* relatoria<br>|
|**Iteración 6**|work-package||*modulo:* relatoria<br>|
|**Iteración 7**|work-package||*modulo:* relatoria<br>|
|**rel.Iteración 1**|work-package||*modulo:* relatoria<br>|

## Organización. 2n.1a. Mapa producto PGN. Conciliacion
![Diagram: Organización. 2n.1a. Mapa producto PGN. Conciliacion](images/Organización.2n.1a.MapaproductoPGN.Conciliacion.png){#fig:Organización.2n.1a.MapaproductoPGN.Conciliacion width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo  Preventico**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinar**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención**|capability||*modulo:* conciliacion<br>|
|**Integración API Dokus**|capability||*modulo:* conciliacion<br>|
|**Motor de flujo de trabajo**|capability||*modulo:* conciliacion<br>|
|**Panel de control flujos**|capability||*modulo:* conciliacion<br>|
|**Reporte flujos de trabajo**|capability||*modulo:* conciliacion<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Características**|goal||*modulo:* <br>|
|**Conciliación administrativa**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación civil**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación disciplinar**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación familia**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación preventivo**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Diseño de flujos de Conciliación**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión de instancias (flujos)**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión documental**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Informes de gestión flujos**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* conciliacion<br>|
|**Despliegue Conciliación v1.2**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinario. Conciliación v0.9**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención. Conciliación v0.1 (copy)**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Preventivo. Conciliación v0.7**|value||*modulo:* conciliacion<br>|
|**Gestión de flujos. Conciliación 1.0**|value||*modulo:* conciliacion<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* conciliacion<br>|
|**Iteración 2**|work-package||*modulo:* conciliacion<br>|
|**Iteración 3**|work-package||*modulo:* conciliacion<br>|
|**Iteración 4**|work-package||*modulo:* conciliacion<br>|
|**Iteración 5**|work-package||*modulo:* conciliacion<br>|
|**Iteración 6**|work-package||*modulo:* conciliacion<br>|
|**Iteración 7**|work-package||*modulo:* conciliacion<br>|

## Organización. 4n.1. Mapa producto PGN. Estratego
![Diagram: Organización. 4n.1. Mapa producto PGN. Estratego](images/Organización.4n.1.MapaproductoPGN.Estratego.png){#fig:Organización.4n.1.MapaproductoPGN.Estratego width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**Características**|goal||*modulo:* <br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|

## Organización. 3n.1. Mapa producto PGN. SIAF
![Diagram: Organización. 3n.1. Mapa producto PGN. SIAF](images/Organización.3n.1.MapaproductoPGN.SIAF.png){#fig:Organización.3n.1.MapaproductoPGN.SIAF width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones de acuerdo al estado**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**CRUD Campos**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Características**|goal||*modulo:* <br>|
|**Creación de movimiento**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependiendo del tipo de movimiento**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Login (Doble factor)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Sincronización con Homminis**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Vista CRUD**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 9**|work-package||*modulo:* siaf<br>|
<div style="page-break-before: always;"></div>
\newpage

# Arquitectura de Seguridad, SUI Migración
## Seguridad.1. Requerimientos
![Diagram: Seguridad.1. Requerimientos](images/Seguridad.1.Requerimientos.png){#fig:Seguridad.1.Requerimientos width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQRSEG1**|requirement|1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. <br>||
|**RQRSEG10**|requirement|1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad.||
|**RQRSEG12**|requirement|1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones.<br>||
|**RQRSEG13**|requirement|1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización.||
|**RQRSEG15**|requirement|1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet).||
|**RQRSEG16**|requirement|1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad.||
|**RQRSEG17**|requirement|1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad.||
|**RQRSEG18**|requirement| "1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. "||
|**RQRSEG18**|requirement|1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información.,id-d1a6b80e7a6c4538b922f333f4d7ec7a,requirement<br>RQRSEG11,"1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio).||
|**RQRSEG19**|requirement|1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados.||
|**RQRSEG2**|requirement|1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución.||
|**RQRSEG21**|requirement|1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. """||
|**RQRSEG22**|requirement|1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta.||
|**RQRSEG24**|requirement|1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet||
|**RQRSEG25**|requirement| "1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad."||
|**RQRSEG26**|requirement| "1. Para los casos que aplique se debe permitir el manejo de certificados o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. "||
|**RQRSEG27**|requirement| "1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. "||
|**RQRSEG28**|requirement| "1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). "||
|**RQRSEG29**|requirement| "1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. "||
|**RQRSEG3**|requirement|1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas.||
|**RQRSEG4**|requirement|1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse.||
|**RQRSEG5**|requirement|1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción.||
|**RQRSEG6**|requirement|1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación).||
|**RQRSEG7**|requirement|1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos).||
|**RQRSEG8**|requirement|1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella.||
|**RQRSEG9**|requirement|1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad.||

## Seguridad. Linebase.2.Portal
![Diagram: Seguridad. Linebase.2.Portal](images/Seguridad.Linebase.2.Portal.png){#fig:Seguridad.Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la Procuraduría.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Directivas de Aplicaciones.**|application-component|Requiere Microsoft 365 E3 con el complemento de identidades, La restricciones de acceso a las cargas de trabajo de productividad es un elemento clave, en la que los recursos locales y en la nube se autentican y se autorizan. <br>La autenticación por medio del AD con agentes que permiten ampliar su funcionalidad.||
|**Directivas de acceso.**|application-component|El control de acceso se da a partir de la autenticacion del directorio activo, y la integración del Single Sign-On (SSO), con el inicio unico de sesión fluido en todas las aplicaciones. <br>Se tendrá en cuenta la implementación con multiples capas de autenticación, autenticacion multifactor MFA<br>||
|**Directivas de proteccion de aplicaciones.**|application-component|||
|**Directivas de riesgos de protección. ***|application-component|||
|**Requiere MFA ***|application-component|Se deberá incorporar el 2FA para los accesos a la informacion que reposa en el SharePoint, que permita a los usuarios iniciar sesión de forma segura a través del uso de sus dispositivos móviles. ||
|**Requiere inicio de sesión.**|application-component|Presenta el formulario de inicio de sesión al usuario final que enviará la solicitud por medio del método POST, que envia datos de información al servidor. para que el servidor los agregue a su base de datos. ||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||
<div style="page-break-before: always;"></div>
\newpage

# Análisis de Productos
## Organización. 4n.1a. Mapa producto PGN. Comparativa
![Diagram: Organización. 4n.1a. Mapa producto PGN. Comparativa](images/Organización.4n.1a.MapaproductoPGN.Comparativa.png){#fig:Organización.4n.1a.MapaproductoPGN.Comparativa width=}

Mapa de productos. Comparativa funcional y técnica de módulos PGN, SIAF (izq.) y Estratego (derecha).

### Volumen Funcional
El análisis funcional de ambos módulos realizado durante el levantamiento (iteración 0) del presente proyecto arroja que SIAF tiene un 40% más de volumen que Estratego. Esto es, 16 funcionalidades de Estratego, mientras que SIAF suma 26. Ver imagen comparativa.

### Viabilidad de Alcance
Tomando en cuenta el criterio de calidad de la migración, objeto del presente contrato, 078-2023, de migrar módulos completos dentro de lo posible, y contrastando este criterio con el plazo del proyecto actual, que es de 4 meses, de los cuales ya se han ejecuta aproximadamente el 20% del mismo, es más viable la estrategia de migración de estratego sobre la de SIAF de la PGN por requerir menos iteraciones de desarrollo: seis (6) iteraciones, versus, nueve (9) de SIAF.

### Impacto / Beneficio a PGN
Los hitos de mercado del presente análisis producto, imagen arriba, dan cuenta  del beneficio e impacto de ambos proyectos de migración. Haciendo la comparación de los hitos de mercado de estos productos resalta que Estratego prima sobre SIAF en tanto que el peso cualitativo de las funciones estratégicas del primero son de mayor relevancia que las funciones operativos de inventario de SIAF. Basado en esto, Estratego reporta mayor beneficio y menos impacto en esfuerzo (por la razón anterior) que SIAF.

En conclusion, por los criterios de viabilidad y tamaño funcional y por el impacto estratégico, Estratego resulta en la migración a seleccionar sobre la del modulo SIAF. Esta estrategia satisface además la restricción de migrar moóulos completos sobre migración parcial.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Acciones de acuerdo al estado (copy)**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén (copy)**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos (copy)**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**CRUD Campos (copy)**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Creación de movimiento (copy)**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario (copy)**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación) (copy)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total (copy)**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental) (copy)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Dependiendo del tipo de movimiento (copy)**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado (copy)**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática (copy)**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos (copy)**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado (copy)**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf) (copy)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento (copy)**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes (copy)**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Login (Doble factor) (copy)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible (copy)**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo (copy)**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Sincronización con Homminis (copy)**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Vista CRUD (copy)**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada (copy)**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada (copy)**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada (copy)**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|
|**Iteración 9 (copy)**|work-package||*modulo:* siaf<br>|
<div style="page-break-before: always;"></div>
\newpage

# Riesgos Técnicos
## Riesgos.1. Migración funcional
![Diagram: Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:Riesgos.1.Migraciónfuncional width=}

Riesgos de la migración funcional:

* RSG1. Estrategia CMS central
* RSG2. Motor de búsqueda
* RSG3. Estatego como BI
* RSG4. Conciliación y Doku
* RSG5. Gestión de sesiones / caducidad
* RSG6. Componentes de negocio
* RSG7. Asignación de roles y permisos de Acceso 
* RSG8. Intentos de accesos no autorizados
* RSG9. Alteración de datos negocio
* RSG10. Validación decisiones de arquitectura
* RSG11. Estrategias de Migración de datos
* RSG12. Arquitectura de almancenamiento y distribución de datos SIU
* RSG13. Sistema de autenticación híbrido

### Acciones de Mitigación

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del SCM central (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del motor de búsqueda compartido (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: diseño de solución de inteligencia de negocio (Power BI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: ubicar la lógica, los flujos, y los datos misionales dentro del SIU. La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: facilitar la administración de seguridad en un solo lugar (distinto de localizarla en las aplicaciones web). La PGN debe decidir si o no a la acción propuesta.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**RSG1. Estrategia CMS central**|constraint|Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br>||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**RSG11. Estrategias de Migración de datos**|constraint|Discutir el alcance y los recursos para la correcta migración de datos incluídas en contrato 078, Migración Funcional SIU en atención al numeral 5.6 del anexo técnico del proyecto.<br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br>||
|**RSG12. Arquitectura de almancenamiento y distribución de datos SIU**|constraint|Definir la opción de organización y distribución de los almacenes de datos del SIU. <br>opc1. Dispositivo físico/virtual (nodo, servidor, y esquema de base de datos) único, central, a todos los módulos del SIU.<br>opc2. Dispositivos virtuales autónomos por dominio de negocio: rlatoría, inventario, información estratégica, intercomunicados.<br>||
|**RSG13. Sistema de autenticación híbrido**|constraint|Definir la estrategia de autenticación del SIU migrado (aplicable a todos los módulos del SIU migrado).<br>opc1. Híbrida: integrado, directorio empresarial (LDAP), y servicios de autenticación de confianza: Office 365 de PGN.<br>opc2. Servicio de autenticación de confianza: Office 365 de PGN.<br>||
|**RSG2. Motor de búsqueda compartido**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG3. Estatego como BI**|constraint|Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br>||
|**RSG4. Conciliación y gestión documental (Doku)**|constraint|Definir la ubicación de los componentes misionales de Conciliación Administrativa (SIU). Debe estar fuera de Doku.<br>||
|**RSG5. Gestión de sesiones / caducidad**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG6. Componentes de negocio**|constraint|Incluir el esfuerzo de creación de componentes estrcturales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br>Algunos componentes requeridos son:<br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br>||
|**RSG7. Asignación de roles y permisos de Acceso **|constraint|RSG7. Asignación de roles y permisos de Acceso<br>Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. <br>Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.<br>||
|**RSG8. Intentos de accesos no autorizados**|constraint|RSG8. Intentos de accesos no autorizados<br>Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.<br>||
|**RSG9. Alteración de datos negocio**|constraint|RSG9. Alteración de datos almacenados en Base de Datos.<br>Se deberán asignar usuarios para la conexión de cada base de datos.<br>Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). <br>Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. <br>||
|**Riesgos Técnicos Migración Funcional SUI (078)**|constraint|Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br>||

## Riesgos.2. Modelo Riesgo RSG10
![Diagram: Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:Riesgos.2.ModeloRiesgoRSG10 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Impacto**|assessment|||
|**Agente de riesgo PGN**|business-actor|Arquitecto PGN||
|**Agente de riesgo Softgic**|business-actor|Arquitecto Softgic||
|**Desconocimiento arq. de referencia SUI**|business-event|||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**Evaluación  arquitectura de referencia SUI**|course-of-action|La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br>||
|**Definición tipos de datos módulos SUI**|requirement|||
|**Supervisor contrato 078-2023**|stakeholder|||


``Generated on: Fri Oct 27 2023 10:07:56 GMT-0500 (COT)``

# Documentao de Arquitectura del SIU Migración Funcional
* [Patrón de Diseño Línea Base SUI PGN](#patrón-de-diseño-línea-base-sui-pgn)
	* [Lineabase.0.SIU applicación](#lineabase.0.siu-applicación)
	* [Lineabase.1.SIU componente](#lineabase.1.siu-componente)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Linebase.2.Portal](#linebase.2.portal)
* [Patrón de Diseño Migración SUI PGN](#patrón-de-diseño-migración-sui-pgn)
	* [Migracion.1a.a.SIU Contexto Módulo](#migracion.1a.a.siu-contexto-módulo)
	* [Migracion.1b.1. SIU Módulos Componentes](#migracion.1b.1.-siu-módulos-componentes)
	* [Migracion.1c.SIU Modulos Colaboración](#migracion.1c.siu-modulos-colaboración)
	* [Migracion.1b.1. SIU Módulos Componentes](#migracion.1b.1.-siu-módulos-componentes)
	* [Migracion.1b.2. SIU Módulos Componentes. Brecha](#migracion.1b.2.-siu-módulos-componentes.-brecha)
	* [Migracion.1b.3. SIU Módulos Clases](#migracion.1b.3.-siu-módulos-clases)
	* [Migracion.2d2. Datos. Organización](#migracion.2d2.-datos.-organización)
	* [Migracion.2d3. Datos. Transporte (flujo SUI - SIM)](#migracion.2d3.-datos.-transporte-flujo-sui---sim)
	* [Migracion.2d4. Datos. Transporte (flujo SUI - SUI)](#migracion.2d4.-datos.-transporte-flujo-sui---sui)
	* [Migracion.6. Migración de datos](#migracion.6.-migración-de-datos)
* [Organización Cambios Arquitectura](#organización-cambios-arquitectura)
	* [Organización. 1n. Mapa producto](#organización.-1n.-mapa-producto)
	* [Organización. 1n.1.b. Mapa producto PGN. Relatoría](#organización.-1n.1.b.-mapa-producto-pgn.-relatoría)
	* [Organización. 2n.1a. Mapa producto PGN. Conciliacion](#organización.-2n.1a.-mapa-producto-pgn.-conciliacion)
	* [Organización. 4n.1. Mapa producto PGN. Estratego](#organización.-4n.1.-mapa-producto-pgn.-estratego)
	* [Organización. 3n.1. Mapa producto PGN. SIAF](#organización.-3n.1.-mapa-producto-pgn.-siaf)
* [Arquitectura de Seguridad, SUI Migración](#arquitectura-de-seguridad,-sui-migración)
	* [Seguridad.1. Requerimientos](#seguridad.1.-requerimientos)
	* [Seguridad. Linebase.2.Portal](#seguridad.-linebase.2.portal)
* [Análisis de Productos](#análisis-de-productos)
	* [Organización. 4n.1a. Mapa producto PGN. Comparativa](#organización.-4n.1a.-mapa-producto-pgn.-comparativa)
* [Riesgos Técnicos](#riesgos-técnicos)
	* [Riesgos.1. Migración funcional](#riesgos.1.-migración-funcional)
	* [Riesgos.2. Modelo Riesgo RSG10](#riesgos.2.-modelo-riesgo-rsg10)


<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Línea Base SUI PGN
## Lineabase.0.SIU applicación
![Diagram: Lineabase.0.SIU applicación](images/Lineabase.0.SIUapplicación.png){#fig:Lineabase.0.SIUapplicación width=}

Procuraduría General de la Nación, proyecto Migración SIU, 2023, Fase II. Línea base del sistema único de información (SUI en adelante) de la PGN. Presentación de componentes de software  originales implementados en la Fase I del presente proyecto.


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||

<br>

## Lineabase.1.SIU componente
![Diagram: Lineabase.1.SIU componente](images/Lineabase.1.SIUcomponente.png){#fig:Lineabase.1.SIUcomponente width=5.89in}

Distribución de los servicios y paquetes que integran la aplicación de SUI. 

Cuatro paquetes con tecnologías respectivas

1. Angular 11 (Web)
1. API Transaccional (Node Js)
1. API Config (C#)
1. Persistencia (SQL)

Asuntos de la Migración:

* Estrategia CMS central
* Motor de búsqueda
* Estatego como BI
* Conciliación y Doku
* Gestión de sesiones / caducidad



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>El api transaccional construida en Node js con ORM Sequelize cuenta con obligatoriedad de token tipo bearer generado desde Api config (Api security token generado con autenticación de directorio activo o login de usuario <br>externo) cuenta con un modelo de capas donde primero se encuentra un DTO consistente en estructura de datos y métodos de “check permissions” (un endpoint del api de seguridad para validar privilegios sobre las acciones de <br>la petición en ingreso) luego dependiendo del tipo de transacción se tiene una capa para Lappiz functions, Lappiz Jobs (Tareas programables) y Lappiz model (Generado con base ORM sequelize). Todas las transacciones una vez <br>son validadas en token y permisos, pasan a un tenedor de conexión para modificar las cadenas de conexión en marcha y saber que usuario de bd va a efectuar la operación y con qué privilegios. Todas las peticiones entran en <br>un modelo natural de node js compuesto por un Event queue y un evento Loop; estas peticiones se procesan en la base de datos y todas las excepciones controladas se registran en un log de errores en formato txt con las especificaciones y devolviendo errores controlados con protocolos HTTPs al Runtime (front de SUI).||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>El api transaccional construida en Node js con ORM Sequelize cuenta con obligatoriedad de token tipo bearer generado desde Api config (Api security token generado con autenticación de directorio activo o login de usuario <br>externo) cuenta con un modelo de capas donde primero se encuentra un DTO consistente en estructura de datos y métodos de “check permissions” (un endpoint del api de seguridad para validar privilegios sobre las acciones de <br>la petición en ingreso) luego dependiendo del tipo de transacción se tiene una capa para Lappiz functions, Lappiz Jobs (Tareas programables) y Lappiz model (Generado con base ORM sequelize). Todas las transacciones una vez <br>son validadas en token y permisos, pasan a un tenedor de conexión para modificar las cadenas de conexión en marcha y saber que usuario de bd va a efectuar la operación y con qué privilegios. Todas las peticiones entran en <br>un modelo natural de node js compuesto por un Event queue y un evento Loop; estas peticiones se procesan en la base de datos y todas las excepciones controladas se registran en un log de errores en formato txt con las especificaciones y devolviendo errores controlados con protocolos HTTPs al Runtime (front de SUI).||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||

<br>

## Linebase.2.Portal
![Diagram: Linebase.2.Portal](images/Linebase.2.Portal.png){#fig:Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Migración SUI PGN
## Migracion.1a.a.SIU Contexto Módulo
![Diagram: Migracion.1a.a.SIU Contexto Módulo](images/Migracion.1a.a.SIUContextoMódulo.png){#fig:Migracion.1a.a.SIUContextoMódulo width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales dell SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

Los submódulos identificados tienen los siguientes roles para el SUI migrado:

1. cc:Presentación
1. cc:Servicios de aplicación
1. cc:Portales y canales
1. cc:Administración y configuración
1. cc:Almacenamiento

### Requerimientos Asociados a los Submódulos
La disposición de los módulos y submódulos presentada, denominada SUI Migración en adelante, facilita la focalización de los requerimientos encontrados en el levantamiento realizado en el actual proyecto. Así, por ejemplo, los requerimientos funcionales se encuentran concentrados en el submódulo de presentación (ver imagen).


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**cc:Servicios de aplicación**|application-collaboration|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**Cliente PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1b.1. SIU Módulos Componentes
![Diagram: Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización intena de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologeias. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1c.SIU Modulos Colaboración
![Diagram: Migracion.1c.SIU Modulos Colaboración](images/Migracion.1c.SIUModulosColaboración.png){#fig:Migracion.1c.SIUModulosColaboración width=}

Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante API de comunicación (o buses de datos empresarial que ya disponga la PGN), sin perjuicio del patrón de comunicación estadar descrito en el diagrama.

Los únicos elementos para la comunicación (e integración) son los indicados en la vista actual. En este diseño no considera tipos de comunición mediante  mesajería, datos, ni 

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Almacenamiento**|application-collaboration|Espacio de almancenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||

<br>

## Migracion.1b.1. SIU Módulos Componentes
![Diagram: Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización intena de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologeias. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1b.2. SIU Módulos Componentes. Brecha
![Diagram: Migracion.1b.2. SIU Módulos Componentes. Brecha](images/Migracion.1b.2.SIUMódulosComponentes.Brecha.png){#fig:Migracion.1b.2.SIUMódulosComponentes.Brecha width=}

Los elementos resaltados indican las extensiones a la arqutecutra por concepto de Fase II del proyecto de migración SUI. 

Los componentes internos incorporados en la arquitectura tienen el propósito de implementar los casos de uso (CU) de cada módulo construído con esta organización (vista anterior). En la imagen los CU son expuestos por los servicios de aplicación, y estos a su vez, usan funciones de negocio (impulsadas por la plataforma de Lappiz). 

Todos los sistemas de información del SUI siguen esta directiva: estarán constituídos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en la diagrama. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>El api transaccional construida en Node js con ORM Sequelize cuenta con obligatoriedad de token tipo bearer generado desde Api config (Api security token generado con autenticación de directorio activo o login de usuario <br>externo) cuenta con un modelo de capas donde primero se encuentra un DTO consistente en estructura de datos y métodos de “check permissions” (un endpoint del api de seguridad para validar privilegios sobre las acciones de <br>la petición en ingreso) luego dependiendo del tipo de transacción se tiene una capa para Lappiz functions, Lappiz Jobs (Tareas programables) y Lappiz model (Generado con base ORM sequelize). Todas las transacciones una vez <br>son validadas en token y permisos, pasan a un tenedor de conexión para modificar las cadenas de conexión en marcha y saber que usuario de bd va a efectuar la operación y con qué privilegios. Todas las peticiones entran en <br>un modelo natural de node js compuesto por un Event queue y un evento Loop; estas peticiones se procesan en la base de datos y todas las excepciones controladas se registran en un log de errores en formato txt con las especificaciones y devolviendo errores controlados con protocolos HTTPs al Runtime (front de SUI).||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1b.3. SIU Módulos Clases
![Diagram: Migracion.1b.3. SIU Módulos Clases](images/Migracion.1b.3.SIUMódulosClases.png){#fig:Migracion.1b.3.SIUMódulosClases width=}

El modelo de negocio del SIU Migrado sigue el patrón de diseño descrito en esta vista.

El diseño actual antepone un servicio como punto de entrada a un caso de uso, de tal forma que este se encarga únicamente (por resposabilidad) de coordinar las entradas y las salidas del caso de uso.

El modelo propicia la separación de la lógica de aplicación y la lógica de negocio. En este diseño, la primera está encapsulada en el Caso de Uso ejecutable (en el diagrama), mientras que la lógica de negocio lo está en una función de negocio.

Los conceptos de negocio están representados por funciones PGN (en el diagrama). Ejemplo: en el dominio de una conciliación, Función PGN 1 puede representar una nueva radicación en cumplimiento de las reglas de ese dominio. Esta función de negocio es completamente independiente del modelo de datos subyacente. Nótese que las entidades de datos de negocio no son accesibles desde la función de negocio.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Función PGN 2**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo entrada**|application-component|||
|**Modelo salida**|application-component|||
|**Entrada**|application-function|||
|**Estado **|application-function|||
|**Función negocio**|application-function|||
|**Reglas negocio**|application-function|||
|**Resultado**|application-function|||
|**Retorno**|application-function|||
|**Validación  entrada**|application-function|||
|**Validación negocio**|application-function|||
|**Verificación / consistencia**|application-function|||
|**CU <<i>>**|application-interface|||
|**Persistencia <<i>>**|application-interface|||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Entidad negocio PGN 1**|business-object|Repreesnta un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||

<br>

## Migracion.2d2. Datos. Organización
![Diagram: Migracion.2d2. Datos. Organización](images/Migracion.2d2.Datos.Organización.png){#fig:Migracion.2d2.Datos.Organización width=5.32in}

Modelo de acceso y procesamiento a datos de negocio del SUI. La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitecura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP2.SIRI**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN: SIRI.<br>||
|**APP3.Control interno**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN: Control Interno.<br>||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP6.Estratego**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN: Estratego.<br>||
|**Interacción SUI - SIM**|application-interaction|Interacción de API SUI con API SIM para el transporte de entidades de negocio. Los tipos de datos que utilizan esta interacción entre aplicaciones son los datos externos al módulo central SUI que los requiera, los datos históricos que están por fuera del móduo SUI migrado, y los datos transaccionales de otros módulos SUI migrados.<br>||
|**Interfaz de Acceso Proveedores**|application-interface|Interfaz de acceso a los tipos de datos externos al SUI.<br>El patrón de API Externa (reverse proxie) tiene el rol de unir y referir a los datos externos e históricos al SIU Migrado de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Interfaz de Almacenaniento**|application-interface|Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del SUI.<br>||
|**Procesamiento de lotes PGN**|application-process|Los procesos de lotes, que requieren volumenes de datos altos, deben hacer parte de la arquitectura de datos del SUI.<br>||
|**API Externa (flujo de datos)**|application-service|El patrón de API Externa (reverse proxie) tiene el rol de unir y referir a los datos externos e históricos al SIU Migrado de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Datos externos**|data-object|||
|**Datos históricos**|data-object|||
|**Datos transaccionales SUI**|data-object|||
|**Datos transaccionales módulo SUI**|data-object|Registros de trabajo de un módulo SUI Migrado, 2023.<br>||

<br>

## Migracion.2d3. Datos. Transporte (flujo SUI - SIM)
![Diagram: Migracion.2d3. Datos. Transporte (flujo SUI - SIM)](images/Migracion.2d3.Datos.Transporte(flujoSUI-SIM).png){#fig:Migracion.2d3.Datos.Transporte(flujoSUI-SIM) width=5.32in}

Modelo de acceso a datos de negocio del SIM. 

La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitecura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**APP5.SIM**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN: SIM.<br>||
|**Interacción SUI - SIM**|application-interaction|Interacción de API SUI con API SIM para el transporte de entidades de negocio. Los tipos de datos que utilizan esta interacción entre aplicaciones son los datos externos al módulo central SUI que los requiera, los datos históricos que están por fuera del móduo SUI migrado, y los datos transaccionales de otros módulos SUI migrados.<br>||
|**Interfaz de Acceso Proveedores**|application-interface|Interfaz de acceso a los tipos de datos externos al SUI.<br>El patrón de API Externa (reverse proxie) tiene el rol de unir y referir a los datos externos e históricos al SIU Migrado de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Interfaz de Almacenaniento**|application-interface|Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del SUI.<br>||
|**Datos externos**|data-object|||
|**Datos históricos**|data-object|||
|**Datos transaccionales módulo SUI**|data-object|Registros de trabajo de un módulo SUI Migrado, 2023.<br>||

<br>

## Migracion.2d4. Datos. Transporte (flujo SUI - SUI)
![Diagram: Migracion.2d4. Datos. Transporte (flujo SUI - SUI)](images/Migracion.2d4.Datos.Transporte(flujoSUI-SUI).png){#fig:Migracion.2d4.Datos.Transporte(flujoSUI-SUI) width=5.32in}

Modelo de acceso y procesamiento a datos de negocio del SUI. La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitecura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**Interfaz de Acceso Proveedores**|application-interface|Interfaz de acceso a los tipos de datos externos al SUI.<br>El patrón de API Externa (reverse proxie) tiene el rol de unir y referir a los datos externos e históricos al SIU Migrado de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Interfaz de Acceso Proveedores 2**|application-interface|Interfaz de acceso a los tipos de datos externos al SUI.<br>El patrón de API Externa (reverse proxie) tiene el rol de unir y referir a los datos externos e históricos al SIU Migrado de tal manera que hace transparente la localización y el formato de este tipo de datos.<br>||
|**Interfaz de Almacenaniento**|application-interface|Interfaz de acceso a los repositorio, base de datos relacionales y no jerárquicas. Tipos de datos transaccionales, internos, del SUI.<br>||
|**Datos transaccionales SUI**|data-object|||
|**Datos transaccionales módulo SUI**|data-object|Registros de trabajo de un módulo SUI Migrado, 2023.<br>||

<br>

## Migracion.6. Migración de datos
![Diagram: Migracion.6. Migración de datos](images/Migracion.6.Migracióndedatos.png){#fig:Migracion.6.Migracióndedatos width=5.32in}

Modelo de acceso a datos de negocio del SIM. 

La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitecura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centrlalización de la comunicación con otros módulos del SUI migrado.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Grouping**|grouping|||
|**Grouping**|grouping|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App (copy)**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App (copy)**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App (copy)**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Organización Cambios Arquitectura
## Organización. 1n. Mapa producto
![Diagram: Organización. 1n. Mapa producto](images/Organización.1n.Mapaproducto.png){#fig:Organización.1n.Mapaproducto width=3.14in}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Tiempo**|gap|||
|**Características**|goal||*modulo:* <br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|

<br>

## Organización. 1n.1.b. Mapa producto PGN. Relatoría
![Diagram: Organización. 1n.1.b. Mapa producto PGN. Relatoría](images/Organización.1n.1.b.MapaproductoPGN.Relatoría.png){#fig:Organización.1n.1.b.MapaproductoPGN.Relatoría width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Administración de contenidos**|capability||*modulo:* relatoria<br>|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Componentes de usabilidad, no. 1**|capability||*modulo:* relatoria<br>|
|**Componentes de usabilidad, no. 2**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de búsqueda**|capability||*modulo:* relatoria<br>|
|**Funcionalidades de descripción de contenidos**|capability||*modulo:* relatoria<br>|
|**Integración API CMS**|capability||*modulo:* relatoria<br>|
|**Motor de búsqueda**|capability||*modulo:* relatoria<br>|
|**Proceso de organización de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de recolección de contenidos**|capability||*modulo:* relatoria<br>|
|**Proceso de sincronización automática de contenidos**|capability||*modulo:* relatoria<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Búsqueda**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Características**|goal||*modulo:* <br>|
|**Contenidos**|goal|Se tendran que adecuar los contenidos audivisuales de los sitios web, con subtitulos o CLosed Caption y la apropiacion de lenguajes de señas. |*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Descripción (metatada)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Indexación**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Recolección**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Sincronización (actualizcn)**|goal||*modulo:* relatoria<br>*caracteristica:* técnica, integración<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Usabilidad web**|goal||*modulo:* relatoria<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* relatoria<br>|
|**Búsqueda de contenidos. Relatoría v0.1**|value||*modulo:* relatoria<br>|
|**Despliegue Relatoría v1.2**|value||*modulo:* relatoria<br>|
|**Gestión contenidos. Rltría v1.0**|value||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Organización contenidos. Rltría v0.5**|value||*modulo:* relatoria<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 2**|work-package||*modulo:* relatoria<br>|
|**Iteración 3**|work-package||*modulo:* relatoria<br>|
|**Iteración 4**|work-package||*modulo:* relatoria<br>|
|**Iteración 5**|work-package||*modulo:* relatoria<br>|
|**Iteración 6**|work-package||*modulo:* relatoria<br>|
|**Iteración 7**|work-package||*modulo:* relatoria<br>|
|**rel.Iteración 1**|work-package||*modulo:* relatoria<br>|

<br>

## Organización. 2n.1a. Mapa producto PGN. Conciliacion
![Diagram: Organización. 2n.1a. Mapa producto PGN. Conciliacion](images/Organización.2n.1a.MapaproductoPGN.Conciliacion.png){#fig:Organización.2n.1a.MapaproductoPGN.Conciliacion width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Componente de  comunicación segura SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autenticación SIU**|capability||*modulo:* conciliacion<br>|
|**Componente de autorización SIU**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo  Preventico**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinar**|capability||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención**|capability||*modulo:* conciliacion<br>|
|**Integración API Dokus**|capability||*modulo:* conciliacion<br>|
|**Motor de flujo de trabajo**|capability||*modulo:* conciliacion<br>|
|**Panel de control flujos**|capability||*modulo:* conciliacion<br>|
|**Reporte flujos de trabajo**|capability||*modulo:* conciliacion<br>|
|**Épicas**|capability||*modulo:* <br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Autenticación**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Autorización**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Características**|goal||*modulo:* <br>|
|**Conciliación administrativa**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación civil**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación disciplinar**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación familia**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Conciliación preventivo**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Diseño de flujos de Conciliación**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión de instancias (flujos)**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Gestión documental**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Informes de gestión flujos**|goal||*modulo:* conciliacion<br>*caracteristica:* técnica, integración<br>|
|**Integridad**|goal||*modulo:* conciliacion<br>*caracteristica:* seguridad<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Adopción, v1.2**|value||*modulo:* conciliacion<br>|
|**Despliegue Conciliación v1.2**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Disciplinario. Conciliación v0.9**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Intervención. Conciliación v0.1 (copy)**|value||*modulo:* conciliacion<br>|
|**Flujo de trabajo Preventivo. Conciliación v0.7**|value||*modulo:* conciliacion<br>|
|**Gestión de flujos. Conciliación 1.0**|value||*modulo:* conciliacion<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* conciliacion<br>|
|**Iteración 2**|work-package||*modulo:* conciliacion<br>|
|**Iteración 3**|work-package||*modulo:* conciliacion<br>|
|**Iteración 4**|work-package||*modulo:* conciliacion<br>|
|**Iteración 5**|work-package||*modulo:* conciliacion<br>|
|**Iteración 6**|work-package||*modulo:* conciliacion<br>|
|**Iteración 7**|work-package||*modulo:* conciliacion<br>|

<br>

## Organización. 4n.1. Mapa producto PGN. Estratego
![Diagram: Organización. 4n.1. Mapa producto PGN. Estratego](images/Organización.4n.1.MapaproductoPGN.Estratego.png){#fig:Organización.4n.1.MapaproductoPGN.Estratego width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**Características**|goal||*modulo:* <br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|

<br>

## Organización. 3n.1. Mapa producto PGN. SIAF
![Diagram: Organización. 3n.1. Mapa producto PGN. SIAF](images/Organización.3n.1.MapaproductoPGN.SIAF.png){#fig:Organización.3n.1.MapaproductoPGN.SIAF width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* <br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Deliverable: (tiempo)**|deliverable||*modulo:* <br>|
|**Acciones de acuerdo al estado**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**CRUD Campos**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Características**|goal||*modulo:* <br>|
|**Creación de movimiento**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependiendo del tipo de movimiento**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Login (Doble factor)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Sincronización con Homminis**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Vista CRUD**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hoja ruta del producto**|grouping||*modulo:* relatoria<br>|
|**Hitos mercado**|value||*modulo:* <br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* <br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 1**|work-package||*modulo:* siaf<br>|
|**Iteración 9**|work-package||*modulo:* siaf<br>|

<br>

<div style="page-break-before: always;"></div>
\newpage

# Arquitectura de Seguridad, SUI Migración
## Seguridad.1. Requerimientos
![Diagram: Seguridad.1. Requerimientos](images/Seguridad.1.Requerimientos.png){#fig:Seguridad.1.Requerimientos width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio partigular de la PGN.<br>||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**interfaz**|application-interface|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQRSEG1**|requirement|1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. <br>||
|**RQRSEG10**|requirement|1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad.||
|**RQRSEG12**|requirement|1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones.<br>||
|**RQRSEG13**|requirement|1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización.||
|**RQRSEG15**|requirement|1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet).||
|**RQRSEG16**|requirement|1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad.||
|**RQRSEG17**|requirement|1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad.||
|**RQRSEG18**|requirement| "1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. "||
|**RQRSEG18**|requirement|1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información.,id-d1a6b80e7a6c4538b922f333f4d7ec7a,requirement<br>RQRSEG11,"1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio).||
|**RQRSEG19**|requirement|1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados.||
|**RQRSEG2**|requirement|1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución.||
|**RQRSEG21**|requirement|1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. """||
|**RQRSEG22**|requirement|1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta.||
|**RQRSEG24**|requirement|1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet||
|**RQRSEG25**|requirement| "1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad."||
|**RQRSEG26**|requirement| "1. Para los casos que aplique se debe permitir el manejo de certificados o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. "||
|**RQRSEG27**|requirement| "1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. "||
|**RQRSEG28**|requirement| "1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). "||
|**RQRSEG29**|requirement| "1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. "||
|**RQRSEG3**|requirement|1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas.||
|**RQRSEG4**|requirement|1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse.||
|**RQRSEG5**|requirement|1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción.||
|**RQRSEG6**|requirement|1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación).||
|**RQRSEG7**|requirement|1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos).||
|**RQRSEG8**|requirement|1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella.||
|**RQRSEG9**|requirement|1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad.||

<br>

## Seguridad. Linebase.2.Portal
![Diagram: Seguridad. Linebase.2.Portal](images/Seguridad.Linebase.2.Portal.png){#fig:Seguridad.Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la Procuraduría.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration Sharepoint**|application-collaboration|||
|**Directivas de Aplicaciones.**|application-component|Requiere Microsoft 365 E3 con el complemento de identidades, La restricciones de acceso a las cargas de trabajo de productividad es un elemento clave, en la que los recursos locales y en la nube se autentican y se autorizan. <br>La autenticación por medio del AD con agentes que permiten ampliar su funcionalidad.||
|**Directivas de acceso.**|application-component|El control de acceso se da a partir de la autenticacion del directorio activo, y la integración del Single Sign-On (SSO), con el inicio unico de sesión fluido en todas las aplicaciones. <br>Se tendrá en cuenta la implementación con multiples capas de autenticación, autenticacion multifactor MFA<br>||
|**Directivas de proteccion de aplicaciones.**|application-component|||
|**Directivas de riesgos de protección. ***|application-component|||
|**Requiere MFA ***|application-component|Se deberá incorporar el 2FA para los accesos a la informacion que reposa en el SharePoint, que permita a los usuarios iniciar sesión de forma segura a través del uso de sus dispositivos móviles. ||
|**Requiere inicio de sesión.**|application-component|Presenta el formulario de inicio de sesión al usuario final que enviará la solicitud por medio del método POST, que envia datos de información al servidor. para que el servidor los agregue a su base de datos. ||
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor web Sharepoint**|application-component|||
|**Application Interface**|application-interface|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Análisis de Productos
## Organización. 4n.1a. Mapa producto PGN. Comparativa
![Diagram: Organización. 4n.1a. Mapa producto PGN. Comparativa](images/Organización.4n.1a.MapaproductoPGN.Comparativa.png){#fig:Organización.4n.1a.MapaproductoPGN.Comparativa width=}

Mapa de productos. Comparativa funcional y técnica de módulos PGN, SIAF (izq.) y Estratego (derecha).

### Volumen Funcional
El análisis funcional de ambos módulos realizado durante el levantamiento (iteración 0) del presente proyecto arroja que SIAF tiene un 40% más de volumen que Estratego. Esto es, 16 funcionalidades de Estratego, mientras que SIAF suma 26. Ver imagen comparativa.

### Viabilidad de Alcance
Tomando en cuenta el criterio de calidad de la migración, objeto del presente contrato, 078-2023, de migrar módulos completos dentro de lo posible, y contrastando este criterio con el plazo del proyecto actual, que es de 4 meses, de los cuales ya se han ejecuta aproximadamente el 20% del mismo, es más viable la estrategia de migración de estratego sobre la de SIAF de la PGN por requerir menos iteraciones de desarrollo: seis (6) iteraciones, versus, nueve (9) de SIAF.

### Impacto / Beneficio a PGN
Los hitos de mercado del presente análisis producto, imagen arriba, dan cuenta  del beneficio e impacto de ambos proyectos de migración. Haciendo la comparación de los hitos de mercado de estos productos resalta que Estratego prima sobre SIAF en tanto que el peso cualitativo de las funciones estratégicas del primero son de mayor relevancia que las funciones operativos de inventario de SIAF. Basado en esto, Estratego reporta mayor beneficio y menos impacto en esfuerzo (por la razón anterior) que SIAF.

En conclusion, por los criterios de viabilidad y tamaño funcional y por el impacto estratégico, Estratego resulta en la migración a seleccionar sobre la del modulo SIAF. Esta estrategia satisface además la restricción de migrar moóulos completos sobre migración parcial.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas**|capability||*modulo:* estratego<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy)**|capability||*modulo:* siaf<br>|
|**Épicas (copy) (copy) (copy) (copy) (copy)**|capability||*modulo:* siaf<br>|
|**Acciones correctivas**|goal|Administrar los riesgos asociados a cada uno de los indicadores o planes.|*modulo:* estratego<br>|
|**Acciones de acuerdo al estado (copy)**|goal|Realización de acciones específicas según el estado de los movimientos devolutivos.|*modulo:* siaf<br>|
|**Almacén (copy)**|goal|Administración de almacenes.|*modulo:* siaf<br>|
|**Asientos (copy)**|goal|Registro de asientos.|*modulo:* siaf<br>|
|**Auditoria de mediciones**|goal|Gestionar las actividades de los usuarios, como el registro de indicadores, el tipo, etc.|*modulo:* estratego<br>|
|**Auditorias**|goal|Gestionar el control de logs de las actividades realizadas por el usuario en sesión.|*modulo:* estratego<br>|
|**CRUD Campos (copy)**|goal|Operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en campos de los asientos.|*modulo:* siaf<br>|
|**Creación de movimiento (copy)**|goal|Generación de movimientos de acuerdo con los asientos abiertos.|*modulo:* siaf<br>|
|**Cuenta de funcionario (copy)**|goal|Gestión de cuentas de funcionarios.|*modulo:* siaf<br>|
|**Cuenta en Microsoft (Autenticación) (copy)**|goal|Autenticación mediante cuentas de Microsoft.|*modulo:* siaf<br>|
|**Cálculo de total (copy)**|goal|Cálculo automático del total basado en la información de elementos.|*modulo:* siaf<br>|
|**Código (autoincremental) (copy)**|goal|Generación automática de códigos que se reinician cada año.|*modulo:* siaf<br>|
|**Dependencias**|goal|Reportar al sistema, actividades, proyectos, indicadores.|*modulo:* estratego<br>|
|**Dependiendo del tipo de movimiento (copy)**|goal|Gestión de movimientos según su tipo, incluyendo elementos como conceptos, beneficiarios y funcionarios (maestros).|*modulo:* siaf<br>|
|**Elementos**|goal|Registro de elementos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Estado (copy)**|goal|Seguimiento del estado de los asientos.|*modulo:* siaf<br>|
|**Fecha automática (copy)**|goal|Asignación automática de la fecha en los asientos.|*modulo:* siaf<br>|
|**Filtrar por campos (copy)**|goal|Capacidad para filtrar los movimientos devolutivos según campos específicos.|*modulo:* siaf<br>|
|**Funcionario Posesionado (copy)**|goal|Registro de información sobre funcionarios en posesión.|*modulo:* siaf<br>|
|**Funcionarios (Nómina) vs Funcionarios (Siaf) (copy)**|goal|Comparación y actualización de información de funcionarios almacenada en Siaf con la información de nómina.|*modulo:* siaf<br>|
|**Generar documento (copy)**|goal|Creación de documentos relacionados con los movimientos.|*modulo:* siaf<br>|
|**Generar reportes (copy)**|goal|Creación de informes y reportes para proporcionar la información solicitada.|*modulo:* siaf<br>|
|**Grupos (Roles)**|goal|Administrar los roles y permisos dentro del sistema|*modulo:* estratego<br>|
|**Gráficos**|goal|Generar y presentar gráficos|*modulo:* estratego<br>|
|**Históricos**|goal|Almacenar y consultar históricos dentro del sistema|*modulo:* estratego<br>|
|**Informes**|goal|Generar documentos con los informes correspondientes.|*modulo:* estratego<br>|
|**Instrumento de cooperación**|goal|Administrar los proyectos de los cooperantes.|*modulo:* estratego<br>|
|**Login (Doble factor) (copy)**|goal|Autenticación de usuario mediante doble factor de seguridad|*modulo:* siaf<br>|
|**Movimiento Consumible (copy)**|goal|Registro de movimientos relacionados con elementos consumibles.|*modulo:* siaf<br>|
|**Movimiento devolutivo (copy)**|goal|Registro de movimientos devolutivos.|*modulo:* siaf<br>|
|**Organizaciones**|goal|Estructura principal.|*modulo:* estratego<br>|
|**Planes administrar**|goal|Administrar el plan estratégico institucional.|*modulo:* estratego<br>|
|**Planes asociar**|goal|Asociar recursos, presupuesto.|*modulo:* estratego<br>|
|**Planes generar**|goal|Generar planes estratégicos institucionales y asociar los planes de acción preventivos.|*modulo:* estratego<br>|
|**Portafolio**|goal|Gestionar el portafolio de todos los proyectos de la entidad.|*modulo:* estratego<br>|
|**Reportes**|goal|Generar reportes y exportarlos en diferentes tipos de archivo.|*modulo:* estratego<br>|
|**Sincronización con Homminis (copy)**|goal|Sincronización de datos con el sistema Homminis.|*modulo:* siaf<br>|
|**Usuarios**|goal|Administrar los usuarios del sistema|*modulo:* estratego<br>|
|**Vista CRUD (copy)**|goal|Interfaz para crear, leer, actualizar y eliminar registros en el almacén.|*modulo:* siaf<br>|
|**Vista formulario personalizada (copy)**|goal|Personalización de formularios para la creación de asientos dependiendo del almacén.|*modulo:* siaf<br>|
|**Vista tipo formulario personalizada (copy)**|goal|Personalización de formularios para ingresar datos relacionados con los asientos.|*modulo:* siaf<br>|
|**Vista tipo lista personalizada (copy)**|goal|Visualización personalizada en forma de lista con filtros por campos específicos.|*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* estratego<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Hitos mercado**|value||*modulo:* siaf<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración**|work-package||*modulo:* estratego<br>|
|**Iteración 1**|work-package||*modulo:* estratego<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 1 (copy)**|work-package||*modulo:* siaf<br>|
|**Iteración 6**|work-package||*modulo:* estratego<br>|
|**Iteración 9 (copy)**|work-package||*modulo:* siaf<br>|

<br>

<div style="page-break-before: always;"></div>
\newpage

# Riesgos Técnicos
## Riesgos.1. Migración funcional
![Diagram: Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:Riesgos.1.Migraciónfuncional width=}

Riesgos de la migración funcional:

* RSG1. Estrategia CMS central
* RSG2. Motor de búsqueda
* RSG3. Estatego como BI
* RSG4. Conciliación y Doku
* RSG5. Gestión de sesiones / caducidad
* RSG6. Componentes de negocio
* RSG7. Asignación de roles y permisos de Acceso 
* RSG8. Intentos de accesos no autorizados
* RSG9. Alteración de datos negocio
* RSG10. Validación decisiones de arquitectura
* RSG11. Estrategias de Migración de datos
* RSG12. Arquitectura de almancenamiento y distribución de datos SIU
* RSG13. Sistema de autenticación híbrido

### Acciones de Mitigación

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del SCM central (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del motor de búsqueda compartido (sharepoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: diseño de solución de inteligencia de negocio (Power BI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: ubicar la lógica, los flujos, y los datos misionales dentro del SIU. La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: facilitar la administración de seguridad en un solo lugar (distinto de localizarla en las aplicaciones web). La PGN debe decidir si o no a la acción propuesta.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**RSG1. Estrategia CMS central**|constraint|Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br>||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**RSG11. Estrategias de Migración de datos**|constraint|Discutir el alcance y los recursos para la correcta migración de datos incluídas en contrato 078, Migración Funcional SIU en atención al numeral 5.6 del anexo técnico del proyecto.<br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br>||
|**RSG12. Arquitectura de almancenamiento y distribución de datos SIU**|constraint|Definir la opción de organización y distribución de los almacenes de datos del SIU. <br>opc1. Dispositivo físico/virtual (nodo, servidor, y esquema de base de datos) único, central, a todos los módulos del SIU.<br>opc2. Dispositivos virtuales autónomos por dominio de negocio: rlatoría, inventario, información estratégica, intercomunicados.<br>||
|**RSG13. Sistema de autenticación híbrido**|constraint|Definir la estrategia de autenticación del SIU migrado (aplicable a todos los módulos del SIU migrado).<br>opc1. Híbrida: integrado, directorio empresarial (LDAP), y servicios de autenticación de confianza: Office 365 de PGN.<br>opc2. Servicio de autenticación de confianza: Office 365 de PGN.<br>||
|**RSG2. Motor de búsqueda compartido**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG3. Estatego como BI**|constraint|Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br>||
|**RSG4. Conciliación y gestión documental (Doku)**|constraint|Definir la ubicación de los componentes misionales de Conciliación Administrativa (SIU). Debe estar fuera de Doku.<br>||
|**RSG5. Gestión de sesiones / caducidad**|constraint|Establecer desde el principio el motor de búsqueda de conteidos compartido para los módulos del SUI migrados.<br>||
|**RSG6. Componentes de negocio**|constraint|Incluir el esfuerzo de creación de componentes estrcturales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br>Algunos componentes requeridos son:<br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br>||
|**RSG7. Asignación de roles y permisos de Acceso **|constraint|RSG7. Asignación de roles y permisos de Acceso<br>Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. <br>Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.<br>||
|**RSG8. Intentos de accesos no autorizados**|constraint|RSG8. Intentos de accesos no autorizados<br>Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.<br>||
|**RSG9. Alteración de datos negocio**|constraint|RSG9. Alteración de datos almacenados en Base de Datos.<br>Se deberán asignar usuarios para la conexión de cada base de datos.<br>Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). <br>Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. <br>||
|**Riesgos Técnicos Migración Funcional SUI (078)**|constraint|Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br>||

<br>

## Riesgos.2. Modelo Riesgo RSG10
![Diagram: Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:Riesgos.2.ModeloRiesgoRSG10 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Impacto**|assessment|||
|**Agente de riesgo PGN**|business-actor|Arquitecto PGN||
|**Agente de riesgo Softgic**|business-actor|Arquitecto Softgic||
|**Desconocimiento arq. de referencia SUI**|business-event|||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**Evaluación  arquitectura de referencia SUI**|course-of-action|La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br>||
|**Definición tipos de datos módulos SUI**|requirement|||
|**Supervisor contrato 078-2023**|stakeholder|||

<br>


``Generated on: Tue Nov 07 2023 23:52:55 GMT-0500 (COT)``

# Vistas de Arquitectura Mi Mutual
* [Mi Mutual Central](#mi-mutual-central)
	* [MiMutual. 1. Contexto](#mimutual.-1.-contexto)
	* [MiMutual. 2. Contenedores](#mimutual.-2.-contenedores)
	* [MiMutual. 3. Dominios](#mimutual.-3.-dominios)
	* [MiMutual. 4. Aplicación](#mimutual.-4.-aplicación)
	* [MiMutual. 4a3. Dependencias](#mimutual.-4a3.-dependencias)
	* [MiMutual. 5. Físico (despliegue)](#mimutual.-5.-físico-despliegue)
	* [MiMutual. 6. Infraestructura](#mimutual.-6.-infraestructura)
	* [MiMutual. 7. Datos. Negocio](#mimutual.-7.-datos.-negocio)
	* [MiMutual. 7a. Datos. Aplicación](#mimutual.-7a.-datos.-aplicación)
	* [MiMutual. 7b. Datos. Relaciones](#mimutual.-7b.-datos.-relaciones)
* [Cotizador Web](#cotizador-web)
	* [Cotizador. 1. Contexto](#cotizador.-1.-contexto)
	* [Cotizador. 2. Contenedores](#cotizador.-2.-contenedores)
	* [Cotizador. 4. Aplicación](#cotizador.-4.-aplicación)
	* [Cotizador. 4a. Aplicación. Servicios](#cotizador.-4a.-aplicación.-servicios)
	* [Cotizador. 4a. Dependencias](#cotizador.-4a.-dependencias)
	* [Cotizador. 5. Físico (despliegue)](#cotizador.-5.-físico-despliegue)
	* [Cotizador. 7. Datos. Negocio](#cotizador.-7.-datos.-negocio)


<div style="page-break-before: always;"></div>
\newpage

# Mi Mutual Central
## MiMutual. 1. Contexto
![Diagram: MiMutual. 1. Contexto](images/MiMutual.1.Contexto.png){#fig:MiMutual.1.Contexto width=}

## Contexto Mi Mutual Central
El sistema principal de fondo Mi Mutual Central es la composición de las funciones de negocio de la Unidad de Solidaridad de Coomeva. Las funciones de negocio referidas, como Gestión Beneficiarios, Certificados, Gestión Beneficiarios, aparecen dentro del componente principal en la imagen.

Este entregable documenta los diferentes módulos y componentes que hacen parte de la estructura de una aplicación en Angular 12 y como es su interacción para conformar una arquitectura robusta y escalable para aplicaciones de gran tamaño.

Las librerías Spring Boot Security y Spring Boot Oauth2 proveen características de seguridad entre Vista (Angular 2) y Controlador. Estas son responsables de que únicamente permita el acceso si se está autenticado. Además, para realizar el proceso de autenticación se delega a la aplicación SISPRO (Coomeva) que funciona como un servidor de autenticación.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Administración facturación y recaudo**|application-function|Administración de la facturación y recaudo diario de los productos<br>||
|**Autorizaciones**|application-function|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones mediante el servicio del flujo de procesos||
|**Certificados**|application-function|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.<br>||
|**Configuración factores cálculos, contribuciones**|application-function|1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||
|**Gestión Beneficiarios**|application-function|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>||
|**Gestión Reclamaciones**|application-function|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br>||
|**Gestión Usuarios**|application-function|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>||
|**Gestión fondo mutual y auxilio funerario**|application-function|Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br>||
|**Interoperabilidad entre sistemas Coomeva**|application-function|Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br>||
|**Seguridad**|application-function|||
|**Simuladores**|application-function|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.<br>||
|**Autorizaciones**|application-service|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos.||
|**Certificados**|application-service|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.||
|**Facturación y Recaudo**|application-service|Administración de la facturación y recaudo diario de los productos||
|**Gestión de Beneficiarios**|application-service|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.||
|**Gestión de Reclamos**|application-service|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.||
|**Unidad de Solidaridad y Seguros**|business-function|Unidad de Solidaridad y Seguros de la Cooperativa||
|**Restricciones de Arquitectura**|constraint|## Restricciones de Arquitectura (Atributos)<br>1. Disponibilidad. Se requiere que el sistema esté disponible 7 X 24, el servicio prestado al cliente no se limita a horarios de oficina pues las compras pueden darse en cualquier momento<br>1. Escalabilidad. Se requiere que el sistema pueda llegar a atender hasta 1.000 clientes, para esto se requiere que el sistema se pueda extender horizontalmente de tal manera que pueda tener instalado en varios servidores para atender esta cantidad de usuarios. Todas las aplicaciones desarrolladas podrán ser escaladas horizontalmente para atender la demanda relacionada con el crecimiento de la empresa.<br>1. Reutilización. Se requiere que el sistema permita reutilizar sus componentes para prestar el mismo servicio a otras aplicaciones de la compañía. Para esto se va a desarrollar la aplicación utilizando servicios, separados y con asignación de responsabilidades, propias, de tal manera de que, si se requiere exponer servicios web sobre estas funcionalidades, no requiere cambios en la aplicación.<br>1. Autenticación. Autenticación es el proceso para determinar que alguien o un sistema es quien dice ser. Uso de estándar Oauth2 y JSON Web Token – JWT, para gestión de autenticación de servicios de la aplicación.<br>1. Autorización. Autorización se refiere a la validación que realiza un sistema para determinar si un usuario puede usar cierta funcionalidad. Uso de API de seguridad de Spring (spring-security) + Oauth2<br>1. Interoperabilidad – Movilidad. Interoperabilidad se refiere a la habilidad de un sistema de interactuar y comunicarse con sistemas heterogéneos a través de interfaces completamente definidas. Uso de estándar de web services REST + JSON.<br>1. Facilidad de Uso. Se refiere a la facilidad con que las personas pueden utilizar el sistema porque facilitan la lectura de los textos, descargan rápidamente la información y presentan funciones y menús sencillos, por lo que el usuario encuentra satisfechas sus consultas y cómodo su uso.<br>1. Verificación (QA). Es la capacidad del producto software que hace posible que el software modificado sea probado.<br>||
|**Características Funcionales**|requirement|## Características Funcionales Sistema Único de Información (SUI)<br>1. Gestión de productos del fondo mutual y auxilio funerario que involucran a sus coberturas<br>1. Administración de la facturación y recaudo diario de los productos<br>1. Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado.<br>1. Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación.<br>1. Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.<br>1. Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.<br>1. Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.<br>||

## MiMutual. 2. Contenedores
![Diagram: MiMutual. 2. Contenedores](images/MiMutual.2.Contenedores.png){#fig:MiMutual.2.Contenedores width=}

La organización de componentes utilizada Mi Mutual, impulsada por Spring Web, antepone como interfaz de uso un API REST. La interfaz se articula con tres componentes utilitarios: Controller, Service y Repository, los cuales están mediados por el componente misional, Mi Mutual, en la imagen. 

Esta decisión de organización de los componentes de Mi Mutual, incluyendo al misional del mismo nomnbre, permite estructurar la aplicación de una manera ordenada y, en línea con las restricciones de arquitectura exigidas al sistema, facilita la efectividad de las extensiones y el mantenimiento.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**Registro Servicios: eureka**|application-component|Eureka: Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.<br>|*modulo:* mimutual<br>|
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**Ruteador (proxy): gateway**|application-component|Gateway: Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|

## MiMutual. 3. Dominios
![Diagram: MiMutual. 3. Dominios](images/MiMutual.3.Dominios.png){#fig:MiMutual.3.Dominios width=}

La división por dominios busca facilitar la administración los servicios de la plataforma Mi Mutual que son comunes entre aplicaciones de Mi Mutual, tales como Asociados, Reclamaciones, Protecciones y otros servicios trasversales como Utilidades, Reglas de negocio, Procesos de negocio (BPM), Auditoria, Flujos de trabajo:flowable.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Flujo Trabajo: flowable**|application-component|Contiene todas las funcionalidades relacionadas con el motor de BPM Flowable, como gestión de tareas, instancias de nuevas procesos y asignación de tareas.|*modulo:* mimutual<br>|
|**Integración**|application-component|Contiene todas las funcionalidades relacionadas con integraciones a otros servicios y otras bases de datos.|*modulo:* mimutual<br>|
|**Procesos negocio**|application-component|Contiene todas las funcionalidades relacionadas con los flujos de JBPM, actualmente se hace solo para acceso a datos de la base de datos de JBPM.|*modulo:* mimutual<br>|
|**Reglas negocio**|application-component|Contiene todas las funcionalidades relacionadas con la validación de reglas usadas en otros microservicios.|*modulo:* mimutual<br>|
|**SISPRO**|application-component|Contiene todas las funcionalidades relacionadas con la autenticación y autorización al sistema Mi mutual (Este componente se adopta a la arquitectura de microservicios de MiMutual)|*modulo:* mimutual<br>|
|**Utilidades**|application-component|Contiene todas las funcionalidades útiles y trasversales a los microservicios, como envió de correos, generación de archivos Excel, PDF desde Jasper y consulta de parámetros.|*modulo:* mimutual<br>|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Auditoria**|application-component|Contiene todas las funcionalidades relacionadas con el almacenamiento de la auditoria de las peticiones de la aplicación.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>|

## MiMutual. 4. Aplicación
![Diagram: MiMutual. 4. Aplicación](images/MiMutual.4.Aplicación.png){#fig:MiMutual.4.Aplicación width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**Mi Mutual Presentación**|application-component|||
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**Simulador**|application-component|||
|**Vinculación**|application-component|||
|**app: Cotización y Ventas**|application-component|||
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Autorizaciones**|application-service|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos.||
|**Certificados**|application-service|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.||
|**Facturación y Recaudo**|application-service|Administración de la facturación y recaudo diario de los productos||
|**Gestión de Beneficiarios**|application-service|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.||
|**Gestión de Reclamos**|application-service|Gestión de Reclamaciones (Indemnización): Permite realizar la gestión, seguimiento y pago o negación de las diferentes reclamaciones de acuerdo a las coberturas y los productos que se encuentren dentro del portafolio del Asociado||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.||
|**SS02.acumulados - portafolio**|application-service|||
|**SS02.aportes - estatutarios**|application-service|||
|**SS02.distribuciones**|application-service|||
|**SS02.notas - aclaratorias**|application-service|||
|**SS02.porcentaje - cuota**|application-service|||
|**SS02.protecciones - mim - actuaria**|application-service|||
|**SS02.protecciones- desmemebracion - accidente**|application-service|||
|**SS02.proveedor**|application-service|||
|**SS02.proyeccion**|application-service|||
|**SS02.proyeccion**|application-service|||
|**SS02.proyecto - vida**|application-service|||
|**SS02.proyecto - vida**|application-service|||
|**SS02.relacion - planes**|application-service|||
|**SS02.relacion - planes**|application-service|||
|**SS02.reporte - cotizacion**|application-service|||
|**SS02.reporte - estado - cotizacion**|application-service|||
|**SS02.tipo - plan**|application-service|||
|**SS02.util - archivos**|application-service|||
|**SS02.util - municipios**|application-service|||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.||
|**Analistas**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Asesores**|business-role|Asesores integrales||
|**Auxiliares servicio**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Fidelización**|business-role|Ejecutivos de Fidelización||
|**Profundización**|business-role|Ejecutivos de Profundización||
|**Unidad de Solidaridad y Seguros**|grouping|La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

## MiMutual. 4a3. Dependencias
![Diagram: MiMutual. 4a3. Dependencias](images/MiMutual.4a3.Dependencias.png){#fig:MiMutual.4a3.Dependencias width=}

### Paquetes y Dependencias Mi Mutual
La estructura está basada en spring boot y lenguaje de programación JAVA 8, conformada por componentes de aplicación y administración del ciclo de vida de los objetos.

Nombrado de paquetes para los servicios

* MiMutualWeb
* MiMutualProtecciones
* MiMutualReclamaciones 
* MiMutualAsociados
* MiMutualUtilidades
* MiMutualBPM
* MiMutualReglas
* MiMutualIntegraciones
* MiMutualAuditoria
* Mi<utualFLowable
* MiMutualSpringCloud

<br>

### Entorno de Desarrollo
Para la etapa de desarrollo la aplicación estará configurada para levantar un servidor Tomcat embebido el cual se encuentra configurado el pom.xml y el cual permite trabajar de forma mucho más ágil.

Para el despliegue entre ambientes se manejará maven profiles con el fin de agregar las configuraciones de cada uno de estos.

El código fuente está alojado en un repositorio de Coomeva.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**pkg: Config**|application-component|config: Almacenan todas las clases para la configuración del proyecto Spring.||
|**pkg: Controller**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.||
|**pkg: DTO**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Model**|application-component|model: Almacenan todas las clases (entities) que constituyen el modelo de datos.<br>||
|**pkg: Reglas**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Repository**|application-component|repository: Almacenan todas las interfaces y clases que constituyen el acceso a<br>datos.<br>||
|**pkg: Security**|application-component|security: Almacenan todas las clases que permiten la configuración de seguridad de la aplicación.<br>||
|**pkg: Service**|application-component|service: Almacenan todas las interfaces que constituyen la lógica de negocio.||
|**pkg: Service Impl**|application-component|service.impl: Almacenan todas las clases que implementan la funcionalidad de las interfaces de service que constituyen la lógica de negocio.||
|**pkg: Spring Cloud**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||
|**pkg: Util**|application-component|util: Almacenan todas las clases de utilería para la aplicación.||
|**pkg: Web**|application-component|dto: Almacenan todas las clases (pojos) para manejo de datos.||

## MiMutual. 5. Físico (despliegue)
![Diagram: MiMutual. 5. Físico (despliegue)](images/MiMutual.5.Físico(despliegue).png){#fig:MiMutual.5.Físico(despliegue) width=}

Especificaciones de despliegue Mi Mutual, 2023, componente central.

* Estándares para el manejo de servicios REST sobre HTTP 1.1
* Tecnologías para el backend: Java 8 con Spring Boot2.1.4
* Acceso a Datos: Spring Data 2.1.4
* Seguridad de las API: Spring Security + Oauth2.0
* Plataforma de despliegue Backend: Tomcat Spring boot
* Tecnologías para el frontend: Angular 12
* Librería de Estilos: Bootstrap 4
* Servidor web (HTTP 1.1): Apache 2.X



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Eureka admin**|application-component|Contiene todas las funcionalidades relacionadas con registrar y localizar microservicios existentes, informar de su localización, su estado y datos relevantes de cada uno de ellos.|*modulo:* mimutual<br>|
|**app: Gateway**|application-component|Contiene todas las funcionalidades relacionadas con un proxy inverso que reenvía las llamadas relevantes a otros servicios.|*modulo:* mimutual<br>|
|**app: Identidades**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de los archivos de propiedades de los microservicios (Esta en construcción y no se ha integrado).|*modulo:* mimutual<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**app: Secuencias: zipkin**|application-component|Contiene todas las funcionalidades relacionadas con la generación de IDs para la trazabilidad de los logs.|*modulo:* mimutual<br>|
|**Directorio: eureka: tomcat**|system-software|||
|**Entorno Java: JRE 1.8**|system-software|||
|**Gateway: tomcat**|system-software|||
|**Identidad: spring cloud security**|system-software|||
|**Secuencias: zipking: tomcat**|system-software|||
|**Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

## MiMutual. 6. Infraestructura
![Diagram: MiMutual. 6. Infraestructura](images/MiMutual.6.Infraestructura.png){#fig:MiMutual.6.Infraestructura width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Spring cloud security**|node|Se implementará Spring Boot Security y Spring Boot Oauth2 las cuales proveen una capa básica de seguridad entre Vista (Angular 2) y Controlador, obligando a que únicamente permita el acceso si se está autenticado si lo requiere, además para realizar el proceso de autenticación se utilizara la aplicación SISPRO (Coomeva) la cual funciona como un servidor de autenticación.<br>La validación de roles se realizará a nivel de peticiones en el api rest según corresponda, siempre y cuando sea necesario, también se tendrán en cuenta otras validaciones como:<br>• Las credenciales que proporcionó no son válidas.<br>• El usuario esta deshabilitado.<br>• Las credenciales de usuario han caducado.<br>• La cuenta de usuario ha caducado.<br>• La cuenta de usuario está bloqueada.||
|**DB2 AS400: SIPASDB**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * Sql Server (...), * Oracle (...)||
|**Oracle DB: (...)**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...)||
|**SQL Server: (...)**|system-software|Las bases de datos a utilizar son: * DB2 AS400: SIPASDB, * SQL Server (...), * Oracle (...)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

## MiMutual. 7. Datos. Negocio
![Diagram: MiMutual. 7. Datos. Negocio](images/MiMutual.7.Datos.Negocio.png){#fig:MiMutual.7.Datos.Negocio width=}

### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Cotización**|business-object|||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Operaciones**|business-object|||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Plan (producto pólizas seguros)**|business-object|||
|**DAT00.Portafolios de asociados**|business-object|||
|**DAT00.Reclamaciones**|business-object|||
|**DAT00.Venta**|business-object|||
|**DAT00.Vinculación**|business-object|||

## MiMutual. 7a. Datos. Aplicación
![Diagram: MiMutual. 7a. Datos. Aplicación](images/MiMutual.7a.Datos.Aplicación.png){#fig:MiMutual.7a.Datos.Aplicación width=}

Estructuras de datos específicas a la plataforma. Modelo de negocio para las aplicaciones. 

Modelo físico facilitadas por Coomeva, corte del 2 de mayo de 2022. Contiene las estructuras de configuración de fondo, cliente, planes, cobertura y planes de coberturas.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT01.ADICIONAL PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.BENEFICIARIO ASISTENCIA**|data-object|||
|**DAT01.BENEFICIO PREEXISTENCIA**|data-object|||
|**DAT01.CAMPANA RELACION PLAN COBERTURA**|data-object|||
|**DAT01.CANAL**|data-object|||
|**DAT01.CANAL EVENTO**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION COBERTURA**|data-object|||
|**DAT01.CICLO FACTURACION CONFIG MOV**|data-object|||
|**DAT01.CLIENTE**|data-object|||
|**DAT01.COBERTURA**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO COBERTURA**|data-object|||
|**DAT01.COBERTURA BENEFICIARIO PAGO**|data-object|||
|**DAT01.CONDICION PAGO ANTIGUEDAD**|data-object|||
|**DAT01.CONDICION PAGO EVENTO**|data-object|||
|**DAT01.CONDICION PLAN**|data-object|||
|**DAT01.CONDICION VENTA**|data-object|||
|**DAT01.CONDICIONES**|data-object|||
|**DAT01.CONFIGURACION DIAGNOSTICOS**|data-object|||
|**DAT01.CONFIGURACION MOV DETALLE**|data-object|||
|**DAT01.CONFIGURACION MOVIMIENTO**|data-object|||
|**DAT01.CONTROL ARE TECNICA**|data-object|||
|**DAT01.CONTROL CUMULO**|data-object|||
|**DAT01.CUMULO**|data-object|||
|**DAT01.CUMULOS COBERTURA**|data-object|||
|**DAT01.CUMULOS PLAN COBERTURA**|data-object|||
|**DAT01.DEDUCIBLE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA**|data-object|||
|**DAT01.DOCUMENTO REQUISITO**|data-object|||
|**DAT01.DOCUMENTOS SOLICITUD EVENTO**|data-object|||
|**DAT01.ENFERMEDAD GRAVE**|data-object|||
|**DAT01.ENFERMEDAD GRAVE PLAN COBERTURA**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.EVENTO COBERTURA**|data-object|||
|**DAT01.EXCLUSION**|data-object|||
|**DAT01.EXCLUSION COBERTURA**|data-object|||
|**DAT01.EXCLUSION PLAN COBERTURA**|data-object|||
|**DAT01.EXCLUSION PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.FAC CONCEPTO PLAN**|data-object|||
|**DAT01.FONDO**|data-object|||
|**DAT01.FORMULA PLAN**|data-object|||
|**DAT01.GENERO REQUISITO**|data-object|||
|**DAT01.LIQUIDACION**|data-object|||
|**DAT01.LIQUIDACION DETALLE**|data-object|||
|**DAT01.NIVEL RIESGO COBERTURA**|data-object|||
|**DAT01.NIVEL RIESGO CONFIG MOV**|data-object|||
|**DAT01.NIVELES NOTAS PLAN COBERTURA**|data-object|||
|**DAT01.NOTA ACLARATORIA PLAN**|data-object|||
|**DAT01.NOTIFICACION EVENTO**|data-object|||
|**DAT01.ORIGEN COBERTURA COBERTURA**|data-object|||
|**DAT01.PERIODO CARENCIA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PLAN**|data-object|||
|**DAT01.PLAN CANAL VENTA**|data-object|||
|**DAT01.PLAN COBERTURA**|data-object|||
|**DAT01.PLAN COBERTURA DEPENDIENTE**|data-object|||
|**DAT01.PLAN COBERTURA EDAD**|data-object|||
|**DAT01.PLAN COBERTURA REQUISITO**|data-object|||
|**DAT01.PLAN FRECUENCIA FACTURACION**|data-object|||
|**DAT01.PLAN MEDIO FACTURACION**|data-object|||
|**DAT01.PLAN NIVEL RIESGO**|data-object|||
|**DAT01.PLAN OBLIGATORIO**|data-object|||
|**DAT01.PLAN PARENTESCO**|data-object|||
|**DAT01.PLAN PERSEVERANTE**|data-object|||
|**DAT01.PORCENTAJE CUOTA**|data-object|||
|**DAT01.PRODUCTO COBERTURA**|data-object|||
|**DAT01.PRODUCTO EXCLUYENTE**|data-object|||
|**DAT01.PROMOCION CANAL**|data-object|||
|**DAT01.PROMOCION CONDICION**|data-object|||
|**DAT01.PROMOCION PLAN COBERTURA**|data-object|||
|**DAT01.PROMOTOR CANAL**|data-object|||
|**DAT01.RECONOCIMIENTO POR PERMANENCIA**|data-object|||
|**DAT01.REGLAS EXCEPCIONES**|data-object|||
|**DAT01.REQUISITO CONTROL MEDICO**|data-object|||
|**DAT01.RESPONSABLE PERSONA**|data-object|||
|**DAT01.SOLICITUD EVENT**|data-object|||
|**DAT01.SOLICITUD EVENTO DETALLE**|data-object|||
|**DAT01.SUBLIMITE COBERTURA**|data-object|||
|**DAT01.SUBSISTENTE PLAN COBERTURA**|data-object|||
|**DAT01.SUBSISTENTE PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.TIPO MOVIMIENTO**|data-object|||
|**DAT01.TIPO PROCESO CUMULO**|data-object|||
|**DAT01.TRANSACCION EXCLUSION**|data-object|||
|**DAT01.TRANSACCION EXCLUSION COBERTURA**|data-object|||
|**DAT01.TRANSACCION REQUISITO **|data-object|||
|**DAT01.VALOR ASEGURADO**|data-object|||
|**DAT01.VALOR ASEGURADO PLAN COBERTURA**|data-object|||
|**DAT01.VALOR ASEGURADO TOPE**|data-object|||
|**DAT01.VALOR CUOTA PLAN COBERTURA**|data-object|||
|**DAT01.VALOR RESCATE**|data-object|||

## MiMutual. 7b. Datos. Relaciones
![Diagram: MiMutual. 7b. Datos. Relaciones](images/MiMutual.7b.Datos.Relaciones.png){#fig:MiMutual.7b.Datos.Relaciones width=}

### Entidades de Negocio Mi Mutual

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Facturación**|business-object|Factura la genera COOMEVA.<br>||
|**DAT00.Parametros globales (catálogos)**|business-object|||
|**DAT00.Plan (producto pólizas seguros)**|business-object|||
|**DAT00.Portafolios de asociados**|business-object|||
|**DAT01.ADICIONAL PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA**|data-object|||
|**DAT01.ASISTENCIA PLAN COBERTURA DETALLE**|data-object|||
|**DAT01.CAMPANA RELACION PLAN COBERTURA**|data-object|||
|**DAT01.CANAL**|data-object|||
|**DAT01.CANAL EVENTO**|data-object|||
|**DAT01.CANAL VENTA EXCLUSION**|data-object|||
|**DAT01.CUMULOS PLAN COBERTURA**|data-object|||
|**DAT01.DEDUCIBLE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE**|data-object|||
|**DAT01.DESMEMBRACION ACCIDENTE PLAN COBERTURA**|data-object|||
|**DAT01.DOCUMENTO REQUISITO**|data-object|||
|**DAT01.ENFERMEDAD GRAVE**|data-object|||
|**DAT01.ENFERMEDAD GRAVE PLAN COBERTURA**|data-object|||
|**DAT01.ESTADO ASOCIADO**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.SUBLIMITE COBERTURA**|data-object|||
|**DAT01.TIPO MOVIMIENTO**|data-object|||
|**DAT01.TIPO PROCESO CUMULO**|data-object|||

<div style="page-break-before: always;"></div>
\newpage

# Cotizador Web
## Cotizador. 1. Contexto
![Diagram: Cotizador. 1. Contexto](images/Cotizador.1.Contexto.png){#fig:Cotizador.1.Contexto width=}

### Contexto Mi Mutual Web
La aplicación Cotizador Web hace parte de los módulos de interfaz web de Mi Mutual Central, representado por API Mi Mutual en el diagrama. Realizar cotizaciones de los planes de protección luego de la vinculación del asociado.

La estructura por módulos permite realizar aplicaciones escalables y robustas ya que permite organizar las partes de la aplicación, la organización en bloques, extender la aplicación con funcionalidades de libreras externas, proporcionar un entorno de resolución de plantillas y además permite especificar la forma de la carga de cada uno de los componentes y servicios que conforman un módulo.

### Módulos Externos
Los módulos externos son todas y cada uno de las herramientas que se utilizan para complementar con funcionalidades ya desarrolladas y tomadas desde un repositorio externo (NPM).

* TranslateModule: Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core
* NgxMaskModule: Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask
* JwtModule: Manejo de token. Documentación: https://github.com/auth0/angular2-jwt
* sweetalert2: Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/
* ngx-ui-loader: Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader
* Ngprime: Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/
* chart.js: componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/
* classlist.js: componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/
* cronstrue: componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue
* file-saver: componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme
* ngx-tinymce: Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/
* quill: componente para editor html Documentación: https://quilljs.com/

<br>

### Servicios Transversales 

* AuthGuard: Validación de existencia de autenticación
* DeaciveGuard: Validación de salida de un componente
* ErrorInterceptor: Interceptor de Errores del back
* JwtInterceptor: Interceptor para inyectar el token
* AutenticationService: Métodos para completar la autenticación
* TypesService: Consumo de servicios de parametrización
* IdleTimeoutService: Verificación de timeout del token

<br>


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**Aplicativo**|application-function||*modulo:* cotizador<br>|
|**Compartido**|application-function||*modulo:* cotizador<br>|
|**Cotizador**|application-function||*modulo:* cotizador<br>|
|**Interfaz gráfica**|application-function||*modulo:* cotizador<br>|
|**Util**|application-function|En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br>|*modulo:* cotizador<br>|
|**admin Páginas**|application-function||*modulo:* cotizador<br>|
|**admin Servicios**|application-function||*modulo:* cotizador<br>|
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|
|**Autenticación: authgard**|application-service|||
|**Interceptor: errorinterceptor**|application-service|||
|**Parametrización: typeservice**|application-service|||
|**Sesión admin: idletimeout**|application-service|||

## Cotizador. 2. Contenedores
![Diagram: Cotizador. 2. Contenedores](images/Cotizador.2.Contenedores.png){#fig:Cotizador.2.Contenedores width=}

### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**Control**|application-function|||
|**Ruteos**|application-function|||
|**Servicios**|application-function|||
|**API Mi Mutual**|application-interface||*modulo:* mimutual<br>|
|**Cliente HTTP / HTTPS**|application-interface|||

## Cotizador. 4. Aplicación
![Diagram: Cotizador. 4. Aplicación](images/Cotizador.4.Aplicación.png){#fig:Cotizador.4.Aplicación width=}

La organización de la aplicación Cotizador Web Mi Mutual, como capa de presentación y servicios, plantea una estructura basada en la referencia de aplicaciones Angular 12. Las características de esta estructura (referida por Angular) está orientada al crecimiento (tamaño) de la aplicación, la escalabilidad y al rendimiento. La aplicación web Cotizador está diseñada (modulos) para manejar la carga por demanda del contenido.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador Mi Mutual**|application-component|Los componentes de este tipo se encargan de controlar los servicios rest de la aplicación, además en estos componentes se define la forma como se reciben y envían los datos de los servicios rest y la seguridad de cada uno de los métodos.|*modulo:* mimutual<br>|
|**MOD0.JwtModule**|application-component| Manejo de token. Documentación: https://github.com/auth0/angular2-jwt||
|**MOD0.Ngprime**|application-component| Manejo de componentes visuales Documentación: https://www.primefaces.org/primeng/#/||
|**MOD0.NgxMaskModule**|application-component| Manejo de máscaras de input text. Documentación: https://github.com/JsDaddy/ngx-mask||
|**MOD0.TranslateModule**|application-component| Manejo de internacionalización. Documentación: https://github.com/ngx-translate/core||
|**MOD0.chart.js**|application-component| Componente utilizado para el manejo de graficas Documentación: https://www.chartjs.org/docs/latest/||
|**MOD0.classlist.js**|application-component|Componete para el manejo de listas de datos en las gráficas Documentación: https://www.chartjs.org/docs/latest/||
|**MOD0.cronstrue**|application-component| Componente para traducir una expresión cron a palabras Documentación: https://github.com/bradymholt/cronstrue||
|**MOD0.file-saver**|application-component| Componente para descargar un archivo desde los bytes Documentación: https://github.com/eligrey/FileSaver.js#readme||
|**MOD0.ngx-tinymce**|application-component|Editor html para generación de plantillas para cartas Documentación: https://cipchk.github.io/ngx-tinymce/#/||
|**MOD0.ngx-ui-loader**|application-component|Manejo de Spinner para control de peticiones asíncronas. Documentación: https://github.com/t-ho/ngx-ui-loader||
|**MOD0.quill**|application-component|Ccomponente para editor html Documentación: https://quilljs.com/||
|**MOD0.sweetalert2**|application-component|Manejo de alertas de mensajes. Documentación: https://sweetalert2.github.io/||
|**Repositorio Mi Mutual**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.<br>Para el manejo de la persistencia de datos se utilizará Spring Data el cual se apoya en la especificación de JPA y en la implementación de HIBERNATE además de complementar esta capa de persistencia con nuevas funcionalidades que facilitan el acceso a datos.<br>|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Mi Mutual Central**|application-component|Antes SIPAS, Mi Mutual es una aplicación web compuesta por distintos módulos de software con arreglo a todas las actividades necesarias que soportan la operación de los productos y servicios que ofrece la Unidad de Solidaridad y Seguros de la Cooperativa.|*modulo:* mimutual<br>|
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Application Service**|application-service|Otros servicios del contexto de Mi Mutual Central.<br>||
|**Autorizaciones**|application-service|Autorizaciones: Administración de peticiones de autorización y sus correspondientes aprobaciones usando el servicio del flujo de procesos.||
|**Certificados**|application-service|Certificados: Permite la generación de los certificados de valores de protección y contribuciones pagadas, de retención en la fuente, de pagos de perseverancia y de cobertura de auxilio funerario.||
|**Configuración**|application-service|Configuración o parametrización de factores para realizar los cálculos de las contribuciones de los asociados a la Cooperativa para cada uno de los productos adquiridos.||
|**Facturación y Recaudo**|application-service|Administración de la facturación y recaudo diario de los productos||
|**Gestión de Beneficiarios**|application-service|Gestión de Beneficiarios: Permite administrar la información relacionada con los beneficiarios del Asociado, permitiendo ejecutar operaciones de consulta, inserción y modificación<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.||
|**Gestión de Usuarios**|application-service|Gestión de Usuarios: Administración de la información relacionada con los usuarios del sistema. Este componente se comunica con el servicio unificado de autenticación y autorización que devuelve los permisos que un usuario posee sobre las opciones que proporciona el sistema.||
|**SS02.reporte - cotizacion**|application-service|||
|**SS02.reporte - estado - cotizacion**|application-service|||
|**Simuladores**|application-service|Simuladores: Funcionalidades que permiten generar las simulaciones de los diferentes planes o modificaciones (incrementos y disminuciones) a los productos del Asociado.||
|**Analistas**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Asesores**|business-role|Asesores integrales||
|**Auxiliares servicio**|business-role|Analistas y auxiliares de servicio regional y nacional, agentes del centro de contacto, auditores médicos, analistas de operaciones (aseguramiento y facturación) y jefes.||
|**Módulos Externos**|grouping|||
|**Unidad de Solidaridad y Seguros**|grouping|La Unidad de Solidaridad y Seguros cuenta con un software integrado para su core de negocio denominado SIPAS (Sistema de Previsión, Asistencia y Solidaridad)||
|**Servicio de Almacenamiento de Datos**|technology-service|||
|**Servicio de Red**|technology-service|||
|**Servicio de archivos**|technology-service|||

## Cotizador. 4a. Aplicación. Servicios
![Diagram: Cotizador. 4a. Aplicación. Servicios](images/Cotizador.4a.Aplicación.Servicios.png){#fig:Cotizador.4a.Aplicación.Servicios width=}

Composición interna de los servivios de Mi Mutual Central, Mi Mutual Web, Cotizador Web. 


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Controlador**|application-component|Controlador interno del servicio. Punto de entrada a la lógica de expuesta.||
|**Interfaz**|application-component|Interfaz de inversión de dependencia a las clases del servicio.<br>||
|**Interfaz datos**|application-component|Acceso a datos del modelo del contexto de Mi Mutual Central.<br>||
|**Operación**|application-component|||
|**Servicio**|application-component|Exposición de componentes de negocio.<br>||
|**Interfaz transporte**|application-interface|Feign Client.<br>Integración con otros sistemas para facilitar los procesos de vinculación, retiro, reactivación o fallecimiento de asociados.||
|**Application Service**|application-service|Otros servicios del contexto de Mi Mutual Central.<br>||
|**Gestión de Productos**|application-service|Gestión de productos del fondo mutual y auxilio funerario que involucran lo relacionado a las siguientes coberturas: * Fondo de Solidaridad: Incapacidades temporales, Incapacidades Permanentes (total, parcial), Perseverancia 60, 62, 65, 70 años, Perseverancias Anticipadas, Fallecimiento Asociado (Auxilio por muerte), Desempleo, Disminución de ingresos y enfermedades graves; Rentas por hospitalización, Enfermedades de Alto Costo, Pólizas de seguros personales y patrimoniales, Planes educativos, Segunda opinión médica, Asistencias. * Auxilio Funerario: Fallecimiento de familiares directos (inscritos) del Asociado.||
|**Integración**|application-service|||

## Cotizador. 4a. Dependencias
![Diagram: Cotizador. 4a. Dependencias](images/Cotizador.4a.Dependencias.png){#fig:Cotizador.4a.Dependencias width=}

### Paquetes y Dependencias Cotizador Web
Módulos y componentes que hacen parte de la estructura de la aplicación Cotizador Web (basado en Angular 12 [^1]).

[^1]: Angular 2 tiene una arquitectura Modelo Vista Controlador (MVC) con el fin de hacer el desarrollo gestionado.

### Módulos Cotizador Web
La estructura por módulos actual apunta a la escalabilidad y mantenimiento del Cotizador en términos de: organizar las partes de la aplicación, organización los bloques, extender la aplicación con libreras externas, proporcionar un entorno de resolución de plantillas y además, distribuir las cargas de los componentes y servicios que usa la aplicación.


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**pkg: admin**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: administración**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: asociados**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: auth**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cliente**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: clientes**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: componentes**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: config**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotizaciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotización**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: directivas**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: home**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: interfaces**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: modelos**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: multiactiva**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: protecciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: proveedores**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reporte**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reportes**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: transporte**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: util**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: utilidades**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**Aplicativo**|application-function||*modulo:* cotizador<br>|
|**Compartido**|application-function||*modulo:* cotizador<br>|
|**Cotizador**|application-function||*modulo:* cotizador<br>|
|**Interfaz gráfica**|application-function||*modulo:* cotizador<br>|
|**Util**|application-function|En la Utilidades se especifican las clases que complementan una funcionalidad de un componente o servicio.<br>* FormValidate: Clase que implementa un disparador de validación de todos los campos de un formulario.<br>* CustomValidators: Creación de validaciones de campos.<br><br><br>|*modulo:* cotizador<br>|
|**admin Páginas**|application-function||*modulo:* cotizador<br>|
|**admin Servicios**|application-function||*modulo:* cotizador<br>|

## Cotizador. 5. Físico (despliegue)
![Diagram: Cotizador. 5. Físico (despliegue)](images/Cotizador.5.Físico(despliegue).png){#fig:Cotizador.5.Físico(despliegue) width=}

### Especificaciones de Despliegue Cotizador Web
Detalles de configuración del proyecto Mi Mutual en el espacio de trabajo local (2022).

#### Recursos Requeridos
* Git. Se debe instalar git para poder realizar la clonación de cada uno de los proyectos mas adelante.
* Instalación SmartGit. Se debe instalar Smartgit para poder realizar la clonación de cada uno de los proyectos mas adelante, este es opcional ya que es una interfaz gráfica de git mas amigable para el usuario en caso que no desee trabajar con la consola.
* DBeaver. Se debe instalar DBeaver para poder acceder a la base de datos. 
* Instalación Maven. Se debe instalar maven para poder compilar los proyectos, nos debemos asegurar de instalar la versión 3.6.3, en caso que no se encuentra en la página oficial copiar la carpeta que esta en el repositorio a archivo de programas. 
* Java 8. Se debe instalar Java para poder desplegar los proyectos mas adelante, nos debemos asegurar de instalar la versión 8. 
* STS. Se debe instalar el IDE para realizar modificaciones a los proyectos back mas adelante en este caso Spring Tools 4 for Eclipse. La carpeta que genera el instalador la copiamos a archivos de programa. 
* Instalación Lombok. Se debe instalar el lombok seleccionando el IDE que acabamos de instarlar en este caso el STS.
* Postman. Se debe instalar el postman para poder consumir los servicios del backend mas adelante cuando ya se hayan desplegado.
* Node Js. Se debe instalar Node Js para configurar el proyecto front mas adelante, nos debemos asegurar de instalar la versión v14.2.0.
* Visual Studio Code. Se debe instalar el IDE para realizar modificaciones al proyecto front mas adelante en este caso Visual Studio code. 
* Angular 14.

<br>


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**app: Asociados**|application-component|Contiene todas las funcionalidades relacionadas con consulta y creación de asociados y beneficiarios.|*modulo:* mimutual<br>|
|**app: Cotizador Web**|application-component|pkg: MiMutualWeb<br>|*modulo:* cotizador<br>|
|**app: Implementación de Servicios**|application-component|Los componentes de este tipo se encargan de controlar y almacenar toda la lógica del negocio, validaciones y todo lo referente a procesamiento de datos.<br>|*modulo:* mimutual<br>|
|**app: Protecciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión y configuración de productos y protecciones.|*modulo:* mimutual<br>|
|**app: Reclamaciones**|application-component|Contiene todas las funcionalidades relacionadas con la gestión de reclamaciones, liquidaciones y pagos.|*modulo:* mimutual<br>|
|**pkg: admin**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: administración**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: asociados**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: auth**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cliente**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: clientes**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: config**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotizaciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: cotización**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: home**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: modelos**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: multiactiva**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: protecciones**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: proveedores**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reporte**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: reportes**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**pkg: utilidades**|application-component|controller: Almacenan todas las clases que constituyen los servicios rest de la aplicación.|*modulo:* cotizador<br>|
|**Conexión: jdbc**|artifact||*modulo:* cotizador<br>|
|**Entorno Angular: ng 14.0.0**|system-software||*modulo:* cotizador<br>|
|**Entorno JS: node 14.2.0**|system-software||*modulo:* cotizador<br>|
|**Repositorio: db2 iSerie**|system-software||*modulo:* cotizador<br>|
|**Servicios: tomcat**|system-software||*modulo:* mimutual<br>|

## Cotizador. 7. Datos. Negocio
![Diagram: Cotizador. 7. Datos. Negocio](images/Cotizador.7.Datos.Negocio.png){#fig:Cotizador.7.Datos.Negocio width=}

### Entidades de Negocio Mi Mutual
Dominios de datos de negocio. Entidades independiente de la plataforma y de la tecnología.

* Configuración (caracterización de productos, plan)
* Plan (producto pólizas seguros)
* Canal (medios del tomador/asociado)
* Parametros globales (catálogos)
* Portafolio de asociado
* Asociado
* Facturación
* Beneficiario


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**DAT00.Asegurado**|business-object|||
|**DAT00.Asociado**|business-object|||
|**DAT00.Beneficiario**|business-object|||
|**DAT00.Canal (medios del tomador/asociado)**|business-object|||
|**DAT00.Configuración (caracterización)**|business-object|Caracterización de productos, planes, parámetros<br>||
|**DAT00.Cotización**|business-object|||
|**DAT00.Plan (producto pólizas seguros)**|business-object|||
|**DAT00.Vinculación**|business-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||
|**DAT01.PERSONA**|data-object|||


``Generated on: Fri Oct 27 2023 11:01:30 GMT-0500 (COT)``

## Requerimientos de Administración
1.	Las soluciones deben permitir la administración de los Roles de Usuarios: esta funcionalidad debe permitir configurar los diferentes roles de los usuarios funcionales de los procesos. 
2.	Administrar los Perfiles de acceso por rol: Esta funcionalidad permitirá configurar a que funcionalidades u opciones de la solución puede entrar un usuario con un rol específico. 
Administrar los Usuarios de la Solución: Esta funcionalidad debe permitir configurar, activar, desactivar usuarios de las soluciones desarrolladas.
4.	Para los casos que aplique se debe asociar el desarrollo con el mecanismo de Firmas (digital, electrónica o mecánica): Esta funcionalidad debe permitir configurar los usuarios que tienen permitida la aprobación de documentos desde la solución implementada, a través del tipo de firma que corresponda. 
5.	Administrar los Permisos de acceso: Esta funcionalidad permite definir específicamente a que servicios de la solución puede ingresar un usuario (CRUD). 
6.	En los desarrollos se debe contar con un módulo de auditoría que permita generar consultas para conocer quién y cuándo se ha realizado una actuación determinada dentro de procesos críticos, almacenando el código del usuario la actuación, la acción, la fecha, la hora, y la dirección IP de la máquina. 
7.	Las soluciones deben permitir la configuración de permisos de consulta con diferentes alcances para cada tipo de usuario. 
8.	Desde la interfaz de usuario se debe poder crear, modificar o inactivar usuarios, perfiles o roles, permisos a las diferentes funcionalidades de la solución. 
9.	Las soluciones deben permitir la definición de varios tipos de usuario. 
10.	Las soluciones deben permitir la parametrización de los consecutivos que maneja la entidad para los diferentes documentos generados por las soluciones. 
11.	Debe permitir parametrizar la vinculación del consecutivo a un documento en forma manual o automática. 
12.	Las soluciones deben permitir que se configure la autenticación de forma interna integrándose con LDAP el acceso de los usuarios y actores de las diferentes dependencias de la entidad que interactúen con los demás sistemas. 

<br>


## Requerimientos de Seguridad
1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. 
1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución. 
1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas. 
1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse. 
1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. 
1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación). 
1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos). 
1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella. 
1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad. 
1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones. 
1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. 
1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. 
1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet). 
1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad. 
1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad. 
1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. 
1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. 
1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta. 
1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. 
1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet”. 

<br>


# Anexos

## Modelo ER del SIU Migrado
Documento vista modelo físico de datos (modelo ER, entidad-relación) del Sistema Único de Información (SUI).




<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



