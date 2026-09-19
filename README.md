# DevNeganSmith - Voice Proximity Indicator

Recurso para FiveM creado por **DevNeganSmith** que muestra visualmente el alcance actual de la voz cuando el jugador cambia el modo de proximidad de `pma-voice`.

## ¿Para qué sirve?

- Muestra un círculo alrededor del jugador al cambiar la distancia de voz.
- Permite visualizar fácilmente el alcance actual de conversación.
- Compatible con `pma-voice` y audio nativo.
- También puede mostrar el indicador cuando el jugador está dentro de un vehículo.
- El aspecto y duración del indicador son configurables.

## Dependencia

- `pma-voice`

## Instalación rápida

1. Copia `devnegansmith_voice_proximity` dentro de tu carpeta `resources`.
2. Asegúrate de iniciar `pma-voice` primero.
3. Agrega en `server.cfg`:

```cfg
ensure pma-voice
ensure devnegansmith_voice_proximity
```

4. Reinicia el recurso o el servidor.

La configuración se encuentra en `config.lua`.

**Autor:** DevNeganSmith  
**Versión:** 1.0.0  
**Compatibilidad:** FiveM / Qbox / QBX + pma-voice
