Mouvement = Object:extend("Mouvement");

function Mouvement:new()

end

function Mouvement:ballMove(up,down,left,right,dt)
  if love.keyboard.isDown(right) then
    self.pos_x = self.pos_x + self.speed_x * dt;
    self.collisionBox.pos_x = self.pos_x-self.radius;
  end
  if love.keyboard.isDown(left) then
    self.pos_x = self.pos_x - self.speed_x * dt;
    self.collisionBox.pos_x = self.pos_x-self.radius;
  end
  if love.keyboard.isDown(up) then
    self.pos_y = self.pos_y - self.speed_y * dt;
    self.collisionBox.pos_y = self.pos_y-self.radius;
  end
  if love.keyboard.isDown(down) then
    self.pos_y = self.pos_y + self.speed_y * dt;
    self.collisionBox.pos_y = self.pos_y-self.radius;
  end
end


return Mouvement;