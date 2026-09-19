--[[
    DevNeganSmith - Voice Proximity Indicator
    Autor: DevNeganSmith
    Integracion: pma-voice
]]

-- Shows the range briefly after switching the proximity mode.
-- pma-voice uses a lower internal value when native audio is enabled; multiply it
-- by three so the marker represents the effective audible distance.
local lastModeChange = 0
local modeChangeDuration = Config.displayDuration

AddStateBagChangeHandler('proximity', nil, function(bagName)
    if bagName == ('player:%s'):format(GetPlayerServerId(PlayerId())) then
        lastModeChange = GetGameTimer()
    end
end)

local function getVisibleRange()
    local range = MumbleGetTalkerProximity()
    if GetConvar('voice_useNativeAudio', 'false') == 'true' then
        range = range * Config.nativeAudioMultiplier
    end
    return range
end

CreateThread(function()
    while true do
        local showForChange = GetGameTimer() - lastModeChange < modeChangeDuration
        if showForChange then
            local ped = PlayerPedId()
            if DoesEntityExist(ped) then
                local coords = GetEntityCoords(ped)
                local range = getVisibleRange()
                local drawZ = coords.z - 1.02
                local vehicle = GetVehiclePedIsIn(ped, false)

                -- Dentro de un vehículo el anillo se dibuja sobre el suelo;
                -- de este modo no queda oculto por el propio vehículo.
                if vehicle ~= 0 and Config.showInVehicles then
                    coords = GetEntityCoords(vehicle)
                    local foundGround, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z + 2.0, false)
                    if foundGround then
                        drawZ = groundZ + Config.vehicleGroundOffset
                    else
                        drawZ = coords.z - 1.02
                    end
                elseif vehicle ~= 0 then
                    Wait(150)
                    goto continue
                end

                local marker = Config.marker
                DrawMarker(marker.type, coords.x, coords.y, drawZ,
                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                    range * 2.0, range * 2.0, marker.height,
                    marker.color.r, marker.color.g, marker.color.b, marker.color.a,
                    false, false, 2, false, nil, nil, false)
            end
            ::continue::
            Wait(0)
        else
            Wait(150)
        end
    end
end)
