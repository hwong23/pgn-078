---
author: Softgic - PGN
title: Declaración de Arquitectura Migración Funcional SUI, PGN, 2023
subtitle: 
date: Noviembre, 2023
---

## Tabla de Contenido
* Diagrama de Arquitectura de la Solución Propuesta: vista de integración
* Diagrama de Arquitectura de la solución propuesta: vista física
* Diagrama de Arquitectura de la Solución Propuesta: motivadores del negocio
* Diagrama de Arquitectura de la Solución Propuesta: interoperabilidad
* Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles

------

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
Colaboración y comunicación de los componentes internos del SUI mediada por interfaces provistas por el grupo de componentes misionales, PGN SUI: mantener reducido y controlado el número de interfaces.
:::
::::::::::::::


## Diagrama de Arquitectura de la Solución Propuesta: gestión de autenticación, usuarios y roles
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Seguridad.2. Lineabase.0.SIU Aplicación](images/Seguridad.2.Lineabase.0.SIUAplicación.png){#fig:Seguridad.2.Lineabase.0.SIUAplicación width=}
:::
::: {.column width="70%"}
### Lineabase.0.SIU Aplicación
Métodos de Seguridad del SIU Migrado

* Control de acceso y autorización basado en roles (RBAC)
* Gestión de identidades
* Aprovisionamiento de Cuentas
:::
::::::::::::::


## Diagrama de Clases y Componentes de Solución (a)
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.1b.1. SIU Módulos Componentes](images/Migracion.1b.1.SIUMódulosComponentes.png){#fig:Migracion.1b.1.SIUMódulosComponentes width=}
:::
::: {.column width="70%"}
### Migracion.1b.1. SIU Módulos Componentes
Componentes internos de los submódulos del sistema único de información migrado, SUI de PGN. Organización interna de los servicios y paquetes que integran cada submódulo del SUI. Todos los sistemas de información del SUI siguen esta directiva: estarán constituidos por submódulos dispuestos en relación de utilitarios (que sirven) a los componentes misionales del SUI, ubicados en el centro en el diagrama.
:::
::::::::::::::


## Diagrama de Clases y Componentes de Solución
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.1b.3. SIU Módulos Clases](images/Migracion.1b.3.SIUMódulosClases.png){#fig:Migracion.1b.3.SIUMódulosClases width=}
:::
::: {.column width="70%"}
### Migracion.1b.3. SIU Módulos Clases
* El diseño actual antepone un servicio como punto de acceso a un caso de uso, de tal forma que este se encarga únicamente (por responsabilidad) de coordinar las entradas y las salidas del caso de uso
* El modelo propicia la separación de la lógica de aplicación y la lógica de negocio. En este diseño, la primera está encapsulada en el Caso de Uso ejecutable (en el diagrama), mientras que la lógica de negocio lo está en una función de negocio.
:::
::::::::::::::



## Diagrama de Arquitectura de Integración Continua, DevOps y Despliegues de Capas
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.4. CI](images/Migracion.4.CI.png){#fig:Migracion.4.CI width=}
:::
::: {.column width="70%"}
### Migracion.4. CI
Las cadenas están separadas por tecnologías y plataformas distintas; son independientes y no presentan interbloqueos en cuanto a su ejecución. Pero, requieren administración integral.
:::
::::::::::::::


## Documento de Relación de Tecnologías y Licenciamiento
:::::::::::::: {.columns}
::: {.column width="30%"}
![Vista. Migracion.5. Licenciamiento](images/Migracion.5.Licenciamiento.png){#fig:Migracion.5.Licenciamiento width=}
:::
::: {.column width="70%"}
### Migracion.5. Licenciamiento
Los elementos resaltados de la vista actual requieren modelos de  licenciamiento variado, bien sea por usuario, núcleo, despliegue (instalación), o renta por consumo.
:::
::::::::::::::

