function love.conf(t)
    -- Meta Config
    t.identity = "data/saves"   -- Pasta de saves
    t.version = "11.4"          -- Versao LOVE2D do projeto
    t.console = true            -- Console de Debug
    t.externalstorage = true    -- Habilita Saves em armazenamento externo [Android] 
    -- t.gammacorrect = true       -- Corrije o brilho

    -- Window Config
    t.window.title = "Título Jogo"
    t.window.icon = "icon/icon.png"
    t.window.minwidth = 1200
    t.window.minheight = 700
    t.window.resizable = true
    t.window.borderless = false -- Retira a borda do jogo
    t.window.display = 1        -- Seleciona a tela do jogo
    t.window.fullscreen = false
    t.window.x = 100            -- Offset window [x]
    t.window.y = 100            -- Offset window [y]

    -- Audio Config
    t.audio.mic = true

    -- Modulo Config
    -- Eh possivel desabilitar modulos do framework [Cautela]
    -- t.modules.timer = false
end