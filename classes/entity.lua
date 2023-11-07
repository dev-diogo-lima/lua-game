-- Arquivo que descreve as entidades do jogo

function Entity(x, y, source)
    -- Classe virtual que descreve as funcoes gerais de uma entidade
    -- Atributos Privados
    local xPos = x
    local yPos = y
    
    local spriteHandler = SpriteHandler(source)

    local states = {"idle", "walk", "attack", "hurt"}
    local stateIndex = 1
    local stateCheck = {
        idle = true,
        walk = true,
        attack = true,
        hurt = true
    }
    local stateCode = {
        idle = 1,
        walk = 2,
        atack = 3,
        hurt = 4
    }
    
    return {
        -- Métodos Públicos
        setXPos = function (x)
            XPos = x
        end,

        getXPos = function ()
            return xPos
        end,

        setYPos = function (y)
            yPos = y
        end,

        getYPos = function ()
            return yPos
        end,

        getSpriteHandler = function ()
            return spriteHandler
        end,

        getState = function ()
            return states[stateIndex]
        end,

        setState = function (state)
            if type(state) == "number" and state > 1 and state < #states then
               stateIndex = state
            end

            if type(state) = "string" and stateCheck[state] then
                stateIndex = stateCode[state]
            end
            
        end
    }
end

function Player(x, y, spritePath)
    local handler = SpriteHandler(spritePath)
    local states = {"idle", "walk", "attack"}
    local stateIndex = 1

    return {
        x = x,
        y = y,

        getSprite = function (self)
            return handler.img
        end,

        getQuad = function (self, idx)
            return handler.quads[idx]
        end,
    }
end

-- 3:07:22