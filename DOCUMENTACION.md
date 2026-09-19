# Documentación - DevNeganSmith Voice Proximity

## Descripción

`devnegansmith_voice_proximity` está diseñado para servidores **FiveM Qbox/QBX** con `pma-voice`.

Escucha los cambios del modo de proximidad y muestra temporalmente un marcador circular que representa el alcance efectivo de la voz.

## Dependencias

- FiveM
- Qbox / QBX como framework objetivo
- `pma-voice`

No necesita llamadas directas a `qbx_core`.

## Configuración

El archivo `config.lua` permite modificar:

- `displayDuration`: tiempo visible del indicador;
- `nativeAudioMultiplier`: corrección visual con audio nativo;
- `showInVehicles`: muestra el círculo dentro de vehículos;
- `vehicleGroundOffset`: ajuste de altura;
- `marker`: tipo, altura y color RGBA.

## Funcionamiento

Cuando cambia el modo de proximidad:

1. obtiene la distancia actual de `pma-voice`;
2. corrige visualmente el rango si se usa audio nativo;
3. obtiene la posición del jugador o vehículo;
4. dibuja el marcador con el diámetro correspondiente.

Cuando el indicador no está activo, reduce la frecuencia de comprobación.

## Instalación

```text
resources/[devnegansmith]/devnegansmith_voice_proximity
```

```cfg
ensure pma-voice
ensure devnegansmith_voice_proximity
```

## Pruebas recomendadas

- cambiar todos los modos de proximidad;
- probar a pie;
- probar dentro de vehículos;
- probar con `voice_useNativeAudio`;
- comprobar tamaño y duración del círculo.

## Autor

- Autor: **DevNeganSmith**
- Recurso: `devnegansmith_voice_proximity`
- Framework objetivo: **Qbox / QBX**
- Dependencia de voz: **pma-voice**
- Versión: `1.0.0`

## Licencia y términos

Código bajo **MIT License**. Consulta [`LICENSE`](LICENSE) y [`TERMS.md`](TERMS.md).
