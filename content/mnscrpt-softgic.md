---
author: Softgic - PGN
title: Declaración de Arquitectura Migración Funcional SUI, PGN, 2023
subtitle: 
date: Noviembre, 2023
---

## Diagrama de Arquitectura de la Solución Propuesta: vista de integración
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.1a.b.SIU Contexto Módulos](images/Migracion.1a.b.SIUContextoMódulos.png){#fig:Migracion.1a.b.SIUContextoMódulos width=}
:::
::: {.column width="70%"}
### Migracion.1a.b.SIU Contexto Módulos
La vista presenta en contexto a los módulos SUI migrados e indica los modos de comunicación, sincrónica/asincrónica, que utilizan.
:::
::::::::::::::


## Diagrama de Arquitectura de la solución propuesta: vista física
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Lineabase.0.SIU Aplicación. Física](images/Lineabase.0.SIUAplicación.Física.png){#fig:Lineabase.0.SIUAplicación.Física width=}
:::
::: {.column width="70%"}
### Lineabase.0.SIU Aplicación. Física
Elementos de infraestructura física que soportan a la aplicación Sistema de Información Único, SIU de la PGN. Presentación de componentes de software y hardware requeridos por la implementación de Fase II (presente proyecto).
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: motivadores del negocio
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.1a.a.SIU Contexto Módulo](images/Migracion.1a.a.SIUContextoMódulo.png){#fig:Migracion.1a.a.SIUContextoMódulo width=}
:::
::: {.column width="70%"}
### Migracion.1a.a.SIU Contexto Módulo
Módulos y submódulos del Sistema Único de Información (SUI) de la PGN. Todos los sistemas de información del SUI siguen la directiva de separar a los componentes misionales de los utilitarios.
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: interoperabilidad
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.1c.SIU Módulos Colaboración](images/Migracion.1c.SIUMódulosColaboración.png){#fig:Migracion.1c.SIUMódulosColaboración width=}
:::
::: {.column width="70%"}
### Migracion.1c.SIU Módulos Colaboración
Patrón de Distribución y Colaboración estándar para el SUI.

La colaboración y comunicación de los componentes internos del SUI (grupo PFN SUI, en el diagrama) está mediada por interfaces. Estas son provistas por el grupo de componentes misionales, PGN SUI, hacia los submódulos externos. La intención es mantener reducido y controlado el número de interfaces.
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Seguridad.2. Lineabase.0.SIU Aplicación](images/Seguridad.2.Lineabase.0.SIUAplicación.png){#fig:Seguridad.2.Lineabase.0.SIUAplicación width=}
:::
::: {.column width="70%"}
### Lineabase.0.SIU Aplicación
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio API REST Base Node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración
:::
::::::::::::::


