
Ball = Object:extend("Ball");
Ball.static = {
  seg_in_cercle = 5;
};

function Ball:new(pos_x,pos_y,speed_x,speed_y,radius)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.speed_x = speed_x;
  self.speed_y = speed_y;
  self.radius = radius;
end

function Ball:draw()
  love.graphics.circle("line", self.pos_x, self.pos_y, self.radius,
                        Ball.static.seg_in_cercle);
end


return Ball;
