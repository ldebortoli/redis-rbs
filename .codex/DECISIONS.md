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
