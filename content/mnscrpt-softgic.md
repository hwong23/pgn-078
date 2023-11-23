---
author: Softgic - PGN
title: Declaración de Arquitectura Migración Funcional SUI, PGN, 2023
subtitle: 
date: Noviembre, 2023
---

## Diagrama de Arquitectura de la Solución Propuesta: vista de integración
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Migracion.1a.b.SIU Contexto Módulos](images/Migracion.1a.b.SIUContextoMódulos.png){#fig:Migracion.1a.b.SIUContextoMódulos width=}
:::
::: {.column width="30%"}
La vista presenta en contexto a los módulos SUI migrados e indica los modos de comunicación, sincrónica/asincrónica, que utilizan.
:::
::::::::::::::

## Diagrama de Arquitectura de la solución propuesta: vista física
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Lineabase.0.SIU Aplicación. Física](images/Lineabase.0.SIUAplicación.Física.png){#fig:Lineabase.0.SIUAplicación.Física width=}
:::
::: {.column width="30%"}
Elementos de infraestructura física (hardware) para la implementación Fase II (presente proyecto) del  Sistema de Información Único, SIU de la PGN
:::
::::::::::::::

## Diagrama de Arquitectura de la Solución Propuesta: motivadores del negocio
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Migracion.1a.a.SIU Contexto Módulo](images/Migracion.1a.a.SIUContextoMódulo.png){#fig:Migracion.1a.a.SIUContextoMódulo width=}
:::
::: {.column width="30%"}
Módulos y submódulos del Sistema Único de Información (SUI) de la PGN. Todos los sistemas de información del SUI separan a los componentes misionales de los utilitarios.
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: interoperabilidad
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Migracion.1c.SIU Módulos Colaboración](images/Migracion.1c.SIUMódulosColaboración.png){#fig:Migracion.1c.SIUMódulosColaboración width=}
:::
::: {.column width="30%"}
La colaboración y comunicación de los componentes internos del SUI está mediada por interfaces contenidas dentro de los componentes misionales del SUI de PGN.
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Seguridad.2. Lineabase.0.SIU Aplicación](images/Seguridad.2.Lineabase.0.SIUAplicación.png){#fig:Seguridad.2.Lineabase.0.SIUAplicación width=}
:::
::: {.column width="30%"}
El proceso de autorización a los módulos del SUI de la PGN describe la forma cómo se restringe el acceso como mecanismo de protección que ayuda a reaccionar ante cualquier operación no autorizada
:::
::::::::::::::


## Clases y Componentes de Solución
:::::::::::::: {.columns}
::: {.column width="70%"}
![Vista. Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}
:::
::: {.column width="30%"}
Organización interna de los servicios y paquetes que integran cada submódulo del SUI Migrado de PGN. Todos los sistemas de información del SUI siguen esta misma estructura constituida por submódulos utilitarios (que sirven) a los componentes misionales del SUI.
:::
::::::::::::::



