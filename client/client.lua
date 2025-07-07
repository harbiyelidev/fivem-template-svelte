RegisterNUICallback('onClick', function(data, cb)
    print('NUI veri:', json.encode(data))
    cb({ ok = true })
end)

RegisterNUICallback('closeMenu', function(data, cb)
    SetNuiFocus(false, false)
    cb({ ok = true })
end)

RegisterCommand('testui', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'openMenu',
        payload = {
            message = 'SA!',
        }
    })
end, false)

RegisterCommand('testui2', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'openMenu',
        payload = {}
    })
end, false)