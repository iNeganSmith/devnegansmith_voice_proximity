# DevNeganSmith - Voice Proximity Indicator

Indicador visual del alcance de voz para servidores FiveM que utilizan **pma-voice**, independiente del framework.

> Creado y mantenido por **DevNeganSmith**.

## Compatibilidad

| Entorno | Estado |
|---|---|
| Standalone + pma-voice | ✅ Compatible |
| ESX Legacy + pma-voice | ✅ Compatible |
| QBCore + pma-voice | ✅ Compatible |
| Qbox / QBX + pma-voice | ✅ Compatible |

El recurso no utiliza APIs, callbacks, exports ni eventos propios de ESX, QBCore o Qbox.

La dependencia real del recurso es **pma-voice**.

## Características

- Muestra un círculo alrededor del jugador al cambiar el modo de proximidad.
- Representa visualmente el alcance actual de conversación.
- Integración directa con `pma-voice`.
- Puede mostrarse también dentro de vehículos.
- Duración, color, altura y comportamiento configurables.
- No requiere base de datos.
- No requiere SQL.
- No requiere `ox_lib`, `ox_target`, ESX, QBCore ni `qbx_core`.
- Funciona del lado del cliente.

## Dependencias

### Obligatoria

- `pma-voice`

### No requeridas

- ESX
- QBCore
- Qbox/QBX
- `ox_lib`
- `ox_target`
- SQL

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

Las opciones se encuentran en `config.lua`:

- `displayDuration`: duración del indicador;
- `nativeAudioMultiplier`: corrección visual cuando se usa audio nativo;
- `showInVehicles`: permite mostrarlo dentro de vehículos;
- `vehicleGroundOffset`: ajuste vertical sobre el suelo;
- `marker.type`: tipo de marcador;
- `marker.height`: altura;
- `marker.color`: color RGBA.

## Funcionamiento

Cuando cambia el modo de proximidad del jugador:

1. detecta el cambio mediante el state bag de `proximity`;
2. obtiene el rango actual mediante `MumbleGetTalkerProximity()`;
3. aplica el multiplicador configurado cuando `voice_useNativeAudio` está activo;
4. obtiene la posición del jugador o vehículo;
5. dibuja temporalmente el círculo correspondiente al rango audible.

## Otros sistemas de voz

Esta versión está diseñada específicamente para **pma-voice**.

No debe anunciarse como compatible directamente con otros sistemas de voz como SaltyChat, TokoVOIP u otros reemplazos sin una adaptación específica, porque utilizan APIs y lógica diferentes.

## Posibles conflictos

- otro recurso que dibuje simultáneamente su propio indicador de proximidad;
- modificaciones personalizadas del state bag `proximity`;
- recursos que alteren el rango Mumble de forma no estándar;
- ejecutar otro sistema de voz en lugar de `pma-voice`.

## Pruebas recomendadas

- cambiar todos los modos de proximidad;
- probar a pie;
- probar dentro de vehículos;
- probar con `voice_useNativeAudio` activado y desactivado;
- comprobar tamaño y duración del círculo;
- reiniciar `pma-voice` y el recurso;
- validar cualquier configuración personalizada de proximidad.

## Documentación

Consulta [`DOCUMENTACION.md`](DOCUMENTACION.md) y [`TERMS.md`](TERMS.md).

## Licencia

Distribuido bajo **MIT License**. Consulta [`LICENSE`](LICENSE).

© 2026 **DevNeganSmith**
