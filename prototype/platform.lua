
Platform = Object:extend("Platform");

function Platform:new(pos_x,pos_y,speed_x,width,height,mode)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.speed = speed_x;
  self.width = width;
  self.height = height;
  self.mode = mode or "line";
  self.collisionBox = Brick(self.pos_x,self.pos_y,self.width,self.height);
end

function Platform:update(dt)
  if love.keyboard.isDown("right") then
    self.pos_x = self.pos_x + self.speed * dt;
    self.collisionBox.pos_x = self.pos_x;
  end
  if love.keyboard.isDown("left") then
    self.pos_x = self.pos_x - self.speed * dt;
    self.collisionBox.pos_x = self.pos_x;
  end
  if love.keyboard.isDown("up") then
    self.pos_y = self.pos_y - self.speed * dt;
    self.collisionBox.pos_y = self.pos_y;
  end
  if love.keyboard.isDown("down") then
    self.pos_y = self.pos_y + self.speed * dt;
    self.collisionBox.pos_y = self.pos_y;
  end
end

function Platform:draw()
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0);
  love.graphics.rectangle( self.mode,
       self.pos_x,
       self.pos_y,
       self.width,
       self.height )
end

return Platform;
