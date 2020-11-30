
Platform = Object:extend("Platform");

function Platform:new(pos_x,pos_y,speed_x,width,height)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.speed_x = speed_x;
  self.width = width;
  self.height = height;
end

function Platform:update(dt)
  if love.keyboard.isDown("right") then
    self.pos_x = self.pos_x + self.speed_x * dt;
  end
  if love.keyboard.isDown("left") then
    self.pos_x = self.pos_x - self.speed_x * dt;
  end
end

function Platform:draw()
  love.graphics.rectangle( 'line',
       self.pos_x,
       self.pos_y,
       self.width,
       self.height )
end

return Platform;
