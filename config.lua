--[[ DevNeganSmith - Configuracion del indicador de proximidad de voz ]]

Config = {
    -- Milisegundos que se muestra el alcance al cambiarlo con F11.
    displayDuration = 1800,

    -- pma-voice reduce el valor interno al usar audio nativo.
    nativeAudioMultiplier = 3.0,

    -- También dibuja el alcance al cambiar la voz desde un vehículo.
    showInVehicles = true,
    vehicleGroundOffset = 0.04,

    marker = {
        type = 1,
        height = 0.22,
        color = { r = 255, g = 75, b = 180, a = 185 },
    },
}
