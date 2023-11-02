io.stdout:setvbuf('no')

Class = require 'class'
Push = require 'push'

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
  love.graphics.setDefaultFilter('nearest', 'nearest')
  Font1 = love.graphics.newFont('font.TTF', 16)
  Font2 = love.graphics.newFont('font.TTF', 20)
  Font3 = love.graphics.newFont('font.TTF', 24)
  Font4 = love.graphics.newFont('font.TTF', 28)
  Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
      fullscreen = false,
      resizable = false,
      vsync = true
    })
end

function love.update()
end

function love.draw()
  Push:start()
  love.graphics.setFont(Font1)
  love.graphics.printf('right', 175, -5, VIRTUAL_WIDTH, 'center')
  love.graphics.setFont(Font2)
  love.graphics.printf('left', -175, -5, VIRTUAL_WIDTH, 'center')
  love.graphics.setFont(Font3)
  love.graphics.printf('right', 160, 200, VIRTUAL_WIDTH, 'center')
  love.graphics.setFont(Font4)
  love.graphics.printf('left', -160, 195, VIRTUAL_WIDTH, 'center')
  Push:finish()
end
