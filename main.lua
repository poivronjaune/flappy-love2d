WINDOW_WIDTH  = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

local background = love.graphics.newImage('background.png')
local ground     = love.graphics.newImage('ground.png')

function love.load()
    love.graphics.setDefaultFilter('nearest','nearest')
    love.window.setTitle('Flappy-0 Jaune')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(ground, VIRTUAL_HEIGHT - 16, 0)
end