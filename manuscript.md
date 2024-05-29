---
keywords:
- SOA
- madurez
- gobierno
- PGN
lang: en-US
date-meta: '2024-05-29'
author-meta:
- Harry Wong, ing.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2024-05-29" />
  <meta name="citation_publication_date" content="2024-05-29" />
  <meta property="article:published_time" content="2024-05-29" />
  <meta name="dc.modified" content="2024-05-29T11:03:51+00:00" />
  <meta property="article:modified_time" content="2024-05-29T11:03:51+00:00" />
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
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/pgn-078/v/9b55dc5556518fab72ee4d0d82b0512479a63e1e/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/pgn-078/v/9b55dc5556518fab72ee4d0d82b0512479a63e1e/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/pgn-078/v/9b55dc5556518fab72ee4d0d82b0512479a63e1e/manuscript.pdf" />
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
title: Documento de Arquitectura Migración Funcional PGN SUI
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SUI
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

| **Versión** del producto 1.9b55dc5 de 29 May 2024

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 29 May 2024


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, Migración Funcional SUI, Contrato 078-2023, 
([Web](https://hwong23.github.io/pgn-078/v/9b55dc5556518fab72ee4d0d82b0512479a63e1e/))
están basados en el resultado de la Fase 1 del proyecto PGN SUI del 2022,
[SharePoint Softgic@9b55dc5](http://softgic.sharepoint.com)
del May 29, 2024.
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
Descripción de los productos del trabajo de arquitectura de la Fase 2, proyecto Migración Funcional SUI de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SUI      |
|----------------|----------------------------|
| Palabras clave | SUI, Softgic, PGN, Análisis de brecha, GAP, Comparativa |
| Autor          |                            |
| Fuente         |                            |
| **Versión**    |                            |
| 1.9b55dc5 | 2024-05-29. cfg |
| 1.8bf5d95 | 2024-05-28. Observaciones OCI (Control Interno y Arquitectura). 1 |
| 1.b195654 | 2023-12-26. upd |
| 1.be86e37 | 2023-12-18. docseg--dic |
| 1.eab1fd3 | 2023-12-14. doc--dic |
| 1.0001165 | 2023-12-05. upd.pptx |
| 1.a001bb6 | 2023-12-04. upd pptx |
| 1.9fe2cc2 | 2023-11-30. pptx--pgn |
| 1.d430b1d | 2023-11-30. ppt--tamaño-upd |
| 1.f0b7484 | 2023-11-30. ppt--tamaño |
| Vínculos       | [N003a Vista Segmento PGN SUI](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

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
1. Estándares. Los estándares seleccionados por la solución de este proyecto, (Fase 2, PGN Migración Funcional SUI, están determinados por el uso de las plataformas específicas determinadas por la implementación (desarrollo del software).
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

| Requisito      | Consistencia SUI |
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
	* [Lineabase.0.SIU Aplicación](#lineabase.0.siu-aplicación)
	* [Lineabase.1.SIU Componente](#lineabase.1.siu-componente)
	* [Lineabase.1a.SIU Componentes. Infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Linebase.2.Portal](#linebase.2.portal)
* [Patrón de Diseño Migración SUI PGN](#patrón-de-diseño-migración-sui-pgn)
	* [Migracion.1a.a.SIU Contexto Módulo](#migracion.1a.a.siu-contexto-módulo)
	* [Migracion.1b.1. SIU Módulos Componentes](#migracion.1b.1.-siu-módulos-componentes)
	* [Migracion.1c.SIU Módulos Colaboración Aplicaciones](#migracion.1c.siu-módulos-colaboración-aplicaciones)
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
* [Módulos Requerimientos de Seguridad](#módulos-requerimientos-de-seguridad)
	* [Seguridad.3. Autenticación](#seguridad.3.-autenticación)
	* [Seguridad.4. Autorización](#seguridad.4.-autorización)
	* [Seguridad.5.DesarrolloSeguro](#seguridad.5.desarrolloseguro)
	* [Seguridad. 6. Auditoría](#seguridad.-6.-auditoría)
	* [Seguridad. 7. Owasp](#seguridad.-7.-owasp)
* [Riesgos Técnicos](#riesgos-técnicos)
	* [Riesgos.1. Migración funcional](#riesgos.1.-migración-funcional)
	* [Riesgos.2. Modelo Riesgo RSG10](#riesgos.2.-modelo-riesgo-rsg10)


<div style="page-break-before: always;"></div>
\newpage

# Patrón de Diseño Línea Base SUI PGN
## Lineabase.0.SIU Aplicación
![Vista. Lineabase.0.SIU Aplicación](images/Lineabase.0.SIUAplicación.png){#fig:Lineabase.0.SIUAplicación width=}

Procuraduría General de la Nación, proyecto Migración SIU, 2023, Fase II. Línea base del sistema único de información (SUI en adelante) de la PGN. Presentación de componentes de software  originales implementados en la Fase I del presente proyecto.


## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||

<br>

## Lineabase.1.SIU Componente
![Vista. Lineabase.1.SIU Componente](images/Lineabase.1.SIUComponente.png){#fig:Lineabase.1.SIUComponente width=5.89in}

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
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
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
|**Vista web**|application-component||*plataforma:* html<br>|
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
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**PGN SIU**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Lineabase.1a.SIU Componentes. Infraestrcutura
![Vista. Lineabase.1a.SIU Componentes. Infraestrcutura](images/Lineabase.1a.SIUComponentes.Infraestrcutura.png){#fig:Lineabase.1a.SIUComponentes.Infraestrcutura width=}

Relación de dependencias de infraestructura con los servicios que integran el modelo de aplicación de SUI Migrado, 2023.

### Elementos de Infraestructura SUI Migrado

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
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
|**Vista web**|application-component||*plataforma:* html<br>|
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
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) Control de acceso**|node|Sistema de autenticación del directorio activo.||

<br>

## Linebase.2.Portal
![Vista. Linebase.2.Portal](images/Linebase.2.Portal.png){#fig:Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la PROCURADURIA.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Migracion.1a.a.SIU Contexto Módulo](images/Migracion.1a.a.SIUContextoMódulo.png){#fig:Migracion.1a.a.SIUContextoMódulo width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro del diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales del SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

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
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
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
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1b.1. SIU Módulos Componentes
![Vista. Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización interna de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en el diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologías. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

### Consideraciones de Seguridad Vista Web
-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 

Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 

4.	SERVICIOS IDENTIFICADOS:
Servidor web:  Microsoft-IIS/10.0 
Marco de Programación: ASP.NET
Huellas digitales identificadas:  
Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Configuración reportes**|application-component|Base de datos del servior de reportes del SIU Migrado provisto por plataforma Microsoft SQL Server.<br>||
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Diseñador reportes**|application-component|Apliación de escritorio / web para el diseño, creación y desarrollo de los reportes del SIU Migrado. Provisto por plataforma Microsoft Power Bi.||
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor de Reportes**|application-component|Componente SIU de publicación y distribución de reportes diseñados provisto por plataforma Microsoft SQL Server.||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
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
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Reportería**|application-service|Servicio de diseño, publicación y distribución de reportes del SIU Migrado.<br>|*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Representa un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Reportería**|grouping|||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1c.SIU Módulos Colaboración Aplicaciones
![Vista. Migracion.1c.SIU Módulos Colaboración Aplicaciones](images/Migracion.1c.SIUMódulosColaboraciónAplicaciones.png){#fig:Migracion.1c.SIUMódulosColaboraciónAplicaciones width=}

Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante API de comunicación (o buses de datos empresarial que ya disponga la PGN), sin perjuicio del patrón de comunicación estándar descrito en el diagrama.

Los únicos elementos para la comunicación (e integración) son los indicados en la vista actual. En este diseño no considera tipos de comunicación mediante  mensajería, datos, u otros no mencionados en la vista.

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Organización cambios arquitectura
## Organización. 1n. Mapa producto
![Vista. Organización. 1n. Mapa producto](images/Organización.1n.Mapaproducto.png){#fig:Organización.1n.Mapaproducto width=3.14in}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Organización. 1n.1.b. Mapa producto PGN. Relatoría](images/Organización.1n.1.b.MapaproductoPGN.Relatoría.png){#fig:Organización.1n.1.b.MapaproductoPGN.Relatoría width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Organización. 2n.1a. Mapa producto PGN. Conciliacion](images/Organización.2n.1a.MapaproductoPGN.Conciliacion.png){#fig:Organización.2n.1a.MapaproductoPGN.Conciliacion width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Organización. 4n.1. Mapa producto PGN. Estratego](images/Organización.4n.1.MapaproductoPGN.Estratego.png){#fig:Organización.4n.1.MapaproductoPGN.Estratego width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Organización. 3n.1. Mapa producto PGN. SIAF](images/Organización.3n.1.MapaproductoPGN.SIAF.png){#fig:Organización.3n.1.MapaproductoPGN.SIAF width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Seguridad.1. Requerimientos](images/Seguridad.1.Requerimientos.png){#fig:Seguridad.1.Requerimientos width=}

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
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
![Vista. Seguridad. Linebase.2.Portal](images/Seguridad.Linebase.2.Portal.png){#fig:Seguridad.Linebase.2.Portal width=}

El portal es el conjunto de los elementos físicos y lógicos necesarios para la implementación de la granja de servidores de SharePoint Server 2019 para el portal de la Procuraduría.

* Servidores Web Front End
* Servidores de Aplicaciones
* Servidores de SQL Server


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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
![Vista. Organización. 4n.1a. Mapa producto PGN. Comparativa](images/Organización.4n.1a.MapaproductoPGN.Comparativa.png){#fig:Organización.4n.1a.MapaproductoPGN.Comparativa width=}

Mapa de productos. Comparativa funcional y técnica de módulos PGN, SIAF (izq.) y Estratego (derecha).

### Volumen Funcional
El análisis funcional de ambos módulos realizado durante el levantamiento (iteración 0) del presente proyecto arroja que SIAF tiene un 40% más de volumen que Estratego. Esto es, 16 funcionalidades de Estratego, mientras que SIAF suma 26. Ver imagen comparativa.

### Viabilidad de Alcance
Tomando en cuenta el criterio de calidad de la migración, objeto del presente contrato, 078-2023, de migrar módulos completos dentro de lo posible, y contrastando este criterio con el plazo del proyecto actual, que es de 4 meses, de los cuales ya se han ejecuta aproximadamente el 20% del mismo, es más viable la estrategia de migración de estratego sobre la de SIAF de la PGN por requerir menos iteraciones de desarrollo: seis (6) iteraciones, versus, nueve (9) de SIAF.

### Impacto / Beneficio a PGN
Los hitos de mercado del presente análisis producto, imagen arriba, dan cuenta  del beneficio e impacto de ambos proyectos de migración. Haciendo la comparación de los hitos de mercado de estos productos resalta que Estratego prima sobre SIAF en tanto que el peso cualitativo de las funciones estratégicas del primero son de mayor relevancia que las funciones operativos de inventario de SIAF. Basado en esto, Estratego reporta mayor beneficio y menos impacto en esfuerzo (por la razón anterior) que SIAF.

En conclusion, por los criterios de viabilidad y tamaño funcional y por el impacto estratégico, Estratego resulta en la migración a seleccionar sobre la del modulo SIAF. Esta estrategia satisface además la restricción de migrar moóulos completos sobre migración parcial.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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

# Módulos Requerimientos de Seguridad
## Seguridad.3. Autenticación
![Vista. Seguridad.3. Autenticación](images/Seguridad.3.Autenticación.png){#fig:Seguridad.3.Autenticación width=}

Autenticación: 
La autenticacion de usuarios estará enmarcada en en tres factores de autenticación:
control de acceso basado en roles (RBAC), mecanismo de control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso.
Conexión de accecso por DA de Azure: Servicio de administración de acceso e identidades basado en la nube. 
Red Privada Virtual de Azure:  bloque de compilación fundamental para las redes privadas en Azure

Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones: 

Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. 
Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso. 

Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol). 

Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN. 

Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación.

Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales. 

Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismos de seguridad para evitar amenazas de ataques. 

La autenticación en el sistema de información comprende un Login de acceso contra Api config (Api Rest .Net Framework) y Active Directory. La misma API de configuración reconoce si el usuario es interno o externo (Es decir desde los usuarios el sistema conoce si debe hacer autenticación por directorio activo o en su defecto oAuth)

Administración de claves. 
Las contraseñas deberán cumplir con los requisitos de complejidad y completitud, teniendo en cuenta la longitud, caracteres numéricos, alfabéticos y especiales y que puedan ser cambiadas en un periodo de tiempo establecido, de acuerdo con los parámetros definidos en las políticas de acceso.   

La autenticacion de usuarios estará enmarcada en en tres factores de autenticación a partir del controlador de Dominio, y el acceso por VPN.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Active directory Server**|application-component|Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  <br>||
|**BD SQL Server**|application-component|Los datos estarán procesados y almacenados en las bases de datos, el cual tendrá implementados mecanismos de seguridad para el cifrado de los datos. ||
|**LDAP**|application-component|Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  ||
|**Logs**|application-component|Registro de actividades que permitirá mantener trazabilidad a partir de los registros de auditoría que contenga información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. ||
|**Validación de autenticación**|application-component|Autenticación: <br>Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán que realizar las diferentes validaciones para el acceso a las soluciones desarrolladas. <br>Características de contraseñas: <br>Las contraseñas deberán exigir características especiales como mínimo ocho (8) caracteres, números, símbolos, letras mayúsculas y minúsculas. La aplicación al estar integrada con el directorio activo deberá validar las características requeridas, estará en la capacidad de aceptar o rechazar la contraseña. <br>Bloqueo de contraseña: <br>El sistema incluirá controles de bloqueo de cuenta después de un máximo de cinco (5) intentos errados, con el fin de evitar ataques por fuerza bruta. Como la aplicación estará integrada con el directorio activo, este será encargado de definir los números de intentos permitidos antes de bloquear la contraseña de los usuarios.<br>Cierre de Sesión <br>Después de diez (10) minutos de inactividad el sistema deberá cerrar la sesión de trabajo.<br>||
|**Funcionarios Autenticación**|business-actor|Verificación que se realiza con la identidad del Servidor público, Contratista, Aprendiz y/o practicante de la entidad, proceso que se lleva a cabo cuando se ingresa al sistema, a la red o a cualquier base de datos.<br>Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación, que definirá la complejidad para la administración de contraseñas (Conjunto de caracteres variado con minúsculas, mayúsculas y números, entre otros). <br>Se deberá permitir para la gestion de usuarios, acciones como (creación, suministros de accesos, asignación de privilegios, revocatoria de accesos, etc), roles y perfiles, grupos de usuarios, asociacion de acciones para cada rol, y la administración exclusiva de los administradores del sistema de Información. ||
|**Servidor público, Contratistas, Practicantes y/o aprendices.**|business-actor|Persona natural que hacee parte la Procuraduría General de la Nación. ||
|**Consultar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán Consultar información sobre las diferentes soluciones.||
|**Modificar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán Consultar información sobre las diferentes soluciones.||
|**Procesar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán inactivar información sobre los diferentes sistemas de información.||
|**Registrar**|business-interaction|Permitirá definir los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán registrar información sobre las diferentes soluciones.||
|**Roles**|business-role|Se definirán los roles y perfiles para acceder a los diferentes módulos de las soluciones desarrolladas. ||

<br>

## Seguridad.4. Autorización
![Vista. Seguridad.4. Autorización](images/Seguridad.4.Autorización.png){#fig:Seguridad.4.Autorización width=}

Los mecanismos de autorización para el acceso a los sistemas de información de la procuraduría general de la nación describen la forma de cómo se restringe el acceso a los diferentes módulos (Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros.), y que se considera un mecanismo de protección, que ayuda a reaccionar ante cualquier operación no autorizada. 

El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  

Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  

EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. 

Para consumo de Api Tx (Api rest node js) se cuenta con peticiones por métodos POST, PATCH, PUT, DELETE, esta no admite transacciones GET y siempre es requerido un bearer token y un sequelize model para garantizar transacciones exitosas.

Gestión de identidades y Control de acceso:  

Gestor de identidades: 
En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  

Gestor de roles: 
La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. 
Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología.


Identificación de Mecanismos:

En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”.

Identificación de Roles y Privilegios:
Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”.

Aprovisionamiento de cuentas:

Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”.

Establecimiento de mecanismos de control de acceso: 

Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”.

Definición de Privilegios y accesos:

Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros. 
Configuración de permisos:

La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos. 


Control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso. 
La información que sea considerada como Información pública reservada de acuerdo con los criterios definidos en la ley 1712 de 2014 “Por medio del cual se crea la ley de transparencia y del derecho de acceso a la información pública nacional.” podrá ser consultada solo por el personal autorizado definido de acuerdo con el control de acceso basado en roles.  Los perfiles o roles definirán el acceso a la información. 

Para los documentos restringidos que requieran firma por parte del líder del proceso o propietario, se propone revisar la implementación de un dispositivo criptográfico con uso de (CERTIFICADOS y FIRMA DIGITAL) con token integrado que podrá ser conectado en el puerto USB de la máquina del usuario.
La aprobación de los documentos por intermedio de esta firma permitirá la aprobación, integridad de los documentos, seguridad y validez jurídica. Se propone la gestión con un proveedor de certificado del ámbito nacional.

El control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**Active Directory Server**|application-component|Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  <br>||
|**IGA (Gobernanza y administración de identidades)**|application-component|||
|**Gestión de funcionarios PGN**|business-actor|||
|**Oficial de Seguridad**|business-actor|||
|**Security Administrator**|business-actor|La autenticacion de usuarios estará enmarcada en en tres factores de autenticación:<br>control de acceso basado en roles (RBAC), mecanismo de control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso.<br>Conexión de accecso por DA de Azure: Servicio de administración de acceso e identidades basado en la nube.<br>Red Privada Virtual de Azure:  bloque de compilación fundamental para las redes privadas en Azure||
|**Servidor público, Contratistas, Practicantes y/o aprendices.**|business-actor|Persona natural que hacee parte la Procuraduría General de la Nación. ||

<br>

## Seguridad.5.DesarrolloSeguro
![Vista. Seguridad.5.DesarrolloSeguro](images/Seguridad.5.DesarrolloSeguro.png){#fig:Seguridad.5.DesarrolloSeguro width=}

METODOLOGÍA DE DESARROLLO.

La metodología de desarrollo seguro implementa las formas del desarrollo en cada una de las fases que se han requerido para los desarrollos de módulos misionales (SIM), Registro de Inhabilidades (SIRI), módulos de control interno, relatoría, entre otros, definido a partir de la metodología S-SDLC (Secure Software Development Life Cycle), que define los requisitos de seguridad a lo largo de las distintas fases de construcción del software: análisis de requerimientos, diseño y arquitectura del sistema, desarrollo del Sistema, Fase de pruebas y despliegue en productivo.

Migración de datos: Se presentarán los mecanismos adecuados para realizar la migración de la información que se encuentran en los sistemas de información desarrollados.
Principios de seguridad. 
El siguiente contenido relaciona los lineamientos de seguridad definidos en The Owasp Foundation (Open Web Application Security Project) que deberían cumplirse para el desarrollo de las diferentes soluciones de software. 

Principio de menor privilegio: La asignación de los permisos estará validados de tal forma que los Servidores Públicos, Contratistas, Practicantes y/o aprendices que interactúen con las diferentes soluciones dispongan mínimos privilegios necesarios para efectuar las actividades. 

Defensa en profundidad: Es importante identificar diferentes factores de riesgos que permita encontrar fallas en las soluciones, Este análisis podrá ser obtenido como resultado de las pruebas de seguridad, y como resultado las remediaciones que se deben implementar para ejecutar los planes de acción y lograr reducir las vulnerabilidades.

Segregación de permisos: Tener en cuenta que los permisos de acceso solo deben estar asignado a los responsables de los desarrollos con acceso con acceso a los diferentes ambientes. 

Seguridad en la ofuscación de datos.  Como se ha venido planteando, los mecanismos para el ofuscamiento de los datos, a partir de los diferentes mecanismos de cifrados, como el TLS, SSL y HTTPS. 

Solucionar de manera correcta los problemas de seguridad: La identificación de un problema de seguridad, y la solución deberá plantearse a partir de pruebas que permitan verificar que la falla de seguridad ha sido solucionada. Estos resultados serán dados con los reportes de la prueba realizadas sobre las soluciones a través de la metodología del OWASP (Open Web Application Security Project). 

Codificación: 
Se mencionan los principales controles que se deben tener en cuenta para la realización de la codificación del software: 
* Capa de datos. 
* Gestión de Logs. 
* Controles de acceso. 
* Codificación de caracteres. 

LINEAMIENTOS.
Tipo de sistema: 

Los sistemas de información debe ser aplicaciones web, compatible con los navegadores que encabecen el mercado, actualmente: Chrome, Internet Explorer, Mozilla Firefox, o cualquier otro navegador. Deberá ser compatible con dispositivos móviles, por lo que el diseño deberá ser responsive
Accesibilidad

Los sistemas web desarrollados deberán dar cumplimiento a los estándares de accesibilidad y usabilidad definidos por el Ministerio de las tecnologías de la Información y las comunicaciones MINTIC.

REPOSITORIO
El repositorio del código fuente se encuentra en Azure DevOps, y para ser accedido deberá ser con la cuenta de correo corporativo.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Análisis de requerimientos**|application-component|Se identifican los requerimientos funcionales y no funcionales que sirven como instrumento para el desarrollo de las soluciones. <br>La etapa de análisis terminará con el entendimiento de los requerimientos y la priorización de estos.  <br>La identificación de los nuevos requerimientos que surjan por parte del cliente, serán revisado y validados para su posterior aprobación.  ||
|**Desarrollo del Sistema.**|application-component|La presente fase del ciclo de vida, se da a partir de la construcción, adaptación e integración de la solución. El equipo de desarrollo implementará la solución, incorporando metodología ágil, con la planeación, ejecución de Sprint, con retroalimentación y retrospectivas cíclicas o iterativas hasta que finalice el desarrollo de la solución, se tendrá en cuenta el desarrollo de los códigos fuentes documentados y probados, bases de datos de las soluciones y la documentación técnica.||
|**Despliegue en productivo.**|application-component|Se despliega en producción para iniciar el consumo por parte de los servidores públicos, contratistas, aprendices y/o practicantes de la Procuraduría General de la Nación. <br>Se realizará el acompañamiento para el despliegue para garantizar el correcto funcionamiento de las soluciones desarrolladas, y las actividades de conocimientos con sus manuales establecidos.||
|**Diseño y arquitectura del Sistema.**|application-component|El detalle de los componentes se generará a partir de la definición de la arquitectura de software que definirá los patrones y lineamientos para la construcción de las soluciones, que estarán definidos en el documento de arquitectura de Software y planteará la arquitectura de i) Software, ii) datos, iii) infraestructura y iv) modelo de Seguridad. ||
|**Fase de Pruebas.**|application-component|El desarrollo de la presente fase permitirá crear el ambiente adecuado para la ejecución de las pruebas, que permitirá registrar los resultados de las pruebas realizadas.  <br>Se realizan pruebas integrales y/o funcionales con el fin de determinar la correcta operación de las soluciones o si es necesario efectuar cambios sobre alguna inconsistencia presentada por algún error o problemas de ejecución en el sistema desarrollado.  <br>Pruebas de Sistemas: Se tendrán en cuenta la realización de pruebas que permitan validar el correcto funcionamiento de cada módulo de las soluciones, con el fin de verificar que cada módulo funciones de forma correcta. (rendimiento, concurrencia, Pruebas de carga y estrés). <br>Pruebas de funcionalidad: Se realizarán las pruebas de herramientas para garantizar que las soluciones cumplen con los objetivos definidos y especificados, teniendo en consideración los diferentes escenarios de integración con otros aplicativos propios de la procuraduría general de la Nación.  <br>Pruebas de vulnerabilidad: Se realizarán las pruebas de seguridad y generación de informe que permitirá identificar las posibles vulnerabilidades del desarrollo de las soluciones propuestas.  ||
|**Levantamiento y analisis de requerimientos**|application-component|||
|**Pruebas de seguridad (Open Web Application Securityu Project)**|business-process|||
|**Metodología de desarrollo Seguro.**|grouping|||

<br>

## Seguridad. 6. Auditoría
![Vista. Seguridad. 6. Auditoría](images/Seguridad.6.Auditoría.png){#fig:Seguridad.6.Auditoría width=}

El histórico de transacciones queda registrado en cada tabla donde se guarda la información y una especial llamada HistoryLogs para el tema de auditoría. Ver la siguiente estructura que presenta el log dando cumplimiento al requerimiento de seguridad frente al registro de eventos:



Esto permite tener registro de la tabla afectada, los datos afectados, el registro afectado, el tipo de evento asociado a la transacción, la fecha de la transacción, la dirección IP del origen y el usuario quién realizó la misma.
Del mismo modo, cada entidad dentro del sistema cuenta con los atributos relacionados en el json como complemente a la trazabilidad de la información

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**BD SQL Server**|application-component|Los datos estarán procesados y almacenados en las bases de datos, el cual tendra implementados mecanismos de seguridad para el cifrado de los datos. <br>Para el respaldo de las bases de datos en los ecosistemas de Dev, Test, Prod se cuenta con las siguientes políticas de retención de copias de seguridad y frecuencia de copias de seguridad definidas en el gestor de bases de datos. <br>Para la base de datos de seguridad y configuración de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de 12 semanas <br>para las copias de seguridad semanales, 12 semanas de conservación para la primera copia de seguridad de cada mes, y una conservación de 12 semanas de una copia de seguridad anual.<br>Para la base de datos de datos y trazabilidad de transacciones de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de <br>52 semanas para copias de seguridad semanales, 52 semanas de conservación para la primera copia de seguridad de cada mes, y una conservación de 52 semanas de una copia de seguridad anual. Esto con la finalidad de que al <br>ser una base de datos transaccional precisa de una conservación completa de los años transaccionales. <br>||
|**Logs de Auditoría.**|application-component|El histórico de transacciones queda registrado en cada tabla donde se guarda la información y una especial llamada HistoryLogs para el tema de auditoría. En los documentos definidos del proyecto se observa la estructura que presenta el log dando cumplimiento al requerimiento de seguridad frente al registro de eventos. <br>Esto permite tener registro de la tabla afectada, los datos afectados, el registro afectado, el tipo de evento asociado a la transacción, la fecha de la transacción, la dirección IP del origen y el usuario quién realizó la misma.<br>Del mismo modo, cada entidad dentro del sistema cuenta con los atributos relacionados en el json como complemente a la trazabilidad de la información.<br>Se tendrán registros de los ingresos al sistema la aplicación y las actividades realizados por los usuarios.<br>||
|**Servidores Públicos, Contratistas, Practucantes, y/o Aprendices.**|business-actor|||
|**Consultar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran Consultar informacion sobre las diferentes soluciones. ||
|**Modificar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que tendrán acceso a modificar/ Actualizar informacion sobre las diferentes soluciones. ||
|**Procesar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran inactivar información sobre los diferentes sistemas de información. ||
|**Registrar**|business-interaction|Permitirá definir los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran registrar informacion sobre las diferentes soluciones. ||
|**Roles**|business-role|||

<br>

## Seguridad. 7. Owasp
![Vista. Seguridad. 7. Owasp](images/Seguridad.7.Owasp.png){#fig:Seguridad.7.Owasp width=}

Durante todo el proceso se realizarán pruebas de análisis de vulnerabilidades que pueda tener el sistema. Se establecerán puntos donde el software esté preparado para dicho análisis. En conjunto con el líder de Seguridad, se analizarán las posibles vulnerabilidades y se revisarán cuáles pueden ser mitigadas y cuáles pueden ser omitidas. 
Para el paso a producción, se realizará un último análisis de vulnerabilidades y se tendrá en cuenta la revisión de las acciones de mitigación, con el fin que se hayan resuelto. 

La empresa establecerá buenas prácticas para el desarrollo seguro de software, a partir de la implementación del estándar internacional OWASP (Open Web Application Security Project). El propósito principal será garantizar la seguridad de las soluciones de la Procuraduría General de la Nación PGN.  Se tiene en cuenta lineamientos técnicos de acuerdo con las normas establecidas en top ten (10) del OWASP: 

Código de Inyección SQL:
Vulnerabilidad que se puede presentar por intermedio de peticiones o consultas a las bases de datos, y las entradas de la aplicación no son controladas debidamente. 

Controles: 
- Descarte de caracteres especiales, espacios que innecesarios del lado del cliente y/o servidor. 
- Verificación de caracteres incluidos en consultas SQL o LDAP, para el lado cliente como servidor. 
- Limitación cantidad de caracteres del campo creado. 
- Verificación del resultado de consulta, que genere resultado de consulta o ningún resultado (Si es mostrado más de un resultado, deberá ser considerado error). 
- Numero de intentos fallidos por ingreso de contraseñas. 

Falla en las autenticación y Administración de Sesión: 
Presentada debido a las fallas en la administración de las funciones de autenticación o sesión. (Como exposición de usuarios, contraseñas e identificador único).

Controles:
- Descarte por caracteres especiales. Espacios innecesarios como para el lado del servidor y cliente.
- Verificación de meta caracteres SQL o LDAP, para el lado del servidor y cliente.
- Validar el uso del método POST, si se envían datos de servidores públicos y/o contratistas.
- No permitir el almacenamiento de datos de los funcionarios en las cookies. 
- Limitación de los tiempos en las sesiones. 

Técnicas de Cross Site Scripting XSS:
Vulnebilidad presentada cuando los datos de entrada son utilizados para desarrollar el contenido del sistema de información, sin validar la información que se envía por la URL.

Controles: 
- Revisar la incorporación de caracteres especiales, espacios que no sean necesarios dentro del campo de texto, así como para el lado del cliente y el servidor. 

Referencias directas a objetos de forma insegura:
Presentada cuando se referencia a un objeto interno, tal como directorio, archivo, algún registro de la base de datos BD en la URL, y no establecen los respectivos controles para el acceso a los recursos. 

Controles:
- Evitar el uso de campo de referencia, podrá ser modificado con facilidad. 
- Verificación de objeto válido en el envío de datos. 
- Identificar los tipos de datos y objetos a enviar y los métodos de uso para cada uno de estos. 

Cross site Request Forgery (CSFR):
Presentado en aplicaciones donde las peticiones son fáciles de predecir a partir del uso de comandos que son transmitidos por un usuario desconocido. 

Controles: 
- Evitar variables en las URL, si es posible utilizarlas, se deberá comprobar la información que contiene. 
- Tener en cuenta el envío de información que se envía por las URL. 
- Tener en cuenta el uso de token como herramienta de validación. 
- Validación de sesiones. 

Pobre Mala Configuración de Seguridad:
Puedo presentarse cuando se dejan las cuentas de accesos por defecto, archivos y directorios si establecer controles de seguridad, generando puertas traseras que pueden ser aprovechadas por los ciberdelincuentes para vulnerar el sistema de información. 
Controles:
- Asignar nuevas configuraciones a las definidas de fábrica. 
- El personal de infraestructura deberá tener en cuenta los requerimientos de la aplicación para establecer las configuraciones adecuadas. 
- Se debe tener en cuenta la habilitación de los servicios estrictamente necesarios. 

Almacenamiento inseguro de Criptografía:
Se presenta por debilidades en el proceso de implementación de controles criptográficos, algoritmos de cifrado y almacenamiento inseguro de llaves. 

Controles: 
- Algoritmos de cifrado (AES, SHA-256). 
- Para el uso de controles asimétricos, tener en cuenta la custodia de las llaves privadas. 
- Seguridad en la capa de transporte TLS y certificados SSL. 
- Cifrado de datos sensibles. 

Falla al restringir acceso por URL: 
Se presenta cuando se generan solicitudes a las páginas y no se encuentran protegidas adecuadamente. Son modificadas las URL para obtener el acceso con privilegios. 

Controles: 
- La cuenta de algún servidor público con menor privilegio de acceso a la solución, modificar la URL para verificar el acceso, si es aceptado el acceso, se identifica que el sistema de información es vulnerable. 

Redirrecionamiento y reenvíos sin validación: 
Con frecuencia las aplicaciones envían hacia otras páginas cuando se ejecutan parámetros que no son validados, el atacante puede definir el sitio al que se quiere re direccionar. 

Controles: 
- Validación del campo de referencia, analizador de registros web, para proteger de ataques XSS y otros tipos de ataques. 
- Verificación de privilegios. 

Insuficiente protección de la capa de transporte: 
Se presenta si la información que viaja por internet no se encuentra debidamente protegida. Un usuario externo que monitoree la red, podrá obtener información (Usuarios, Contraseñas e Identificación). 
Controles: 
- Vulnerabilidad enfocada a nivel de infraestructura. Podrá ser utilizado un Snnifer para el monitoreo de la red. 

Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWASP Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
Los resultados permitirán identificar los requisitos de seguridad que los sistemas de información o servicios web deberán cumplir.
La metodología empleada tendrá las siguientes fases: 

* FASE DE RECONOCIMIENTO: 
Se recolectará toda la información posible, usando diferentes técnicas como:
* Recopilación de dominios/IPs/puertos/servicios
* Recopilación de metadatos
* Uso de Google Dorks.

* ANÁLSIS DE VULNERABILIDADES: 
Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 

* EXPLOTACIÓN: 
* Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
* Inyección de código
* Inclusión de ficheros locales o remotos
* Evasión de autenticación
* Carencia de controles de autorización
* Ejecución de comandos en el lado del servidor
* Ataques tipo Cross Site Request Forgery
* Control de errores
* Gestión de sesiones
* Fugas de información
* Secuestros de sesión
* Comprobación de las condiciones para realizar una denegación de servicio.
	
* POST EXPLOTACIÓN:
En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.

URL
https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz
IP
135.181.185.207

El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component|||
|**Cliente**|business-actor|||
|**Servidor web Aplicaciones**|node|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Riesgos Técnicos
## Riesgos.1. Migración funcional
![Vista. Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:Riesgos.1.Migraciónfuncional width=}

Riesgos de la migración funcional:

* RSG1. Estrategia CMS central
* RSG2. Motor de búsqueda
* RSG3. Estratego como BI
* RSG4. Conciliación y Doku
* RSG5. Gestión de sesiones / caducidad
* RSG6. Componentes de negocio
* RSG7. Asignación de roles y permisos de Acceso 
* RSG8. Intentos de accesos no autorizados
* RSG9. Alteración de datos negocio
* RSG10. Validación decisiones de arquitectura
* RSG11. Estrategias de Migración de datos
* RSG12. Arquitectura de almacenamiento y distribución de datos SIU
* RSG13. Sistema de autenticación híbrido

### Acciones de Mitigación

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del SCM central (SharePoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del motor de búsqueda compartido (SharePoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: diseño de solución de inteligencia de negocio (Power BI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: ubicar la lógica, los flujos, y los datos misionales dentro del SIU. La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: facilitar la administración de seguridad en un solo lugar (distinto de localizarla en las aplicaciones web). La PGN debe decidir si o no a la acción propuesta.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**RSG1. Estrategia CMS central**|constraint|Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br>||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**RSG11. Estrategias de Migración de datos**|constraint|Discutir el alcance y los recursos para la correcta migración de datos incluidas en contrato 078, Migración Funcional SIU en atención al numeral 5.6 del anexo técnico del proyecto.<br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br>||
|**RSG12. Arquitectura de almacenamiento y distribución de datos SIU**|constraint|Definir la opción de organización y distribución de los almacenes de datos del SIU. <br>opc1. Dispositivo físico/virtual (nodo, servidor, y esquema de base de datos) único, central, a todos los módulos del SIU.<br>opc2. Dispositivos virtuales autónomos por dominio de negocio: relatoría, inventario, información estratégica, intercomunicados.<br>||
|**RSG13. Sistema de autenticación híbrido**|constraint|Definir la estrategia de autenticación del SIU migrado (aplicable a todos los módulos del SIU migrado).<br>opc1. Híbrida: integrado, directorio empresarial (LDAP), y servicios de autenticación de confianza: Office 365 de PGN.<br>opc2. Servicio de autenticación de confianza: Office 365 de PGN.<br>||
|**RSG2. Motor de búsqueda compartido**|constraint|Establecer desde el principio el motor de búsqueda de contenidos compartido para los módulos del SUI migrados.<br>||
|**RSG3. Estratego como BI**|constraint|Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br>||
|**RSG4. Conciliación y gestión documental (Doku)**|constraint|Definir la ubicación de los componentes misionales de Conciliación Administrativa (SIU). Debe estar fuera de Doku.<br>||
|**RSG5. Gestión de sesiones / caducidad**|constraint|Establecer desde el principio el motor de búsqueda de contenidos compartido para los módulos del SUI migrados.<br>||
|**RSG6. Componentes de negocio**|constraint|Incluir el esfuerzo de creación de componentes estructurales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br>Algunos componentes requeridos son:<br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br>||
|**RSG7. Asignación de roles y permisos de Acceso **|constraint|RSG7. Asignación de roles y permisos de Acceso. Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.<br>||
|**RSG8. Intentos de accesos no autorizados**|constraint|RSG8. Intentos de accesos no autorizados. Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.<br>||
|**RSG9. Alteración de datos negocio**|constraint|RSG9. Alteración de datos almacenados en Base de Datos.<br>Se deberán asignar usuarios para la conexión de cada base de datos. Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. <br>||
|**Riesgos Técnicos Migración Funcional SUI (078)**|constraint|Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br>||

<br>

## Riesgos.2. Modelo Riesgo RSG10
![Vista. Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:Riesgos.2.ModeloRiesgoRSG10 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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


``Generated on: Thu Nov 23 2023 15:12:59 GMT-0500 (COT)``

# Arquitectura de Software
* [Diagrama de Arquitectura de la Solución Propuesta: vista de integración](#diagrama-de-arquitectura-de-la-solución-propuesta:-vista-de-integración)
	* [Migracion.1a.b.SUI Contexto Módulos](#migracion.1a.b.sui-contexto-módulos)
	* [Migracion.1a.a.SUI Contexto Módulo](#migracion.1a.a.sui-contexto-módulo)
* [Diagrama de Arquitectura de la solución propuesta: vista física](#diagrama-de-arquitectura-de-la-solución-propuesta:-vista-física)
	* [Lineabase.0.SUI Aplicación. Física](#lineabase.0.sui-aplicación.-física)
* [Diagrama de Arquitectura de la Solución Propuesta: motivadores del negocio](#diagrama-de-arquitectura-de-la-solución-propuesta:-motivadores-del-negocio)
	* [Migracion.1a.a.SUI Contexto Módulo](#migracion.1a.a.sui-contexto-módulo)
	* [Riesgos.1. Migración funcional](#riesgos.1.-migración-funcional)
	* [Riesgos.2. Modelo Riesgo RSG10](#riesgos.2.-modelo-riesgo-rsg10)
	* [Riesgos.3. Modelo Riesgo RSG11](#riesgos.3.-modelo-riesgo-rsg11)
* [Diagrama de Arquitectura de la Solución Propuesta: interoperabilidad](#diagrama-de-arquitectura-de-la-solución-propuesta:-interoperabilidad)
	* [Migracion.1c.SUI Módulos Colaboración Aplicaciones](#migracion.1c.sui-módulos-colaboración-aplicaciones)
	* [Migracion.1d.SUI Módulos Colaboración Datos](#migracion.1d.sui-módulos-colaboración-datos)
* [Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles](#diagrama-de-arquitectura-de-la-solución-propuesta:-gestión-de-autenticación,-usuarios-y-roles)
	* [Seguridad.2. Lineabase.0.SUI Aplicación](#seguridad.2.-lineabase.0.sui-aplicación)
* [Diagrama de Clases y Componentes de solución](#diagrama-de-clases-y-componentes-de-solución)
	* [Migracion.1b.1. SUI Módulos Componentes](#migracion.1b.1.-sui-módulos-componentes)
	* [Migracion.1b.3. SUI Módulos Clases](#migracion.1b.3.-sui-módulos-clases)
	* [Migracion.1b.2. SUI Módulos Componentes. Brecha](#migracion.1b.2.-sui-módulos-componentes.-brecha)
* [Diagrama de Arquitectura de Integración Continua, DevOps y Despliegues de Capas](#diagrama-de-arquitectura-de-integración-continua,-devops-y-despliegues-de-capas)
	* [Migracion.4. CI](#migracion.4.-ci)
* [Documento de Relación de Tecnologías y Licenciamiento](#documento-de-relación-de-tecnologías-y-licenciamiento)
	* [Migracion.5. Licenciamiento](#migracion.5.-licenciamiento)
* [Requerimientos de Seguridad](#requerimientos-de-seguridad)
	* [Seguridad.3. Autenticación](#seguridad.3.-autenticación)
	* [Seguridad.4. Autorización](#seguridad.4.-autorización)
	* [Seguridad.5.Desarrollo Seguro](#seguridad.5.desarrollo-seguro)
	* [Seguridad. 6. Auditoría](#seguridad.-6.-auditoría)
	* [Seguridad. 7. Owasp](#seguridad.-7.-owasp)
* [Documento de Relación de Tecnologías y Licenciamiento](#documento-de-relación-de-tecnologías-y-licenciamiento)
	* [Doc.6.Anexos.1a. Archimate](#doc.6.anexos.1a.-archimate)


<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de la Solución Propuesta: vista de integración
## Migracion.1a.b.SUI Contexto Módulos
![Vista. Migracion.1a.b.SUI Contexto Módulos](images/Migracion.1a.b.SUIContextoMódulos.png){#fig:Migracion.1a.b.SUIContextoMódulos width=}

La vista presenta en contexto a los módulos SUI migrados y el estilo de comunicación vía API sincrónica/asincrónica (en verde en la imagen).

Cada módulo migrado atiende al funcionario que le corresponde, por ejemplo, Relatoría atiende a la dependencia Jurídica de la PGN. Los módulos comparten su información mediante el API local presente dentro de cada uno. Esto es, la información se mantiene protegida dentro de los dominios pero coordinada (se comparte con otros dominios).

El arreglo de datos de registros operativos y transaccionales es como sigue: cada módulo individual mantiene su registro de datos, estado y transacciones minimizado y protegido (individual y aislado). Salvo excepciones no consentidas por el diseño original, un módulo puede compartir el mismo almacén de datos con otro.

La coordinación de transacciones es realizada por la colaboración de las otras API individuales de cada módulo. Por ejemplo, si una relatoría nueva requiere alguna validación de Hominis, el módulo coordinador (c) inicia la transacción hacia Homini, y este, el módulo proveedor (p) responde con el resultado de la validación. El módulo coordinador misma operación se repite cuando la transacción involucra a más módulos proveedores (p). 



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Administración 2**|application-collaboration|||
|**cc:Administración 3**|application-collaboration|||
|**cc:Administración N**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:Almacenamiento 2**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:Almacenamiento 3**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:Almacenamiento N**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**cc:Servicios de aplicación**|application-collaboration|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**Cliente PGN**|business-actor|||
|**Cliente PGN**|business-actor|||
|**Cliente PGN**|business-actor|||
|**Cliente PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||
|**Funcionario PGN**|business-actor|||

<br>

## Migracion.1a.a.SUI Contexto Módulo
![Vista. Migracion.1a.a.SUI Contexto Módulo](images/Migracion.1a.a.SUIContextoMódulo.png){#fig:Migracion.1a.a.SUIContextoMódulo width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro del diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales del SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

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
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
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
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de la solución propuesta: vista física
## Lineabase.0.SUI Aplicación. Física
![Vista. Lineabase.0.SUI Aplicación. Física](images/Lineabase.0.SUIAplicación.Física.png){#fig:Lineabase.0.SUIAplicación.Física width=}

Procuraduría General de la Nación (PGN), módulo Sistema Único de Información (SUI), 2023. Elementos físicos que soportan a la aplicación doc Sistema Único de Información (SUI) de la PGN, actual Fase I y existente en Fase II. Presentación de componentes de software y tecnología física (hardware) implementados en la Fase I y requeridos por Fase II (presente proyecto).

### Representación de Arquitectura
Con una arquitectura orientada a servicios Sistema Único de Información (SUI) recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>

### Especificaciones Plataformas y Versiones
* Angular, versión 11
* Node Js, versión 14.16
* Net Entity Framework, versión 4.7
* Sequelize, versión 5.3

<br>

### Especificaciones de Librerías y Dependencias
* Web Server (IIS) role
* Windows Process Activation Service feature
* Microsoft .NET Framework version 3.5
* Microsoft .NET Framework version 4.7.2
* Microsoft SQL Server 2012 Service Pack 4 Native Client
* Microsoft WCF Data Services 5.6
* Microsoft Identity Extensions
* Microsoft Information Protection and Control Client 2.1 (MSIPC)
* Cumulative Update Package 7 for Microsoft AppFabric 1.1 for Windows Server (KB 3092423)
* Visual C++ Redistributable Package for Visual Studio 2012
* Visual C++ Redistributable Package for Visual Studio 2017

<br>

### Especificaciones Base de Servidores

| Servidor de Aplicaciones | Especificaciones del Servidor            |
|-------------------|-------------------------------------------------|
| Sistema Operativo | Windows Server 2019 Standard or Datacenter x64  |
| RAM               | 16 GB                                            |
| CPU               | 64 Bits, mínimo 4 Cores > 2 Ghz                 |
| Discos            | C: 120 GB, D: 16 GB    |    
| Físico/virtual    | Virtual                                         |
| Roles / Features  | Web Server (IIS) role                           |
|                   | Windows Process Activation Service feature      |
|                   | Microsoft .NET Framework version 3.5            |

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**www pgn com**|technology-interface|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de la Solución Propuesta: motivadores del negocio
## Migracion.1a.a.SUI Contexto Módulo
![Vista. Migracion.1a.a.SUI Contexto Módulo](images/Migracion.1a.a.SUIContextoMódulo.png){#fig:Migracion.1a.a.SUIContextoMódulo width=}

Identificación de submódulos del Sistema Único de Información (SUI) de la PGN. 

Todos los sistemas de información del SUI deben seguir la directiva de separar a los componentes misionales de los utilitarios: el SUI de PGN estará constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro del diagrama.

Los submódulos del SUI, tal como están presentados, reúnen a las partes por el mismo rol en favor de la coherencia. Por ejemplo, los servicios de aplicación, en la imagen, contiene a todos aquellos utilitarios que prestan alguna utilidad momentánea al SUI migrado. Organizados así, estos submódulos utilitarios pueden ser intercambiados o ampliados sin perjuicio de los componentes misionales del SUI (centro del diagrama) gracias a las _interfaces de unión_ en favor de la extensibilidad.

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
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Administración**|application-collaboration|||
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
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
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Riesgos.1. Migración funcional
![Vista. Riesgos.1. Migración funcional](images/Riesgos.1.Migraciónfuncional.png){#fig:Riesgos.1.Migraciónfuncional width=}

Riesgos de la migración funcional:

* RSG1. Estrategia CMS central
* RSG2. Motor de búsqueda
* RSG3. Estratego como BI
* RSG4. Conciliación y Doku
* RSG5. Gestión de sesiones / caducidad
* RSG6. Componentes de negocio
* RSG7. Asignación de roles y permisos de Acceso 
* RSG8. Intentos de accesos no autorizados
* RSG9. Alteración de datos negocio
* RSG10. Validación decisiones de arquitectura
* RSG11. Estrategias de Migración de datos
* RSG12. Arquitectura de almacenamiento y distribución de datos Sistema Único de Información (SUI)
* RSG13. Sistema de autenticación híbrido

### Acciones de Mitigación

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del SCM central (SharePoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de aprovechamiento: diseño del motor de búsqueda compartido (SharePoint). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: diseño de solución de inteligencia de negocio (Power BI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: ubicar la lógica, los flujos, y los datos misionales dentro del doc Sistema Único de Información (SUI). La PGN debe decidir si o no a la acción propuesta.

1. Informar a la PGN de las implicaciones junto con alternativas para la implementación de la acción de manejo del riesgo: facilitar la administración de seguridad en un solo lugar (distinto de localizarla en las aplicaciones web). La PGN debe decidir si o no a la acción propuesta.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**RSG1. Estrategia CMS central**|constraint|Establecer desde el principio el gestor de contenidos compartido que los módulos del SUI migrados van a usar.<br>||
|**RSG10. Validación decisiones de arquitectura**|constraint|Discutir la arquitectura de referencia de SUI Migración PGN. La arquitectura de referencia SUI informa de todas las fortalezas y consideraciones estructurales y de sistema, como extensibilidad, rendimiento y seguridad, que regirán a todos los módulos del SUI migrado.<br>||
|**RSG11. Estrategias de Migración de datos**|constraint|Discutir el alcance y los recursos para la correcta migración de datos incluidas en contrato 078, Migración Funcional Sistema Único de Información (SUI) en atención al numeral 5.6 del anexo técnico del proyecto.<br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br>||
|**RSG12. Arquitectura de almacenamiento y distribución de datos SUI**|constraint|Definir la opción de organización y distribución de los almacenes de datos del Sistema Único de Información (SUI). <br>opc1. Dispositivo físico/virtual (nodo, servidor, y esquema de base de datos) único, central, a todos los módulos del Sistema Único de Información (SUI).<br>opc2. Dispositivos virtuales autónomos por dominio de negocio: relatoría, inventario, información estratégica, intercomunicados.<br>||
|**RSG13. Sistema de autenticación híbrido**|constraint|Definir la estrategia de autenticación del Sistema Único de Información (SUI) (aplicable a todos los módulos del este).<br>opc1. Híbrida: integrado, directorio empresarial (LDAP), y servicios de autenticación de confianza: Office 365 de PGN.<br>opc2. Servicio de autenticación de confianza: Office 365 de PGN.<br>||
|**RSG2. Motor de búsqueda compartido**|constraint|Establecer desde el principio el motor de búsqueda de contenidos compartido para los módulos del SUI migrados.<br>||
|**RSG3. Estratego como BI**|constraint|Definir la arquitectura de Estratego migrado: puede ser una solución de BI simple, o puede ser una aplicación web tradicional.<br>||
|**RSG4. Conciliación y gestión documental (Doku)**|constraint|Definir la ubicación de los componentes misionales de Conciliación Administrativa (Sistema Único de Información (SUI)). Debe estar fuera de Doku.<br>||
|**RSG5. Gestión de sesiones / caducidad**|constraint|Establecer desde el principio el motor de búsqueda de contenidos compartido para los módulos del SUI migrados.<br>||
|**RSG6. Componentes de negocio**|constraint|Incluir el esfuerzo de creación de componentes estructurales y comunes a los módulos del SUI migrado requeridos por la arquitectura de referencia SUI. <br>Algunos componentes requeridos son:<br>* Administración de autorizaciones (integrado con el directorio PGN)<br>* Motor de flujos de trabajo para diseño y organización del trabajo (Conciliación)<br>* Componente de ruteo de documentos (Relatoría)<br>||
|**RSG7. Asignación de roles y permisos de Acceso **|constraint|RSG7. Asignación de roles y permisos de Acceso. Los riesgos de autenticación como el Single Sign On (SSO), permite que si las credenciales de usuario se ven comprometidas, pueden dar permiso a un atacante acceder a todos o la mayoría de recursos y aplicaciones en la red. Se ha propuesto controlar los accesos a partir de la documentación que identifica la metodología de clasificación y gestión de usuarios roles y procesos de autenticación, a partir del control de acceso basado en roles RBAC (Identidades y autenticación), que permite tener una reacción más oportuna para controlar los accesos a diferentes módulos de los diferentes sistemas de Información.  Los inicios de sesión de los usuarios asociados a cuenta de dominio de Active Directory deben tener en cuenta la asignación de roles de ingreso al servidor o roles de ingreso al motor de bases de datos. Las cuentas de usuario no deben ser creadas de administrador local (administrador), es una puerta de entrada para los ataques de fuerza bruta.<br>||
|**RSG8. Intentos de accesos no autorizados**|constraint|RSG8. Intentos de accesos no autorizados. Los intentos no autorizados son una de las técnicas más comunes utilizadas en la actualidad, los diferentes tipos de amenazas de intrusiones SQL Injections, Denegaciones de Servicios, riesgos de Ransomware, Ingeniería social, malware y otras amenazas, permite que se proponga implementación de soluciones de Seguridad perimetral a partir de la implementación de WAF para controlar las peticiones externas y evaluación de vulnerabilidades y escaneo para conocer puertos abiertos y establecer medidas.<br>||
|**RSG9. Alteración de datos negocio**|constraint|RSG9. Alteración de datos almacenados en Base de Datos.<br>Se deberán asignar usuarios para la conexión de cada base de datos. Se debe proporcionar seguridad a nivel de filas y columnas (ofuscamiento) para proteger los datos confidenciales en el nivel de columnas y filas RLS ((seguridad de nivel de fila). Algunos de los métodos y características que se deben tener en cuenta a implementar es a partir del Alway encrypted, para cifrar los datos que se encuentran almacenados. <br>||
|**Riesgos Técnicos Migración Funcional SUI (078)**|constraint|Conjunto de riesgos técnicos y arquitectura. Proyecto Migración SUI 2023, PGN.<br>||

<br>

## Riesgos.2. Modelo Riesgo RSG10
![Vista. Riesgos.2. Modelo Riesgo RSG10](images/Riesgos.2.ModeloRiesgoRSG10.png){#fig:Riesgos.2.ModeloRiesgoRSG10 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
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

## Riesgos.3. Modelo Riesgo RSG11
![Vista. Riesgos.3. Modelo Riesgo RSG11](images/Riesgos.3.ModeloRiesgoRSG11.png){#fig:Riesgos.3.ModeloRiesgoRSG11 width=}

Para mitigar el riesgo 10, RSG10. Validación decisiones de arquitectura, que tiene como agente de riesgo a los arquitectos del contratista, Softgic, y al de la entidad, PGN, es necesario iniciar un proceso de evaluación y aprobación de la arquitectura. La frecuencia de este proceso será eventual, y como mínimo una vez cada dos semanas.

### Valoración del Riesgo

| Requisito      | Extensibilidad SUI |
|:-------------|:------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Valoración del riesgo RSG10. Validación decisiones de arquitectura. Migración SUI. {#tbl:requisito1-id}


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Impacto**|assessment|Excedente de trabajo en del proyecto 078, esfuerzo y presupuesto.||
|**Agente de riesgo PGN**|business-actor|Arquitecto PGN||
|**Agente de riesgo Softgic**|business-actor|Arquitecto Softgic||
|**Gestión alcance tipos de datos y criterios aceptación migración datos**|business-event|||
|**RSG11. Estrategias de Migración de datos**|constraint|Discutir el alcance y los recursos para la correcta migración de datos incluidas en contrato 078, Migración Funcional Sistema Único de Información (SUI) en atención al numeral 5.6 del anexo técnico del proyecto.<br>| 5.6 MIGRACIÓN DE DATOS<br>| Dentro del alcance de las actividades a desarrollar, el proveedor debe generar los mecanismos adecuados para hacer migración de la información que se encuentre en los sistemas actuales y que, por evolución de este, tenga datos relevantes que deban ser migrados a los ambientes y/o sistemas de información productos de la fábrica.<br>|<br>| Para este servicio el proveedor debe disponer del personal idóneo y las herramientas necesarias para hacer efectiva las actividades de migración de datos, utilizando las mejores prácticas de Extracción-Transformación-Carga (ETL) y protocolos de control de versiones robustos. Esta labor debe ser coordinada con las personas de la entidad que sean designadas por la Oficina de Tecnología, Innovación y Transformación Digital.<br>||
|**Evaluación tipos de datos, actividades y herramientas**|course-of-action|La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br>||
|**Implementación de sincronización y lectura datos (migrados)**|course-of-action|La frecuencia del proceso de evaluación de la arquitectura es eventual, mínimo una vez cada dos semanas.<br>||
|**Definición mecanismo sincronización y extracción (lectura)**|requirement|||
|**Definición tipos de datos módulos SUI**|requirement|||
|**Supervisor contrato 078-2023**|stakeholder|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de la Solución Propuesta: interoperabilidad
## Migracion.1c.SUI Módulos Colaboración Aplicaciones
![Vista. Migracion.1c.SUI Módulos Colaboración Aplicaciones](images/Migracion.1c.SUIMódulosColaboraciónAplicaciones.png){#fig:Migracion.1c.SUIMódulosColaboraciónAplicaciones width=}

Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.

La colaboración entre el SUI Migración con sistemas externos puede darse mediante API de comunicación (o buses de datos empresarial que ya disponga la PGN), sin perjuicio del patrón de comunicación estándar descrito en el diagrama.

Los únicos elementos para la comunicación (e integración) son los indicados en la vista actual. En este diseño no considera tipos de comunicación mediante  mensajería, datos, u otros no mencionados en la vista.

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:Almacenamiento**|application-collaboration|Espacio de almacenamiento operativo y transaccional de un módulo central del SUI migrado.||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Portales y canales**|application-collaboration|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es SharePoint de Microsoft.<br>||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||

<br>

## Migracion.1d.SUI Módulos Colaboración Datos
![Vista. Migracion.1d.SUI Módulos Colaboración Datos](images/Migracion.1d.SUIMódulosColaboraciónDatos.png){#fig:Migracion.1d.SUIMódulosColaboraciónDatos width=5.32in}

Modelo de acceso a datos de negocio del SIM. 

La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitectura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
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
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 2**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 3**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 4**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles
## Seguridad.2. Lineabase.0.SUI Aplicación
![Vista. Seguridad.2. Lineabase.0.SUI Aplicación](images/Seguridad.2.Lineabase.0.SUIAplicación.png){#fig:Seguridad.2.Lineabase.0.SUIAplicación width=}

## Metodología Seguridad Sistema Único de Información (SUI)
Los mecanismos de autorización para el acceso a los sistemas de información de la Procuraduría General de la Nación describen la forma de cómo se restringe el acceso a los diferentes módulos Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros, y que se considera un mecanismo de protección que ayuda a reaccionar ante cualquier operación no autorizada. 

El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  

Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros Colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  

EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. 

### Gestión de identidades y Control de acceso
Gestor de identidades: En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  

Gestor de roles: La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. 

Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología. 

### Reglas de Creación de Usuarios e Identifiación de Privilegios
En este ítem se deben identificar las herramientas con las que cuenta la  entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 
Identificación de Roles y Privilegios. 

Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 

### Aprovisionamiento de Cuentas
Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”.

### Mecanismos de Control de Acceso
Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 

### Definición de Privilegios y Accesos
Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  

### Configuración de Permisos 
La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  

En este ítem se deben identificar las herramientas con las que cuenta la entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 

### Identificación de Roles y Privilegios 
Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 

### Aprovisionamiento de Cuentas 
Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. 

### Establecimiento de mecanismos de control de acceso 
Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 

### Definición de Privilegios y Accesos
Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  

### Configuración de Permisos
La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  

Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones:  

Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso.  

Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  

Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  

Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación. 

Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales.  

Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismo de seguridad para evitar amenazas de ataques.  

Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. 

Como mecanismos se propone implementar estos mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.

Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y así evitar manipulación de información confidencial. La Seguridad que brinda SSL, da garantía para acceder a los aplicativos de PNG. 

### Cómo implementar certificados SSL
Podrán ser adquiridos a través del proveedor de dominios.

TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envío de la información, proporcionando una autenticación sólida, restringiendo la manipulación, interceptación y alteración de mensajes.

La última versión del TLS es la 1.3


### Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Autenticación**|business-object|||
|**Autorización**|business-object|||
|**Cifrado de Datos en tránsito**|business-object|||
|**Cifrado de datos en tránsito**|business-object|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Firewall BDD**|node||*brecha:* 100<br>|
|**Network Firewall/WAF**|node||*brecha:* 100<br>|
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) 1**|node|Sistema de Seguridad (LDAP) 1. Control de acceso internet, <br>La autenticación podrá estar integrada con el directorio activo, a partir de la generación de codigo para ek ingreso con 2FA, que podrá generar un código la plataforma de correo corporativo, el cual solicitará el codigo de autenticacion y una vez ingreado podrá redirigir al sitio.<br>|*brecha:* 100<br>|
|**Sistema de Seguridad (LDAP) 2**|node|Sistema de Seguridad (LDAP) 2. Control de acceso internet, <br>La solución se podra integrar con el directorio activo, a partir de la generación del 2FA, que podrá generar un  codigo por desde la plataforma de office 365, el cual solicitará el codigo de autenticacion y una vez ingreado podrá acceder al sitio. <br>|*brecha:* 100<br>|
|**www pgn com**|technology-interface|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Clases y Componentes de solución
## Migracion.1b.1. SUI Módulos Componentes
![Vista. Migracion.1b.1. SUI Módulos Componentes](images/Migracion.1b.1.SUIMódulosComponentes.png){#fig:Migracion.1b.1.SUIMódulosComponentes width=}

Presentación de los componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización interna de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en el diagrama. 

La organización de componentes de migración SUI facilita focalizar la selección de tecnologías. Los componentes internos y tecnologías elegidas son las siguientes

1. Presentación: Angular 11 (Web)
1. PGN SUI: API Transaccional (Node Js)
1. Administración: API Config (C#)
1. Persistencia: (SQL)

Los submódulos del SUI, tal como están presentados, reúnen a las partes que tienen el mismo rol en favor de la coherencia. Así mismo, estos pueden ser intercambiados o ampliados sin perjuicio del SUI gracias a las interfaces de unión (en favor de la extensibilidad).

Las interfaces de unión indicadas arriba obligan a los submódulos a cumplir las exigencias de los componentes misionales del SUI.

### Consideraciones de Seguridad Vista Web
-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. 

Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. 

4.	SERVICIOS IDENTIFICADOS:
Servidor web:  Microsoft-IIS/10.0 
Marco de Programación: ASP.NET
Huellas digitales identificadas:  
Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”
Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**CU ejecutable**|application-component||*plataforma:* js<br>|
|**CU ejecutable (n)**|application-component||*plataforma:* js<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Configuración reportes**|application-component|Base de datos del servior de reportes del Sistema Único de Información (SUI) provisto por plataforma Microsoft SQL Server.<br>||
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Diseñador reportes**|application-component|Apliación de escritorio / web para el diseño, creación y desarrollo de los reportes del Sistema Único de Información (SUI). Provisto por plataforma Microsoft Power BI.||
|**Función PGN 1**|application-component|La unidad de cómputo que resulta en la aplicación de una regla de negocio.<br>|*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Servidor aplicaciones Sharepoint**|application-component|||
|**Servidor datos Sharepoint**|application-component|||
|**Servidor de Reportes**|application-component|Componente Sistema Único de Información (SUI) de publicación y distribución de reportes diseñados provisto por plataforma Microsoft SQL Server.||
|**Servidor web Sharepoint**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**IGA: Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Reportería**|application-service|Servicio de diseño, publicación y distribución de reportes del Sistema Único de Información (SUI).<br>|*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Representa un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**Portales**|grouping|Submódulo de portales internos de la PGN a donde llega el SUI. Interfaz web que usa al SUI para llegar a direcciones y subdirecciones de la PGN. La plataforma principal de portales en este contexto es Sharepoint de Microsoft.<br>||
|**Presentación**|grouping|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Reportería**|grouping|||
|**Servicios de aplicación**|grouping|Submódulo de servicios utilitarios que sirven al SUI. Servicios variados que cumplen roles facilitadores de las actividades misionales del SUI. Ejemplos de estos servicios son los de gestión documental, implementado por Doku en el contexto de PGN.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Negocio**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

## Migracion.1b.3. SUI Módulos Clases
![Vista. Migracion.1b.3. SUI Módulos Clases](images/Migracion.1b.3.SUIMódulosClases.png){#fig:Migracion.1b.3.SUIMódulosClases width=}

El modelo de negocio del Sistema Único de Información (SUI) sigue el patrón de diseño descrito en esta vista.

El diseño actual antepone un servicio como punto de acceso a un caso de uso, de tal forma que este se encarga únicamente (por responsabilidad) de coordinar las entradas y las salidas del caso de uso.

El modelo propicia la separación de la lógica de aplicación y la lógica de negocio. En este diseño, la primera está encapsulada en el Caso de Uso ejecutable (en el diagrama), mientras que la lógica de negocio lo está en una función de negocio.

Los conceptos de negocio están representados por funciones PGN (en el diagrama). Ejemplo: en el dominio de una conciliación, Función PGN 1 puede representar una nueva radicación en cumplimiento de las reglas de ese dominio. Esta función de negocio es completamente independiente del modelo de datos subyacente. Nótese que las entidades de datos de negocio no son accesibles desde la función de negocio.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
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
|**Entidad negocio PGN 1**|business-object|Representa un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||

<br>

## Migracion.1b.2. SUI Módulos Componentes. Brecha
![Vista. Migracion.1b.2. SUI Módulos Componentes. Brecha](images/Migracion.1b.2.SUIMódulosComponentes.Brecha.png){#fig:Migracion.1b.2.SUIMódulosComponentes.Brecha width=}

Los elementos resaltados indican las extensiones a la arquitectura por concepto de Fase II del proyecto de migración SUI. 

Los componentes internos incorporados en la arquitectura tienen el propósito de implementar los casos de uso (CU) de cada módulo construido con esta organización (vista anterior). En la imagen los CU son expuestos por los servicios de aplicación, y estos a su vez, usan funciones de negocio (impulsadas por la plataforma de Lappiz). 

Todos los sistemas de información del SUI siguen esta directiva: estarán constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en el diagrama. 


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
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
|**Vista web**|application-component||*plataforma:* html<br>|
|**Application Interface**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (n)**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y a la entidad ||
|**Application Service 1**|application-service|Implementación de un caso de uso de negocio, independiente y demostrable. Contiene a la unidad ejecutable del CU y reutiliza (accede a) una entidad de negocio, que puede ser también una función PGN.<br>||
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**IGA: Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Office**|application-service|||
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Entidad negocio PGN 1**|business-object|Representa un objeto de negocio del contexto de la entidad PGN,, por ejemplo: un decreto, una intervención, una conciliación.<br>||
|**ARQ01. Consistencia SUI**|constraint|Unifica las entidades de negocio PGN, entre las que se incluyen a conciliaciones, publicaciones de relatoría, resoluciones, en artefactos reutilizables. Distinto de que estas entidades (y su lógica de negocio) estén dispersos entre los sistemas del SUI, estarán concentradas en un único artefacto correspondiente. Calidad sistémica: la consistencia persigue que el resultado de la lógica de negocio sea la misma entre los módulos del SUI migrado. Esto redunda a mantenibilidad y gestión: tiende a tener un solo punto de cambio y dificulta la transferencia de dependencias implícitas a otros procesos.||
|**ARQ02. Mantenibilidad SUI**|constraint|Evitar las dependencias transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  Calidad sistémica: la mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento.||
|**ARQ03. Extensibilidad SUI**|constraint|Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. Calidad sistémica: la extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege.||
|**Mensaje: JSON**|data-object|||
|**Administración**|grouping|||
|**Almacenamiento**|grouping|||
|**PGN SUI**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
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

<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Arquitectura de Integración Continua, DevOps y Despliegues de Capas
## Migracion.4. CI
![Vista. Migracion.4. CI](images/Migracion.4.CI.png){#fig:Migracion.4.CI width=}

Descripción de las cadenas de integración y despliegue continuo de submódulos (aplicaciones web, por ejemplo) del Sistema Único de Información (SUI), 2023; integración y despliegue continuo de los módulos central del Sistema Único de Información (SUI), 2023.

Las cadenas están separadas por tecnologías y plataformas distintas; son independientes y no presentan interbloqueos en cuanto a su ejecución. Pero, requieren administración integral.

Los trabajo de despliegue requieren las configuraciones de las cadenas y tareas de conexión tanto a los ambientes productivos y desarrollo.
 

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:Presentación**|application-collaboration|Submódulo de presentación del SUI. interfaz gráfica, interfaz web visible a los usuarios clientes y funcionarios de la PGN. ||
|**Evento de cambio**|application-event|||
|**Evento de cambio**|application-event|||
|**Azure CSM: git**|application-service|||
|**Lappiz CSM: bin**|application-service|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Trabajo de despliegue lappiz.com**|technology-process|||
|**Trabajo de despliegue: yaml**|technology-process|||
|**Trabajo de integración lappiz.com**|technology-process|||
|**Trabajo de integración: yaml**|technology-process|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Documento de Relación de Tecnologías y Licenciamiento
## Migracion.5. Licenciamiento
![Vista. Migracion.5. Licenciamiento](images/Migracion.5.Licenciamiento.png){#fig:Migracion.5.Licenciamiento width=}

Listado de los requisitos de licenciamiento a razón de los elementos usados por los módulos centrales del Sistema Único de Información (SUI), 2023.

Los elementos resaltados de la vista actual requieren modelos de  licenciamiento variado, bien sea por usuario, núcleo, despliegue (instalación), o renta por consumo.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
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
|**Vista web**|application-component||*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**IGA: Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Reportería**|application-service|Servicio de diseño, publicación y distribución de reportes del Sistema Único de Información (SUI).<br>|*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**PGN SUI**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
|**RQR. Administrativos**|requirement|||
|**RQR. Funcionales**|requirement|||
|**RQR. Ingeniería**|requirement|||
|**RQR. Seguridad**|requirement|Requerimientos de seguridad, SUI, Migración, en aspectos de comunicación, autenticación, autorización y (manejo de) sesiones.<br>||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Requerimientos de Seguridad
## Seguridad.3. Autenticación
![Vista. Seguridad.3. Autenticación](images/Seguridad.3.Autenticación.png){#fig:Seguridad.3.Autenticación width=}

Autenticación: 
La autenticacion de usuarios estará enmarcada en en tres factores de autenticación:
control de acceso basado en roles (RBAC), mecanismo de control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso.
Conexión de accecso por DA de Azure: Servicio de administración de acceso e identidades basado en la nube. 
Red Privada Virtual de Azure:  bloque de compilación fundamental para las redes privadas en Azure

Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones: 

Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. 
Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso. 

Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol). 

Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN. 

Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación.

Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales. 

Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismos de seguridad para evitar amenazas de ataques. 

La autenticación en el sistema de información comprende un Login de acceso contra Api config (Api Rest .Net Framework) y Active Directory. La misma API de configuración reconoce si el usuario es interno o externo (Es decir desde los usuarios el sistema conoce si debe hacer autenticación por directorio activo o en su defecto oAuth)

Administración de claves. 
Las contraseñas deberán cumplir con los requisitos de complejidad y completitud, teniendo en cuenta la longitud, caracteres numéricos, alfabéticos y especiales y que puedan ser cambiadas en un periodo de tiempo establecido, de acuerdo con los parámetros definidos en las políticas de acceso.   

La autenticacion de usuarios estará enmarcada en en tres factores de autenticación a partir del controlador de Dominio, y el acceso por VPN.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Active directory Server**|application-component|Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  <br>||
|**BD SQL Server**|application-component|Los datos estarán procesados y almacenados en las bases de datos, el cual tendrá implementados mecanismos de seguridad para el cifrado de los datos. ||
|**LDAP**|application-component|Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  ||
|**Logs**|application-component|Registro de actividades que permitirá mantener trazabilidad a partir de los registros de auditoría que contenga información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. ||
|**Validación de autenticación**|application-component|Autenticación: <br>Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán que realizar las diferentes validaciones para el acceso a las soluciones desarrolladas. <br>Características de contraseñas: <br>Las contraseñas deberán exigir características especiales como mínimo ocho (8) caracteres, números, símbolos, letras mayúsculas y minúsculas. La aplicación al estar integrada con el directorio activo deberá validar las características requeridas, estará en la capacidad de aceptar o rechazar la contraseña. <br>Bloqueo de contraseña: <br>El sistema incluirá controles de bloqueo de cuenta después de un máximo de cinco (5) intentos errados, con el fin de evitar ataques por fuerza bruta. Como la aplicación estará integrada con el directorio activo, este será encargado de definir los números de intentos permitidos antes de bloquear la contraseña de los usuarios.<br>Cierre de Sesión <br>Después de diez (10) minutos de inactividad el sistema deberá cerrar la sesión de trabajo.<br>||
|**Funcionarios Autenticación**|business-actor|Verificación que se realiza con la identidad del Servidor público, Contratista, Aprendiz y/o practicante de la entidad, proceso que se lleva a cabo cuando se ingresa al sistema, a la red o a cualquier base de datos.<br>Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación, que definirá la complejidad para la administración de contraseñas (Conjunto de caracteres variado con minúsculas, mayúsculas y números, entre otros). <br>Se deberá permitir para la gestion de usuarios, acciones como (creación, suministros de accesos, asignación de privilegios, revocatoria de accesos, etc), roles y perfiles, grupos de usuarios, asociacion de acciones para cada rol, y la administración exclusiva de los administradores del sistema de Información. ||
|**Servidor público, Contratistas, Practicantes y/o aprendices.**|business-actor|Persona natural que hacee parte la Procuraduría General de la Nación. ||
|**Consultar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán Consultar información sobre las diferentes soluciones.||
|**Modificar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán Consultar información sobre las diferentes soluciones.||
|**Procesar**|business-interaction|Permitirá identificar los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán inactivar información sobre los diferentes sistemas de información.||
|**Registrar**|business-interaction|Permitirá definir los Servidores públicos, Contratistas, Practicantes y/o aprendices que podrán registrar información sobre las diferentes soluciones.||
|**Roles**|business-role|Se definirán los roles y perfiles para acceder a los diferentes módulos de las soluciones desarrolladas. ||

<br>

## Seguridad.4. Autorización
![Vista. Seguridad.4. Autorización](images/Seguridad.4.Autorización.png){#fig:Seguridad.4.Autorización width=}

Los mecanismos de autorización para el acceso a los sistemas de información de la procuraduría general de la nación describen la forma de cómo se restringe el acceso a los diferentes módulos (Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros.), y que se considera un mecanismo de protección, que ayuda a reaccionar ante cualquier operación no autorizada. 

El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  

Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  

EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. 

Para consumo de Api Tx (Api rest node js) se cuenta con peticiones por métodos POST, PATCH, PUT, DELETE, esta no admite transacciones GET y siempre es requerido un bearer token y un sequelize model para garantizar transacciones exitosas.

Gestión de identidades y Control de acceso:  

Gestor de identidades: 
En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  

Gestor de roles: 
La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. 
Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología.


Identificación de Mecanismos:

En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”.

Identificación de Roles y Privilegios:
Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”.

Aprovisionamiento de cuentas:

Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”.

Establecimiento de mecanismos de control de acceso: 

Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”.

Definición de Privilegios y accesos:

Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros. 
Configuración de permisos:

La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos. 


Control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso. 
La información que sea considerada como Información pública reservada de acuerdo con los criterios definidos en la ley 1712 de 2014 “Por medio del cual se crea la ley de transparencia y del derecho de acceso a la información pública nacional.” podrá ser consultada solo por el personal autorizado definido de acuerdo con el control de acceso basado en roles.  Los perfiles o roles definirán el acceso a la información. 

Para los documentos restringidos que requieran firma por parte del líder del proceso o propietario, se propone revisar la implementación de un dispositivo criptográfico con uso de (CERTIFICADOS y FIRMA DIGITAL) con token integrado que podrá ser conectado en el puerto USB de la máquina del usuario.
La aprobación de los documentos por intermedio de esta firma permitirá la aprobación, integridad de los documentos, seguridad y validez jurídica. Se propone la gestión con un proveedor de certificado del ámbito nacional.

El control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**Active Directory Server**|application-component|Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  <br>||
|**IGA (Gobernanza y administración de identidades)**|application-component|||
|**Gestión de funcionarios PGN**|business-actor|||
|**Oficial de Seguridad**|business-actor|||
|**Security Administrator**|business-actor|La autenticacion de usuarios estará enmarcada en en tres factores de autenticación:<br>control de acceso basado en roles (RBAC), mecanismo de control de acceso que define los roles y los privilegios para determinar si a un usuario se le debe dar acceso a un recurso.<br>Conexión de accecso por DA de Azure: Servicio de administración de acceso e identidades basado en la nube.<br>Red Privada Virtual de Azure:  bloque de compilación fundamental para las redes privadas en Azure||
|**Servidor público, Contratistas, Practicantes y/o aprendices.**|business-actor|Persona natural que hacee parte la Procuraduría General de la Nación. ||

<br>

## Seguridad.5.Desarrollo Seguro
![Vista. Seguridad.5.Desarrollo Seguro](images/Seguridad.5.DesarrolloSeguro.png){#fig:Seguridad.5.DesarrolloSeguro width=}

METODOLOGÍA DE DESARROLLO.

La metodología de desarrollo seguro implementa las formas del desarrollo en cada una de las fases que se han requerido para los desarrollos de módulos misionales (SIM), Registro de Inhabilidades (SIRI), módulos de control interno, relatoría, entre otros, definido a partir de la metodología S-SDLC (Secure Software Development Life Cycle), que define los requisitos de seguridad a lo largo de las distintas fases de construcción del software: análisis de requerimientos, diseño y arquitectura del sistema, desarrollo del Sistema, Fase de pruebas y despliegue en productivo.

Migración de datos: Se presentarán los mecanismos adecuados para realizar la migración de la información que se encuentran en los sistemas de información desarrollados.
Principios de seguridad. 
El siguiente contenido relaciona los lineamientos de seguridad definidos en The Owasp Foundation (Open Web Application Security Project) que deberían cumplirse para el desarrollo de las diferentes soluciones de software. 

Principio de menor privilegio: La asignación de los permisos estará validados de tal forma que los Servidores Públicos, Contratistas, Practicantes y/o aprendices que interactúen con las diferentes soluciones dispongan mínimos privilegios necesarios para efectuar las actividades. 

Defensa en profundidad: Es importante identificar diferentes factores de riesgos que permita encontrar fallas en las soluciones, Este análisis podrá ser obtenido como resultado de las pruebas de seguridad, y como resultado las remediaciones que se deben implementar para ejecutar los planes de acción y lograr reducir las vulnerabilidades.

Segregación de permisos: Tener en cuenta que los permisos de acceso solo deben estar asignado a los responsables de los desarrollos con acceso con acceso a los diferentes ambientes. 

Seguridad en la ofuscación de datos.  Como se ha venido planteando, los mecanismos para el ofuscamiento de los datos, a partir de los diferentes mecanismos de cifrados, como el TLS, SSL y HTTPS. 

Solucionar de manera correcta los problemas de seguridad: La identificación de un problema de seguridad, y la solución deberá plantearse a partir de pruebas que permitan verificar que la falla de seguridad ha sido solucionada. Estos resultados serán dados con los reportes de la prueba realizadas sobre las soluciones a través de la metodología del OWASP (Open Web Application Security Project). 

Codificación: 
Se mencionan los principales controles que se deben tener en cuenta para la realización de la codificación del software: 
* Capa de datos. 
* Gestión de Logs. 
* Controles de acceso. 
* Codificación de caracteres. 

LINEAMIENTOS.
Tipo de sistema: 

Los sistemas de información debe ser aplicaciones web, compatible con los navegadores que encabecen el mercado, actualmente: Chrome, Internet Explorer, Mozilla Firefox, o cualquier otro navegador. Deberá ser compatible con dispositivos móviles, por lo que el diseño deberá ser responsive
Accesibilidad

Los sistemas web desarrollados deberán dar cumplimiento a los estándares de accesibilidad y usabilidad definidos por el Ministerio de las tecnologías de la Información y las comunicaciones MINTIC.

REPOSITORIO
El repositorio del código fuente se encuentra en Azure DevOps, y para ser accedido deberá ser con la cuenta de correo corporativo.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Análisis de requerimientos**|application-component|Se identifican los requerimientos funcionales y no funcionales que sirven como instrumento para el desarrollo de las soluciones. <br>La etapa de análisis terminará con el entendimiento de los requerimientos y la priorización de estos.  <br>La identificación de los nuevos requerimientos que surjan por parte del cliente, serán revisado y validados para su posterior aprobación.  ||
|**Desarrollo del Sistema.**|application-component|La presente fase del ciclo de vida, se da a partir de la construcción, adaptación e integración de la solución. El equipo de desarrollo implementará la solución, incorporando metodología ágil, con la planeación, ejecución de Sprint, con retroalimentación y retrospectivas cíclicas o iterativas hasta que finalice el desarrollo de la solución, se tendrá en cuenta el desarrollo de los códigos fuentes documentados y probados, bases de datos de las soluciones y la documentación técnica.||
|**Despliegue en productivo.**|application-component|Se despliega en producción para iniciar el consumo por parte de los servidores públicos, contratistas, aprendices y/o practicantes de la Procuraduría General de la Nación. <br>Se realizará el acompañamiento para el despliegue para garantizar el correcto funcionamiento de las soluciones desarrolladas, y las actividades de conocimientos con sus manuales establecidos.||
|**Diseño y arquitectura del Sistema.**|application-component|El detalle de los componentes se generará a partir de la definición de la arquitectura de software que definirá los patrones y lineamientos para la construcción de las soluciones, que estarán definidos en el documento de arquitectura de Software y planteará la arquitectura de i) Software, ii) datos, iii) infraestructura y iv) modelo de Seguridad. ||
|**Fase de Pruebas.**|application-component|El desarrollo de la presente fase permitirá crear el ambiente adecuado para la ejecución de las pruebas, que permitirá registrar los resultados de las pruebas realizadas.  <br>Se realizan pruebas integrales y/o funcionales con el fin de determinar la correcta operación de las soluciones o si es necesario efectuar cambios sobre alguna inconsistencia presentada por algún error o problemas de ejecución en el sistema desarrollado.  <br>Pruebas de Sistemas: Se tendrán en cuenta la realización de pruebas que permitan validar el correcto funcionamiento de cada módulo de las soluciones, con el fin de verificar que cada módulo funciones de forma correcta. (rendimiento, concurrencia, Pruebas de carga y estrés). <br>Pruebas de funcionalidad: Se realizarán las pruebas de herramientas para garantizar que las soluciones cumplen con los objetivos definidos y especificados, teniendo en consideración los diferentes escenarios de integración con otros aplicativos propios de la procuraduría general de la Nación.  <br>Pruebas de vulnerabilidad: Se realizarán las pruebas de seguridad y generación de informe que permitirá identificar las posibles vulnerabilidades del desarrollo de las soluciones propuestas.  ||
|**Levantamiento y analisis de requerimientos**|application-component|||
|**Pruebas de seguridad (Open Web Application Securityu Project)**|business-process|||
|**Metodología de desarrollo Seguro.**|grouping|||

<br>

## Seguridad. 6. Auditoría
![Vista. Seguridad. 6. Auditoría](images/Seguridad.6.Auditoría.png){#fig:Seguridad.6.Auditoría width=}

El histórico de transacciones queda registrado en cada tabla donde se guarda la información y una especial llamada HistoryLogs para el tema de auditoría. Ver la siguiente estructura que presenta el log dando cumplimiento al requerimiento de seguridad frente al registro de eventos:

Esto permite tener registro de la tabla afectada, los datos afectados, el registro afectado, el tipo de evento asociado a la transacción, la fecha de la transacción, la dirección IP del origen y el usuario quién realizó la misma.
Del mismo modo, cada entidad dentro del sistema cuenta con los atributos relacionados en el json como complemente a la trazabilidad de la información

### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**BD SQL Server**|application-component|Los datos estarán procesados y almacenados en las bases de datos, el cual tendra implementados mecanismos de seguridad para el cifrado de los datos. <br>Para el respaldo de las bases de datos en los ecosistemas de Dev, Test, Prod se cuenta con las siguientes políticas de retención de copias de seguridad y frecuencia de copias de seguridad definidas en el gestor de bases de datos. <br>Para la base de datos de seguridad y configuración de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de 12 semanas <br>para las copias de seguridad semanales, 12 semanas de conservación para la primera copia de seguridad de cada mes, y una conservación de 12 semanas de una copia de seguridad anual.<br>Para la base de datos de datos y trazabilidad de transacciones de la aplicación se tiene un plan de copia completo cada 12 horas (PITR) en una franja de tiempo de 35 días. Adicionalmente cuenta con un LTR de conservación de <br>52 semanas para copias de seguridad semanales, 52 semanas de conservación para la primera copia de seguridad de cada mes, y una conservación de 52 semanas de una copia de seguridad anual. Esto con la finalidad de que al <br>ser una base de datos transaccional precisa de una conservación completa de los años transaccionales. <br>||
|**Logs de Auditoría.**|application-component|El histórico de transacciones queda registrado en cada tabla donde se guarda la información y una especial llamada HistoryLogs para el tema de auditoría. En los documentos definidos del proyecto se observa la estructura que presenta el log dando cumplimiento al requerimiento de seguridad frente al registro de eventos. <br>Esto permite tener registro de la tabla afectada, los datos afectados, el registro afectado, el tipo de evento asociado a la transacción, la fecha de la transacción, la dirección IP del origen y el usuario quién realizó la misma.<br>Del mismo modo, cada entidad dentro del sistema cuenta con los atributos relacionados en el json como complemente a la trazabilidad de la información.<br>Se tendrán registros de los ingresos al sistema la aplicación y las actividades realizados por los usuarios.<br>||
|**Servidores Públicos, Contratistas, Practucantes, y/o Aprendices.**|business-actor|||
|**Consultar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran Consultar informacion sobre las diferentes soluciones. ||
|**Modificar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que tendrán acceso a modificar/ Actualizar informacion sobre las diferentes soluciones. ||
|**Procesar**|business-interaction|Permitirá identificar  los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran inactivar información sobre los diferentes sistemas de información. ||
|**Registrar**|business-interaction|Permitirá definir los Servidores públicos, Contratistas, Practicantes y/o aprendices que podran registrar informacion sobre las diferentes soluciones. ||
|**Roles**|business-role|||

<br>

## Seguridad. 7. Owasp
![Vista. Seguridad. 7. Owasp](images/Seguridad.7.Owasp.png){#fig:Seguridad.7.Owasp width=}

El objetivo del presente requerimiento de seguridad tiene por objetivo valuar la preparación de Sistema Único de información de la entidad (SUI), con el objetivo de detectar posibles fallos de seguridad frente a los diferentes riesgos externos que puedan afectar la disponibilidad del sistema.

Durante todo el proceso se realizarán pruebas de análisis de vulnerabilidades que pueda tener el sistema. Se establecerán puntos donde el software esté preparado para dicho análisis. En conjunto con el líder de Seguridad, se analizarán las posibles vulnerabilidades y se revisarán cuáles pueden ser mitigadas y cuáles pueden ser omitidas. 
Para el paso a producción, se realizará un último análisis de vulnerabilidades y se tendrá en cuenta la revisión de las acciones de mitigación, con el fin que se hayan resuelto. 

La empresa establecerá buenas prácticas para el desarrollo seguro de software, a partir de la implementación del estándar internacional OWASP (Open Web Application Security Project). El propósito principal será garantizar la seguridad de las soluciones de la Procuraduría General de la Nación PGN.  Se tiene en cuenta lineamientos técnicos de acuerdo con las normas establecidas en top ten (10) del OWASP: 

Código de Inyección SQL:
Vulnerabilidad que se puede presentar por intermedio de peticiones o consultas a las bases de datos, y las entradas de la aplicación no son controladas debidamente. 

Controles: 
- Descarte de caracteres especiales, espacios que innecesarios del lado del cliente y/o servidor. 
- Verificación de caracteres incluidos en consultas SQL o LDAP, para el lado cliente como servidor. 
- Limitación cantidad de caracteres del campo creado. 
- Verificación del resultado de consulta, que genere resultado de consulta o ningún resultado (Si es mostrado más de un resultado, deberá ser considerado error). 
- Numero de intentos fallidos por ingreso de contraseñas. 

Falla en las autenticación y Administración de Sesión: 
Presentada debido a las fallas en la administración de las funciones de autenticación o sesión. (Como exposición de usuarios, contraseñas e identificador único).

Controles:
- Descarte por caracteres especiales. Espacios innecesarios como para el lado del servidor y cliente.
- Verificación de meta caracteres SQL o LDAP, para el lado del servidor y cliente.
- Validar el uso del método POST, si se envían datos de servidores públicos y/o contratistas.
- No permitir el almacenamiento de datos de los funcionarios en las cookies. 
- Limitación de los tiempos en las sesiones. 

Técnicas de Cross Site Scripting XSS:
Vulnebilidad presentada cuando los datos de entrada son utilizados para desarrollar el contenido del sistema de información, sin validar la información que se envía por la URL.

Controles: 
- Revisar la incorporación de caracteres especiales, espacios que no sean necesarios dentro del campo de texto, así como para el lado del cliente y el servidor. 

Referencias directas a objetos de forma insegura:
Presentada cuando se referencia a un objeto interno, tal como directorio, archivo, algún registro de la base de datos BD en la URL, y no establecen los respectivos controles para el acceso a los recursos. 

Controles:
- Evitar el uso de campo de referencia, podrá ser modificado con facilidad. 
- Verificación de objeto válido en el envío de datos. 
- Identificar los tipos de datos y objetos a enviar y los métodos de uso para cada uno de estos. 

Cross site Request Forgery (CSFR):
Presentado en aplicaciones donde las peticiones son fáciles de predecir a partir del uso de comandos que son transmitidos por un usuario desconocido. 

Controles: 
- Evitar variables en las URL, si es posible utilizarlas, se deberá comprobar la información que contiene. 
- Tener en cuenta el envío de información que se envía por las URL. 
- Tener en cuenta el uso de token como herramienta de validación. 
- Validación de sesiones. 

Pobre Mala Configuración de Seguridad:
Puedo presentarse cuando se dejan las cuentas de accesos por defecto, archivos y directorios si establecer controles de seguridad, generando puertas traseras que pueden ser aprovechadas por los ciberdelincuentes para vulnerar el sistema de información. 
Controles:
- Asignar nuevas configuraciones a las definidas de fábrica. 
- El personal de infraestructura deberá tener en cuenta los requerimientos de la aplicación para establecer las configuraciones adecuadas. 
- Se debe tener en cuenta la habilitación de los servicios estrictamente necesarios. 

Almacenamiento inseguro de Criptografía:
Se presenta por debilidades en el proceso de implementación de controles criptográficos, algoritmos de cifrado y almacenamiento inseguro de llaves. 

Controles: 
- Algoritmos de cifrado (AES, SHA-256). 
- Para el uso de controles asimétricos, tener en cuenta la custodia de las llaves privadas. 
- Seguridad en la capa de transporte TLS y certificados SSL. 
- Cifrado de datos sensibles. 

Falla al restringir acceso por URL: 
Se presenta cuando se generan solicitudes a las páginas y no se encuentran protegidas adecuadamente. Son modificadas las URL para obtener el acceso con privilegios. 

Controles: 
- La cuenta de algún servidor público con menor privilegio de acceso a la solución, modificar la URL para verificar el acceso, si es aceptado el acceso, se identifica que el sistema de información es vulnerable. 

Redirrecionamiento y reenvíos sin validación: 
Con frecuencia las aplicaciones envían hacia otras páginas cuando se ejecutan parámetros que no son validados, el atacante puede definir el sitio al que se quiere re direccionar. 

Controles: 
- Validación del campo de referencia, analizador de registros web, para proteger de ataques XSS y otros tipos de ataques. 
- Verificación de privilegios. 

Insuficiente protección de la capa de transporte: 
Se presenta si la información que viaja por internet no se encuentra debidamente protegida. Un usuario externo que monitoree la red, podrá obtener información (Usuarios, Contraseñas e Identificación). 
Controles: 
- Vulnerabilidad enfocada a nivel de infraestructura. Podrá ser utilizado un Snnifer para el monitoreo de la red. 

Los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWASP Cheat Sheet, permitirá realizar pruebas de seguridad integrando el analisis de vulnerabilidades, y pruebas de Ethical Hacking. 
Los resultados permitirán identificar los requisitos de seguridad que los sistemas de información o servicios web deberán cumplir.
La metodología empleada tendrá las siguientes fases: 

* FASE DE RECONOCIMIENTO: 
Se recolectará toda la información posible, usando diferentes técnicas como:
* Recopilación de dominios/IPs/puertos/servicios
* Recopilación de metadatos
* Uso de Google Dorks.

* ANÁLSIS DE VULNERABILIDADES: 
Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. 

* EXPLOTACIÓN: 
* Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: 
* Inyección de código
* Inclusión de ficheros locales o remotos
* Evasión de autenticación
* Carencia de controles de autorización
* Ejecución de comandos en el lado del servidor
* Ataques tipo Cross Site Request Forgery
* Control de errores
* Gestión de sesiones
* Fugas de información
* Secuestros de sesión
* Comprobación de las condiciones para realizar una denegación de servicio.
	
* POST EXPLOTACIÓN:
Se definieron varios objetivos externos que correspondían, principalmente, a la aplicación web que estará expuestos a internet. 

En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.

HOST: apps-prod-suiruntime.azurewebsites.net
URL: tps://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz

IP
135.181.185.207

En una posterior revisión se pudo evidenciar que el servidor web exponía información sobre su versión y detalles de la plataforma que podrían ayudar a un atacante mientras evalúa un ataque efectivo contra su infraestructura.
La base fundamental de todas las aplicaciones web es una petición http, que es una petición HTTP, las peticiones HTTP, es la forma en que se comunican clientes con servidores en la web.
Se evidenció cómo se realiza desde el cliente hacia un servidor web e internet en este caso es apps-prod-suiruntime.azurewebsites.net, En pantalla se observó  diferentes elementos que componen una petición HTTP, con el metodo GET, seguidamente se pudo observar la versión del protocolo HTTP que es fue versión 1.1, el protocolo fue diseñado cuando se creó la internet.

UserAgent: Un UserAgent es como una huella digital que identifica al cliente que se está utilizando, en este caso se está utilizando Mozilla 5.0, Windows NT 10, wid64, (x64), Chrome/115.0.5790.171 Safari/537.36, Muchas veces se utiliza por desarrolladores para manejar el comportamiento de una aplicación web.

El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas.

Se tiene propuesto realizar nuevas pruebas en ambiente productivo para determinar el nivel de expósición y revisar y tratar los resultados ante eventuales fallas de seguridad. 



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component|||
|**Cliente**|business-actor|||
|**Servidor web Aplicaciones**|node|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Documento de Relación de Tecnologías y Licenciamiento
## Doc.6.Anexos.1a. Archimate
![Vista. Doc.6.Anexos.1a. Archimate](images/Doc.6.Anexos.1a.Archimate.png){#fig:Doc.6.Anexos.1a.Archimate width=}

Simplificación del lengiuaje estándar de descripción de arquitectura usado en el proyecto actual,  Módulos Central Sistema Único de Información, de PGN.

A manera de leyenda, el siguiente ejemplo hace demostración breve de la manera cómo el estándar Archimate 3.0+ puede representar a los procesos de negocio, componentes de aplicación, y tecnologías e infraestructura dentro de los aspectos del proyecto actual. Así mismo demuestra, la relación entre elementos y cómo se soportan mutuamente con el objeto de especificar, en este caso, un proceso.

| Fuente: https://www.leanix.net/en/wiki/ea/what-is-archimate#ArchiMate-example

El estandar completo puede ser complementado de los sitios oficiales y públicos del OpenGroup, https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.opengroup.org/archimate-forum/archimate-overview&ved=2ahUKEwjuibvxlLGGAxW5VzABHQBgBgwQFnoECBAQAQ&usg=AOvVaw28xEDPm1BrbapO4oCaUYb9.



### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|

<br>


``Generated on: Tue May 28 2024 16:27:41 GMT-0500 (COT)``

# Arquitectura de Software: Infraestructura
* [Diagrama de Infraestructura de TI](#diagrama-de-infraestructura-de-ti)
	* [Migracion.3. Infraestructura](#migracion.3.-infraestructura)
	* [Lineabase.1a.SUI Componentes. Infraestrcutura](#lineabase.1a.sui-componentes.-infraestrcutura)
	* [Lineabase.0.SUI Aplicación. Física](#lineabase.0.sui-aplicación.-física)
	* [Seguridad.2. Lineabase.0.SUI Aplicación](#seguridad.2.-lineabase.0.sui-aplicación)
	* [Migracion.6. Migración de datos](#migracion.6.-migración-de-datos)
	* [Migracion.3.a Infraestructura. Transición](#migracion.3.a-infraestructura.-transición)
* [Documento sobre especificaciones técnicas de infraestructura TI](#documento-sobre-especificaciones-técnicas-de-infraestructura-ti)
	* [Lineabase.0.SUI Aplicación. Física](#lineabase.0.sui-aplicación.-física)


<div style="page-break-before: always;"></div>
\newpage

# Diagrama de Infraestructura de TI
## Migracion.3. Infraestructura
![Vista. Migracion.3. Infraestructura](images/Migracion.3.Infraestructura.png){#fig:Migracion.3.Infraestructura width=}

Identificación de los ítems de infraestructura tecnológica, nodos, redes, cómputo, y almacenamiento relacionado con los módulos del SUI Migrado, 2023.

### Representación de Infraestructura

1. Canales
1. Redes
1. Grupo de Servidores
1. Grupo de Servicios
1. Integración
1. Seguridad
1. Almacenamiento
1. Comunicación / Ruteo

<br>

### Especificaciones Plataformas y Versiones
* Angular, versión 11
* Node Js, versión 14.16
* Net Entity Framework, versión 4.7
* Sequelize, versión 5.3

<br>

### Especificaciones de Librerías y Dependencias

* Web Server (IIS) role
* Windows Process Activation Service feature
* Microsoft .NET Framework version 3.5
* Microsoft .NET Framework version 4.7.2
* Microsoft SQL Server 2012 Service Pack 4 Native Client
* Microsoft WCF Data Services 5.6
* Microsoft Identity Extensions
* Microsoft Information Protection and Control Client 2.1 (MSIPC)
* Cumulative Update Package 7 for Microsoft AppFabric 1.1 for Windows Server (KB 3092423)
* Visual C++ Redistributable Package for Visual Studio 2012
* Visual C++ Redistributable Package for Visual Studio 2017

<br>

### Especificaciones Base de Servidores

| Servidor de Aplicaciones | Especificaciones del Servidor            |
|-------------------|-------------------------------------------------|
| Sistema Operativo | Windows Server 2019 Standard or Datacenter x64  |
| RAM               | 16 GB                                            |
| CPU               | 64 Bits, mínimo 4 Cores > 2 Ghz                 |
| Discos            | C: 120 GB, D: 16 GB    |    
| Físico/virtual    | Virtual                                         |
| Roles / Features  | Web Server (IIS) role                           |
|                   | Windows Process Activation Service feature      |
|                   | Microsoft .NET Framework version 3.5            |

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP2.SIRI**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIRI.<br>||
|**APP2.SIRI**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIRI.<br>||
|**APP3.Control interno**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Control Interno.<br>||
|**APP3.Control interno**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Control Interno.<br>||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP5.SIM**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIM.<br>||
|**APP5.SIM**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIM.<br>||
|**APP6.Estratego**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Estratego.<br>||
|**APP6.Estratego**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Estratego.<br>||
|**App Movíl**|application-component|||
|**App PGN Móvil**|application-component|||
|**App PGN Móvil**|application-component|||
|**App PGN Web**|application-component|||
|**App PGN Web**|application-component|||
|**Cola ppal**|application-component|||
|**Cola reintento**|application-component|||
|**Portal Funcionarios**|application-component|||
|**Portal Personas**|application-component|||
|**Portales**|application-component|||
|**Reverse Proxy**|application-component|||
|**Reverse Proxy**|application-component|||
|**Reverse Proxy**|application-component|||
|**Service Control Plane**|application-component|||
|**Https**|application-interface|||
|**Https**|application-interface|||
|**gRPC**|application-interface|||
|**gRPC**|application-interface|||
|**API Consumer**|business-actor|||
|**API Providers**|business-actor|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Private virtual network API Management**|communication-network|||
|**Private virtual network Kubernates**|communication-network|||
|**Mobile**|device|||
|**PC/Laptop**|device|||
|**Regionales**|device|||
|** Database por módulo - CQRS**|grouping|||
|**Canales**|grouping|||
|**Comunicación y Ruteo**|grouping|||
|**Control Plane**|grouping|||
|**Control transaccional**|grouping|||
|**Data Plane**|grouping|||
|**Data Plane**|grouping|||
|**Grupo Service 1**|grouping|||
|**Grupo Service 2**|grouping|||
|**Integración**|grouping|||
|**Management Plane **|grouping|||
|**Managemnet Plane**|grouping|||
|**Monitoreo y Métricas consumo**|grouping|||
|**SUI - Arquitectura Tecnologías (infraestructura)**|grouping|||
|**Seguridad / Protección**|grouping|||
|**Servidores**|grouping|||
|**Dependencias**|location|||
|**SUI Migración. Procuraduría General de la Nación. 2023**|location|||
|**Bastion Host Management**|node|||
|**Private Endpoint per microservices**|path|||
|**Vnet Bastion**|path|||
|**APP1.Relatoría**|system-software|||
|**APP1.Relatoría**|system-software|||
|**APP2.SIRI**|system-software|||
|**APP2.SIRI**|system-software|||
|**APP3.Control interno**|system-software|||
|**APP3.Control interno**|system-software|||
|**APP4.Hominis**|system-software|||
|**APP4.Hominis**|system-software|||
|**APP5.SIM**|system-software|||
|**APP5.SIM**|system-software|||
|**APP6.Estratego**|system-software|||
|**APP6.Estratego**|system-software|||
|**App PGN Móvil**|system-software|||
|**App PGN Móvil**|system-software|||
|**App PGN Web**|system-software|||
|**App PGN Web**|system-software|||
|**Management Bastion**|system-software|||
|**Internal load balanced**|technology-function|||
|**Message broker**|technology-function|||
|**Topic**|technology-function|||
|**www pgn com**|technology-interface|||
|** Event Hubs**|technology-service|||
|** Event Hubs**|technology-service|||
|**API Gateway**|technology-service|||
|**API Management**|technology-service|||
|**API Management Service**|technology-service|||
|**Active Directory**|technology-service|||
|**Application Monitor**|technology-service|||
|**Event Grid**|technology-service|||
|**Infrastructure Monitor**|technology-service|||
|**Kay vault**|technology-service|||
|**Network Security Group**|technology-service|||
|**Platform Monitor**|technology-service|||
|**SQL instance config data  **|technology-service|||
|**SQL instance operational data **|technology-service|||
|**Servidores**|technology-service|||
|**Servidores central**|technology-service|||

<br>

## Lineabase.1a.SUI Componentes. Infraestrcutura
![Vista. Lineabase.1a.SUI Componentes. Infraestrcutura](images/Lineabase.1a.SUIComponentes.Infraestrcutura.png){#fig:Lineabase.1a.SUIComponentes.Infraestrcutura width=}

Relación de dependencias de infraestructura con los servicios que integran el modelo de aplicación de SUI Migrado, 2023.

### Elementos de Infraestructura SUI Migrado

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
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
|**Vista web**|application-component||*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**IGA: Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI, Fase 1. PaaS, SaaS**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SUI**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) Control de acceso**|node|Sistema de autenticación del directorio activo.||

<br>

## Lineabase.0.SUI Aplicación. Física
![Vista. Lineabase.0.SUI Aplicación. Física](images/Lineabase.0.SUIAplicación.Física.png){#fig:Lineabase.0.SUIAplicación.Física width=}

Procuraduría General de la Nación (PGN), módulo Sistema Único de Información (SUI), 2023. Elementos físicos que soportan a la aplicación doc Sistema Único de Información (SUI) de la PGN, actual Fase I y existente en Fase II. Presentación de componentes de software y tecnología física (hardware) implementados en la Fase I y requeridos por Fase II (presente proyecto).

### Representación de Arquitectura
Con una arquitectura orientada a servicios Sistema Único de Información (SUI) recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>

### Especificaciones Plataformas y Versiones
* Angular, versión 11
* Node Js, versión 14.16
* Net Entity Framework, versión 4.7
* Sequelize, versión 5.3

<br>

### Especificaciones de Librerías y Dependencias
* Web Server (IIS) role
* Windows Process Activation Service feature
* Microsoft .NET Framework version 3.5
* Microsoft .NET Framework version 4.7.2
* Microsoft SQL Server 2012 Service Pack 4 Native Client
* Microsoft WCF Data Services 5.6
* Microsoft Identity Extensions
* Microsoft Information Protection and Control Client 2.1 (MSIPC)
* Cumulative Update Package 7 for Microsoft AppFabric 1.1 for Windows Server (KB 3092423)
* Visual C++ Redistributable Package for Visual Studio 2012
* Visual C++ Redistributable Package for Visual Studio 2017

<br>

### Especificaciones Base de Servidores

| Servidor de Aplicaciones | Especificaciones del Servidor            |
|-------------------|-------------------------------------------------|
| Sistema Operativo | Windows Server 2019 Standard or Datacenter x64  |
| RAM               | 16 GB                                            |
| CPU               | 64 Bits, mínimo 4 Cores > 2 Ghz                 |
| Discos            | C: 120 GB, D: 16 GB    |    
| Físico/virtual    | Virtual                                         |
| Roles / Features  | Web Server (IIS) role                           |
|                   | Windows Process Activation Service feature      |
|                   | Microsoft .NET Framework version 3.5            |

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**www pgn com**|technology-interface|||

<br>

## Seguridad.2. Lineabase.0.SUI Aplicación
![Vista. Seguridad.2. Lineabase.0.SUI Aplicación](images/Seguridad.2.Lineabase.0.SUIAplicación.png){#fig:Seguridad.2.Lineabase.0.SUIAplicación width=}

## Metodología Seguridad Sistema Único de Información (SUI)
Los mecanismos de autorización para el acceso a los sistemas de información de la Procuraduría General de la Nación describen la forma de cómo se restringe el acceso a los diferentes módulos Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros, y que se considera un mecanismo de protección que ayuda a reaccionar ante cualquier operación no autorizada. 

El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  

Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros Colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  

EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. 

### Gestión de identidades y Control de acceso
Gestor de identidades: En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  

Gestor de roles: La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. 

Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología. 

### Reglas de Creación de Usuarios e Identifiación de Privilegios
En este ítem se deben identificar las herramientas con las que cuenta la  entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 
Identificación de Roles y Privilegios. 

Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 

### Aprovisionamiento de Cuentas
Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”.

### Mecanismos de Control de Acceso
Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 

### Definición de Privilegios y Accesos
Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  

### Configuración de Permisos 
La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  

En este ítem se deben identificar las herramientas con las que cuenta la entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. 

### Identificación de Roles y Privilegios 
Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. 

### Aprovisionamiento de Cuentas 
Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. 

### Establecimiento de mecanismos de control de acceso 
Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. 

### Definición de Privilegios y Accesos
Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  

### Configuración de Permisos
La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  

Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones:  

Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso.  

Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  

Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  

Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación. 

Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales.  

Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismo de seguridad para evitar amenazas de ataques.  

Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. 

Como mecanismos se propone implementar estos mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.

Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y así evitar manipulación de información confidencial. La Seguridad que brinda SSL, da garantía para acceder a los aplicativos de PNG. 

### Cómo implementar certificados SSL
Podrán ser adquiridos a través del proveedor de dominios.

TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envío de la información, proporcionando una autenticación sólida, restringiendo la manipulación, interceptación y alteración de mensajes.

La última versión del TLS es la 1.3


### Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Autenticación**|business-object|||
|**Autorización**|business-object|||
|**Cifrado de Datos en tránsito**|business-object|||
|**Cifrado de datos en tránsito**|business-object|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Firewall BDD**|node||*brecha:* 100<br>|
|**Network Firewall/WAF**|node||*brecha:* 100<br>|
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) 1**|node|Sistema de Seguridad (LDAP) 1. Control de acceso internet, <br>La autenticación podrá estar integrada con el directorio activo, a partir de la generación de codigo para ek ingreso con 2FA, que podrá generar un código la plataforma de correo corporativo, el cual solicitará el codigo de autenticacion y una vez ingreado podrá redirigir al sitio.<br>|*brecha:* 100<br>|
|**Sistema de Seguridad (LDAP) 2**|node|Sistema de Seguridad (LDAP) 2. Control de acceso internet, <br>La solución se podra integrar con el directorio activo, a partir de la generación del 2FA, que podrá generar un  codigo por desde la plataforma de office 365, el cual solicitará el codigo de autenticacion y una vez ingreado podrá acceder al sitio. <br>|*brecha:* 100<br>|
|**www pgn com**|technology-interface|||

<br>

## Migracion.6. Migración de datos
![Vista. Migracion.6. Migración de datos](images/Migracion.6.Migracióndedatos.png){#fig:Migracion.6.Migracióndedatos width=5.32in}

Modelo de acceso a datos de negocio del SIM. 

La imagen siguiente presenta la organización de los ítems de transporte de datos de negocio necesarios para que los módulos del SUI puedan recolectar, procesar, integrar y almacenarlo de forma organizada y escalable.

Mediante esta organización, los datos de negocio son transportados desde sus respectivas fuentes mediante interfaces (principio de extensión y mantenibilidad referidos en las restricciones de la arquitectura del SUI Migrado). Los datos externos, entendidos como los de otros proveedores, son obtenidos mediante un intermediario: una API externa (_reverse proxy_).

Consideramos tres tipos datos: datos transaccionales, históricos y externos, y presentamos una manera distinta de tratarlos y transportarlos.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central)**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 2**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) 3**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**cc:PGN SUI (módulo central) N**|application-collaboration|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 2**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI 3**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
|**API SUI N**|application-interface|API de representación del módulo. Centralización de la comunicación con otros módulos del SUI migrado.<br>||
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
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 2**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 3**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App 4**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||

<br>

## Migracion.3.a Infraestructura. Transición
![Vista. Migracion.3.a Infraestructura. Transición](images/Migracion.3.aInfraestructura.Transición.png){#fig:Migracion.3.aInfraestructura.Transición width=3.4in}

Escalabilidad física (escalabilidad horizontal) realizada mediante el incremente de procesamiento (servidores) para ejecutar los casos de uso, que a su vez están implementados por componentes ejecutables, como servicio, u objetos C#.

En lo posible, los equipos de hardware, o máquinas virtuales nuevas no interfieren con la base actual.


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**Persistencia**|application-collaboration|||
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP1.Relatoría**|application-component|Módulo del SUI. Relatoría pública. Publicación de información de referencia para funcionarios y personas naturales, cientes de la PGN.<br> ||
|**APP2.SIRI**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIRI.<br>||
|**APP2.SIRI**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIRI.<br>||
|**APP3.Control interno**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Control Interno.<br>||
|**APP3.Control interno**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Control Interno.<br>||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP4.Hominis**|application-component|Módulo del SUI. Gestión de capital humano, funcionarios y cargos de representación y libre remoción de la PGN.<br>||
|**APP5.SIM**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIM.<br>||
|**APP5.SIM**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: SIM.<br>||
|**APP6.Estratego**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Estratego.<br>||
|**APP6.Estratego**|application-component|Módulo central SUI migrado. Módulo independiente y asignado a un dominio particular de la PGN: Estratego.<br>||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App Movíl**|application-component|||
|**App PGN Móvil**|application-component|||
|**App PGN Móvil**|application-component|||
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|||
|**App PGN Web**|application-component|||
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Cola ppal**|application-component|||
|**Cola reintento**|application-component|||
|**Config**|application-component||*plataforma:* cs<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Portal Funcionarios**|application-component|||
|**Portal Personas**|application-component|||
|**Portales**|application-component|||
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Reverse Proxy**|application-component|||
|**Reverse Proxy**|application-component|||
|**Reverse Proxy**|application-component|||
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Service Control Plane**|application-component|||
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component||*plataforma:* html<br>|
|**Https**|application-interface|||
|**Https**|application-interface|||
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**gRPC**|application-interface|||
|**gRPC**|application-interface|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**API Consumer**|business-actor|||
|**API Providers**|business-actor|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Private virtual network API Management**|communication-network|||
|**Private virtual network Kubernates**|communication-network|||
|**Mensaje: JSON**|data-object|||
|**Mobile**|device|||
|**PC/Laptop**|device|||
|**Regionales**|device|||
|** Database por módulo - CQRS**|grouping|||
|**Canales**|grouping|||
|**Comunicación y Ruteo**|grouping|||
|**Control Plane**|grouping|||
|**Control transaccional**|grouping|||
|**Data Plane**|grouping|||
|**Data Plane**|grouping|||
|**Fase 1. Arquitectura SUI 1.0**|grouping|||
|**Fase 2. Arquitectura SUI 1.5**|grouping|||
|**Fase 3. Arquitectura SUI 2.0**|grouping|||
|**Grupo Service 1**|grouping|||
|**Grupo Service 2**|grouping|||
|**Infraestructura SUI, Fase 1. PaaS, SaaS**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**Infraestructura SUI. Fase 2. SaaS**|grouping|||
|**Integración**|grouping|||
|**Management Plane **|grouping|||
|**Managemnet Plane**|grouping|||
|**Monitoreo y Métricas consumo**|grouping|||
|**PGN SUI**|grouping|Esta vista presenta y describe los ítems de arquitectura del SUI Migrado que requieren licenciamiento para operar y cumplir con el objetivo principal de la migración que es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados.<br>Los elementos realtados en verde en el diagrama incurren en una renta, bien sea, o por consumo de cómputo en la nube de Microsoft, o por el costo de una licencia de uso. Por ejemplo, en el caso del servidor de reporte del SUI Migrado, es requerida una licencia de uso Power BI Pro, de pago mensual.<br>||
|**SUI - Arquitectura Tecnologías (infraestructura)**|grouping|||
|**Seguridad / Protección**|grouping|||
|**Servidores**|grouping|||
|**Dependencias**|location|||
|**SUI Migración. Procuraduría General de la Nación. 2023**|location|||
|**Balanceador**|node|||
|**Bastion Host Management**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) Control de acceso**|node|Sistema de autenticación del directorio activo.||
|**Private Endpoint per microservices**|path|||
|**Vnet Bastion**|path|||
|**Arquitectura SUI 1.0**|plateau|||
|**Arquitectura SUI 1.5**|plateau|||
|**Arquitectura SUI 2.0**|plateau|||
|**APP1.Relatoría**|system-software|||
|**APP1.Relatoría**|system-software|||
|**APP2.SIRI**|system-software|||
|**APP2.SIRI**|system-software|||
|**APP3.Control interno**|system-software|||
|**APP3.Control interno**|system-software|||
|**APP4.Hominis**|system-software|||
|**APP4.Hominis**|system-software|||
|**APP5.SIM**|system-software|||
|**APP5.SIM**|system-software|||
|**APP6.Estratego**|system-software|||
|**APP6.Estratego**|system-software|||
|**App PGN Móvil**|system-software|||
|**App PGN Móvil**|system-software|||
|**App PGN Web**|system-software|||
|**App PGN Web**|system-software|||
|**Management Bastion**|system-software|||
|**Internal load balanced**|technology-function|||
|**Message broker**|technology-function|||
|**Topic**|technology-function|||
|**www pgn com**|technology-interface|||
|**www pgn com**|technology-interface|||
|**www pgn com**|technology-interface|||
|** Event Hubs**|technology-service|||
|** Event Hubs**|technology-service|||
|**API Gateway**|technology-service|||
|**API Management**|technology-service|||
|**API Management Service**|technology-service|||
|**Active Directory**|technology-service|||
|**Application Monitor**|technology-service|||
|**Event Grid**|technology-service|||
|**Infrastructure Monitor**|technology-service|||
|**Kay vault**|technology-service|||
|**Network Security Group**|technology-service|||
|**Platform Monitor**|technology-service|||
|**SQL instance config data  **|technology-service|||
|**SQL instance operational data **|technology-service|||
|**Servidores**|technology-service|||
|**Servidores central**|technology-service|||

<br>

<div style="page-break-before: always;"></div>
\newpage

# Documento sobre especificaciones técnicas de infraestructura TI
## Lineabase.0.SUI Aplicación. Física
![Vista. Lineabase.0.SUI Aplicación. Física](images/Lineabase.0.SUIAplicación.Física.png){#fig:Lineabase.0.SUIAplicación.Física width=}

Procuraduría General de la Nación (PGN), módulo Sistema Único de Información (SUI), 2023. Elementos físicos que soportan a la aplicación doc Sistema Único de Información (SUI) de la PGN, actual Fase I y existente en Fase II. Presentación de componentes de software y tecnología física (hardware) implementados en la Fase I y requeridos por Fase II (presente proyecto).

### Representación de Arquitectura
Con una arquitectura orientada a servicios Sistema Único de Información (SUI) recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>

### Especificaciones Plataformas y Versiones
* Angular, versión 11
* Node Js, versión 14.16
* Net Entity Framework, versión 4.7
* Sequelize, versión 5.3

<br>

### Especificaciones de Librerías y Dependencias
* Web Server (IIS) role
* Windows Process Activation Service feature
* Microsoft .NET Framework version 3.5
* Microsoft .NET Framework version 4.7.2
* Microsoft SQL Server 2012 Service Pack 4 Native Client
* Microsoft WCF Data Services 5.6
* Microsoft Identity Extensions
* Microsoft Information Protection and Control Client 2.1 (MSIPC)
* Cumulative Update Package 7 for Microsoft AppFabric 1.1 for Windows Server (KB 3092423)
* Visual C++ Redistributable Package for Visual Studio 2012
* Visual C++ Redistributable Package for Visual Studio 2017

<br>

### Especificaciones Base de Servidores

| Servidor de Aplicaciones | Especificaciones del Servidor            |
|-------------------|-------------------------------------------------|
| Sistema Operativo | Windows Server 2019 Standard or Datacenter x64  |
| RAM               | 16 GB                                            |
| CPU               | 64 Bits, mínimo 4 Cores > 2 Ghz                 |
| Discos            | C: 120 GB, D: 16 GB    |    
| Físico/virtual    | Virtual                                         |
| Roles / Features  | Web Server (IIS) role                           |
|                   | Windows Process Activation Service feature      |
|                   | Microsoft .NET Framework version 3.5            |

<br>


### Catálogo de Elementos
| Nombre| Tipo| Descripción| Prop.
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz. Discos SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM 8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**www pgn com**|technology-interface|||

<br>


``Generated on: Fri Dec 15 2023 11:55:53 GMT-0500 (COT)``

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

## Modelo ER del SUI Migrado
Documento vista modelo físico de datos (modelo ER, entidad-relación) del Sistema Único de Información (SUI).



<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



