--[[
    Trophy Class
    Author: Cameron Nelson
    
]]

Trophy = Class{}


-- Take in the image file as paremeter
function Trophy:init(i)
    self.image = love.graphics.newImage(i) -- New image based off of the passed parameter

    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    -- Set the x to place the center of image centered on screen horizantally
    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    -- Set y value to be in lower third of screen
    self.y = VIRTUAL_HEIGHT * .75
end



function Trophy:render()
    love.graphics.draw(self.image, self.x, self.y)
end