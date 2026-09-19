# DevNeganSmith - Voice Proximity Indicator

Indicador visual del alcance de voz para servidores **FiveM Qbox/QBX** que utilizan **pma-voice**.

> Creado y mantenido por **DevNeganSmith**.

## Características

- Muestra un círculo alrededor del jugador al cambiar el modo de proximidad.
- Representa visualmente el alcance actual de conversación.
- Integración directa con `pma-voice`.
- Puede mostrarse también dentro de vehículos.
- Duración, color, altura y comportamiento configurables.
- No requiere base de datos.
- No requiere llamadas directas a `qbx_core`.

## Dependencia

- `pma-voice`

## Instalación

1. Coloca `devnegansmith_voice_proximity` dentro de tus recursos.
2. Asegúrate de iniciar `pma-voice` antes.
3. Añade:

```cfg
ensure pma-voice
ensure devnegansmith_voice_proximity
```

4. Reinicia el recurso o el servidor.

## Configuración

Las opciones se encuentran en `config.lua`: duración, multiplicador de audio nativo, visualización en vehículos, altura, tipo y color del marcador.

## Compatibilidad

- FiveM / GTA V
- Qbox / QBX
- pma-voice

## Documentación

Consulta [`DOCUMENTACION.md`](DOCUMENTACION.md) y [`TERMS.md`](TERMS.md).

## Licencia

Distribuido bajo **MIT License**. Consulta [`LICENSE`](LICENSE).

© 2026 **DevNeganSmith**
