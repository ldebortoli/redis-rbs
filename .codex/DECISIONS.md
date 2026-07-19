# Decisiones tecnicas

No borrar decisiones anteriores. Si una decision cambia, agregar una nueva entrada que indique cual reemplaza.

## D-001 - Memoria persistente del proyecto

- Estado: vigente.
- Fecha: 2026-07-18.
- Decision: usar `.codex/` como fuente de verdad entre sesiones, modelos y agentes.
- Motivo: continuidad independiente del historial del chat.

## D-002 - Firmas separadas para redis 5.4

- Estado: vigente.
- Fecha: 2026-07-18.
- Decisión: publicar las firmas como la gema independiente `redis-rbs`, con
  dependencia `redis >= 5.4, < 5.5` y sin modificar el cliente Ruby.
- Fuente: derivar clases, módulos y parámetros del código publicado de Redis
  5.4.1; conservar tipos explícitos para retornos y bloques documentados y una
  auditoría automática que impida omitir métodos públicos.
- Motivo: la colección comunitaria disponible sólo cubre Redis 4.2 y la rama
  5.x cambió cliente, comandos y dependencias de forma sustancial.

## D-003 - Publicación sin claves persistentes

- Estado: vigente.
- Fecha: 2026-07-18.
- Decisión: publicar tags `v*` mediante `.github/workflows/release.yml` y
  `rubygems/release-gem@v1`, usando OIDC y el entorno GitHub `release`.
- Motivo: evitar API keys de RubyGems en el repositorio o en secretos de larga
  duración y permitir el alta inicial mediante pending trusted publisher.

## D-004 - Tareas de release provistas por Bundler

- Estado: vigente.
- Fecha: 2026-07-18.
- Decisión: cargar `bundler/gem_tasks` desde el Rakefile para exponer las tareas
  estándar `build`, `install` y `release` que consume `rubygems/release-gem@v1`.
- Motivo: el workflow oficial ejecuta `bundle exec rake release`; una tarea de
  build personalizada no satisface ese contrato aunque el paquete sea válido.
