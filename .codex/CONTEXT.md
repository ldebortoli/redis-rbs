# redis-rbs - Contexto del proyecto

## Descripcion general

Gema independiente y de código abierto que distribuye firmas RBS para la gema
`redis`. Su primera versión apunta a `redis` 5.4.1 y cubre la API pública del
cliente, sus módulos de comandos, pipelines, suscripciones y clases auxiliares.

## Estado detectado

- Ruta: `C:\Users\calei\Documents\redis-rbs`
- Stack: Ruby, RBS y Bundler
- Git: True
- Rama detectada: `main`
- Remoto origin: `https://github.com/ldebortoli/redis-rbs.git`
- RubyGems: `https://rubygems.org/gems/redis-rbs`
- Versión pública actual: `0.1.0`

## Arquitectura

- `sig/` contiene solamente las firmas que consumen RBS/Steep.
- `script/` genera y audita la superficie desde el código de `redis` 5.4.1.
- `test/` compara métodos y parámetros públicos reales con las declaraciones y
  ejecuta casos de tipos representativos sin requerir un servidor Redis.
- La gema no agrega comportamiento de ejecución al cliente.

## Ejecucion y tests

- `bundle exec rake generate`: regenera firmas y métricas de cobertura.
- `bundle exec rake`: ejecuta 4 pruebas, 14 aserciones y valida RBS.
- `bundle exec rake build`: construye `pkg/redis-rbs-0.1.0.gem`.

La cobertura actual corresponde a Redis 5.4.1: 25 archivos fuente, 495
definiciones de método y 495 declaraciones RBS; 227 retornos tienen un tipo
específico derivado de documentación o reglas seguras.

## Convenciones

- Preservar cambios ajenos y secretos locales.
- Actualizar este archivo solo cuando cambie informacion estable.
- La memoria persistente vive en `.codex/` y se carga siguiendo `AGENTS.md`.
- Si el proyecto tiene una UI para controlar un bot, servidor o proceso en segundo plano, cerrar esa UI debe detener el proceso administrado cuando sea tecnicamente posible.
