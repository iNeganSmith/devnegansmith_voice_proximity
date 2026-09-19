# Documentación - DevNeganSmith Voice Proximity

## Descripción

`devnegansmith_voice_proximity` es un recurso client-side para FiveM que muestra temporalmente un indicador circular representando el alcance efectivo de voz de **pma-voice**.

## Compatibilidad de frameworks

El recurso es independiente del framework, pero depende de `pma-voice`.

- Standalone + pma-voice: ✅
- ESX Legacy + pma-voice: ✅
- QBCore + pma-voice: ✅
- Qbox / QBX + pma-voice: ✅

No utiliza `ESX`, `QBCore`, `qbx_core`, callbacks, trabajos, inventarios ni base de datos.

## Dependencia obligatoria

- `pma-voice`

El `fxmanifest.lua` declara explícitamente:

```lua
dependency 'pma-voice'
```

Por ello `pma-voice` debe estar instalado e iniciado antes de este recurso.

## Configuración

El archivo `config.lua` permite modificar:

- `displayDuration`: tiempo visible del indicador;
- `nativeAudioMultiplier`: corrección visual con audio nativo;
- `showInVehicles`: visualización desde vehículos;
- `vehicleGroundOffset`: ajuste de altura;
- `marker.type`: tipo de marcador;
- `marker.height`: altura;
- `marker.color`: color RGBA.

## Funcionamiento

Cuando cambia el modo de proximidad:

1. detecta el cambio mediante `AddStateBagChangeHandler('proximity', ...)`;
2. obtiene la distancia actual con `MumbleGetTalkerProximity()`;
3. corrige visualmente el rango cuando `voice_useNativeAudio` está activo;
4. obtiene la posición del jugador;
5. si está dentro de un vehículo, puede utilizar la posición del vehículo y calcular el suelo;
6. dibuja el marcador temporalmente con el diámetro correspondiente.

Cuando el indicador no está visible, el recurso reduce su frecuencia de comprobación.

## Audio nativo

Si:

```cfg
setr voice_useNativeAudio true
```

está activo, el script aplica `Config.nativeAudioMultiplier` para representar visualmente el alcance efectivo configurado.

El valor puede ajustarse si el servidor utiliza una configuración de voz personalizada.

## Otros sistemas de voz

La versión actual está desarrollada específicamente para `pma-voice`.

No existe compatibilidad directa garantizada con:

- SaltyChat;
- TokoVOIP;
- otros reemplazos de voz que no utilicen la misma lógica de `pma-voice`.

Para esos sistemas sería necesaria una adaptación específica.

## Instalación

```text
resources/[devnegansmith]/devnegansmith_voice_proximity
```

```cfg
ensure pma-voice
ensure devnegansmith_voice_proximity
```

## Posibles conflictos

Se recomienda revisar la interacción con:

- indicadores de proximidad duplicados;
- modificaciones personalizadas de `proximity`;
- recursos que cambien el rango Mumble;
- configuraciones no estándar de `pma-voice`.

## Pruebas recomendadas

- cambiar todos los modos de proximidad;
- probar a pie;
- probar dentro de vehículos;
- probar `voice_useNativeAudio` activado y desactivado;
- comprobar tamaño y duración del círculo;
- probar configuraciones personalizadas de proximidad.

## Autor

- Autor: **DevNeganSmith**
- Recurso: `devnegansmith_voice_proximity`
- Tipo: **Framework Independent**
- Frameworks compatibles: **ESX Legacy, QBCore y Qbox/QBX**
- Dependencia de voz: **pma-voice**
- Versión: `1.0.0`

## Licencia y términos

Código bajo **MIT License**. Consulta [`LICENSE`](LICENSE) y [`TERMS.md`](TERMS.md).
