-- Para rodar o codigo, basta pressionar Alt + l
_G.love = require("love")

-- requires locais
require("entity")

function love.load()
    -- Funcao que carrega o jogo
    -- love.graphics.setBackgroundColor(1, 1, 0)           -- Executa apenas uma vez

    _G.circle = {
        x = 200,
        y = 200,
        xvel = 2
    }

    _G.player = Player(500, 500, "sprites/char.png")
    print(player.sprite.sprite)
end

function love.update(dt)
    -- Funcao que atualiza o jogo com delta tempo (dt)
    if circle.x > 600 then
        circle.xvel = -2
    end
    circle.x = circle.x + circle.xvel

    

end

function love.draw()
    -- Funcao que desenha os elementos do jogo a cada frame
    love.graphics.setColor(1, 0, 0)                     -- RGB Entre 0 e 1
    love.graphics.rectangle("line", 50, 50, 50, 50)

    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.circle("fill", circle.x, circle.y, 50)

    love.graphics.draw(player:getSprite(), player:getQuad(1), player.x, player.y)

end

