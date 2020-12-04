
Ball = Object:extend("Ball");
Ball.static = {
  seg_in_cercle = 40;
};

function Ball:new(pos_x,pos_y,speed_x,speed_y,radius)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.speed_x = speed_x;
  self.speed_y = speed_y;
  self.radius = radius;
end

function Ball:draw()
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0);
  love.graphics.circle("line", self.pos_x, self.pos_y, self.radius,
                        Ball.static.seg_in_cercle);
end

function Ball:rebound(shift)
  local min_shift = math.min( math.abs(shift.x),
                               math.abs(shift.y));

  if math.abs(shift.x) == min_shift then
    shift.y = 0;
  else
    shift.x = 0;
  end
  self.pos_x = self.pos_x+shift.x;
  self.pos_y = self.pos_y+shift.y;
  if shift.x ~= 0 then
    self.speed_x  = -self.speed_x;
  end
  if shift.y ~= 0 then
    self.speed_y  = -self.speed_y;
  end
end

return Ball;
