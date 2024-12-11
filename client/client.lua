RegisterCommand(Config.Command, function() -- Register Command
    if Config.UseContext then -- Validasi apakah menggunakan menu context atau tidak
        local rockstar_editor = {
            {
                title = 'Record',
                description = 'Klik untuk mengrecord!',
                icon = 'film',
                onSelect = function()
                    StartRecording(1) 
                    lib.notify({
                        id = 'record_editor',
                        title = 'Rockstar Editior',
                        description = 'Record.',
                        position = 'top-right',
                        style = {
                            backgroundColor = '#141517',
                            color = '#C1C2C5',
                            ['.description'] = {
                                color = '#909296'
                            }
                        },
                    })
                end
            },
            {
                title = 'Save Clip',
                description = 'Klik untuk Menyimpan Hasil record!',
                icon = 'floppy-disk',
                onSelect = function()
                    StartRecording(0)
                    StopRecordingAndSaveClip()
                    lib.notify({
                        id = 'save_clip',
                        title = 'Rockstar Editior',
                        description = 'Save Clip',
                        position = 'top-right',
                        style = {
                            backgroundColor = '#141517',
                            color = '#C1C2C5',
                            ['.description'] = {
                            color = '#909296'
                            }
                        },
                    })
                end
            },
            {
                title = 'Discard Clip',
                description = 'Klik untuk membuang hasil recordan!',
                icon = 'recycle',
                onSelect = function()
                    StopRecordingAndDiscardClip()
                    lib.notify({
                        id = 'discard_editor',
                        title = 'Rockstar Editior',
                        description = 'Discard',
                        position = 'top',
                        style = {
                            backgroundColor = '#141517',
                            color = '#C1C2C5',
                            ['.description'] = {
                            color = '#909296'
                            }
                        },
                    })
                end
            },
            {
                title = 'Enter Rockstar Editor',
                description = 'Klik untuk masuk ke rockstar editor!',
                icon = 'gear',
                onSelect = function()
                    local alert = lib.alertDialog({
                        header = 'Rockstar Editor',
                        content = 'Klik Confirm kalau kamu yakin masuk ke rockstar editor!',
                        centered = true,
                        cancel = true
                    })
                    if alert == 'confirm' then -- if the user confirms
                        NetworkSessionLeaveSinglePlayer()
                        ActivateRockstarEditor()
                    end
                end
            },
        }

        lib.registerContext({
            id = 'ctx_menu_rockstar_editor',
            title = 'Rockstar Editor',
            options = rockstar_editor
        })
        
        lib.showContext('ctx_menu_rockstar_editor')
    else
        lib.registerMenu({
            id = 'ctx_menu_rockstar_editor',
            title = 'Rockstar Editor',
            position = 'top-right',
            options = {
                {label = 'Record', description = 'Tekan untuk mengrecord!', icon = 'film'},
                {label = 'Save Clip', description = 'Klik untuk Menyimpan Hasil record!', icon = 'floppy-disk'},
                {label = 'Discard Clip', description = 'Klik untuk membuang hasil recordan!', icon = 'recycle'},
                {label = 'Enter Rockstar Editor', description = 'Klik untuk masuk ke rockstar editor!', icon = 'gear'},
            }
        }, function(selected, scrollIndex, args)
            if selected == 1 then
                StartRecording(1) 
                lib.notify({
                    id = 'record_editor',
                    title = 'Rockstar Editior',
                    description = 'Record.',
                    position = 'top-right',
                    style = {
                        backgroundColor = '#141517',
                        color = '#C1C2C5',
                        ['.description'] = {
                            color = '#909296'
                        }
                    },
                })
            elseif selected == 2 then
                StartRecording(0)
                StopRecordingAndSaveClip()
                lib.notify({
                    id = 'save_clip',
                    title = 'Rockstar Editior',
                    description = 'Save Clip',
                    position = 'top-right',
                    style = {
                        backgroundColor = '#141517',
                        color = '#C1C2C5',
                        ['.description'] = {
                        color = '#909296'
                        }
                    },
                })
            elseif selected == 3 then
                StopRecordingAndDiscardClip()
                lib.notify({
                    id = 'discard_editor',
                    title = 'Rockstar Editior',
                    description = 'Discard',
                    position = 'top',
                    style = {
                        backgroundColor = '#141517',
                        color = '#C1C2C5',
                        ['.description'] = {
                        color = '#909296'
                        }
                    },
                })
            elseif selected == 4 then
                local alert = lib.alertDialog({
                    header = 'Rockstar Editor',
                    content = 'Klik Confirm kalau kamu yakin masuk ke rockstar editor!',
                    centered = true,
                    cancel = true
                })
                if alert == 'confirm' then -- if the user confirms
                    NetworkSessionLeaveSinglePlayer()
                    ActivateRockstarEditor()
                end
            end
        end)

        lib.showMenu('ctx_menu_rockstar_editor')
    end
end)