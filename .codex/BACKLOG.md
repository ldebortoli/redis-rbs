# TODO

- [2026-07-18] [BLOCKED: RubyGems.org no tiene una sesión autenticada en el
  navegador disponible y no existe una credencial local; un propietario debe
  iniciar sesión y crear el pending trusted publisher para
  `ldebortoli/redis-rbs`, workflow `release.yml`, entorno `release`] Publicar y
  verificar `redis-rbs` 0.1.0.

# IN PROGRESS

- No hay tareas activas mientras se espera la autenticación RubyGems.

# DONE

- [2026-07-18] Inicializar la memoria persistente del proyecto.
- [2026-07-18] Implementar, generar y validar firmas para los 495 métodos
  definidos en Redis 5.4.1.
- [2026-07-18] Construir e instalar aisladamente `redis-rbs-0.1.0.gem`; el
  paquete contiene la firma, licencia y README y pasa `rbs validate`.
- [2026-07-18] Crear el repositorio público `ldebortoli/redis-rbs` y configurar
  `origin`.
- [2026-07-18] Publicar `main` y validar el CI de GitHub en Ruby 3.3 y 3.4; el
  head `a8ef14a` pasa generación, pruebas, validación y construcción.
