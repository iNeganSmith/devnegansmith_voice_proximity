# Documentación

`devnegansmith_voice_proximity` escucha los cambios del modo de proximidad de `pma-voice` y muestra temporalmente un marcador circular con el alcance efectivo de la voz.

## Configuración

El archivo `config.lua` permite modificar:

- `displayDuration`: tiempo en milisegundos que permanece visible el círculo.
- `nativeAudioMultiplier`: corrección visual utilizada cuando `pma-voice` trabaja con audio nativo.
- `showInVehicles`: permite mostrar el círculo dentro de vehículos.
- `vehicleGroundOffset`: ajuste de altura del marcador en vehículos.
- `marker.type`: tipo de marcador GTA.
- `marker.height`: grosor/altura visual.
- `marker.color`: color RGBA del indicador.

## Dependencias

`pma-voice` debe estar iniciado antes que este recurso.

## Uso

No necesita comandos propios. El indicador aparece automáticamente cuando cambia el modo de proximidad configurado en `pma-voice`.
