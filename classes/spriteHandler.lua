-- Arquivo que descreve o SpriteHandler dos elementos do jogo

function SpriteHandler(png)
    local img = love.graphics.newImage(png)
    local larguraTotal = img:getWidth()
    local alturaTotal = img:getHeight()
    local larguraQuad = alturaTotal
    local quads = {}
    
    for idx = 1, img:getWidth() - img:getHeight() do
        quads[idx] = love.graphics.newQuad(larguraQuad * (idx - 1), 0, larguraQuad, larguraQuad, larguraTotal, alturaTotal)
    end

    local spriteSheet = {
        sprite = img,
        size = {larguraTotal, alturaTotal},
        quadSize = {larguraQuad, larguraQuad},
        quads = quads
    }

    return spriteSheet
end