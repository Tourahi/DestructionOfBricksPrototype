
Ball = Object:extend("Ball");
Ball.static = {
  seg_in_cercle = 40;
};
-- Ball:implement(Mouvement);

function Ball:new(pos_x,pos_y,speed_x,speed_y,radius)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self._pos_x = pos_x;
  self._pos_y = pos_y;
  self.speed_x = speed_x;
  self.speed_y = speed_y;
  self.radius = radius;
  self.collisionBox = Brick(self.pos_x-self.radius,self.pos_y-self.radius,2*self.radius ,
                      2*self.radius,"line",{1.0,0.0,0.0,1.0});
end

function Ball:draw()
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0);
  love.graphics.circle("line", self.pos_x, self.pos_y, self.radius,
                        Ball.static.seg_in_cercle);
  self:drawColliBox();
end

function Ball:drawColliBox(  )
  love.graphics.setColor(unpack(self.collisionBox.color));
  love.graphics.rectangle("line",
            self.collisionBox.pos_x,
            self.collisionBox.pos_y,
            self.collisionBox.width,
            self.collisionBox.height);
end

function Ball:reposition()
  self.pos_x = self._pos_x;
  self.pos_y = self._pos_y;
end

function Ball:update(dt)
  self.pos_x = self.pos_x + self.speed_x * dt;
  self.pos_y = self.pos_y + self.speed_y * dt;
  self.collisionBox.pos_x = self.pos_x-self.radius;
  self.collisionBox.pos_y = self.pos_y-self.radius;
end

function Ball:rebound(shift)
  local min_shift = math.min( math.abs(shift.x),
                              math.abs(shift.y));
  if math.abs(shift.x) == min_shift then
    shift.y = 0;
    self.pos_x = self.pos_x+(shift.x) ;
    self.collisionBox.pos_x = self.pos_x-self.radius;
  else
    shift.x = 0;
    self.pos_y = self.pos_y+(shift.y);
    self.collisionBox.pos_y = self.pos_y-self.radius;
  end
  if shift.x ~= 0 then
    self.speed_x  = -self.speed_x;
  end
  if shift.y ~= 0 then
    self.speed_y  = -self.speed_y;
  end
end

return Ball;
