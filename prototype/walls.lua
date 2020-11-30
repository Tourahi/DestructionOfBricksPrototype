
Walls = Object:extend();

function Walls:new(wall_thickness , walls)
  self.wall_thickness = wall_thickness;
  self.walls = {} or walls;
end

function Walls:construct()
  local left_wall = Brick(0,0,self.wall_thickness,love.graphics.getHeight());
  local right_wall = Brick(love.graphics.getWidth() - self.wall_thickness,
                      0,self.wall_thickness,love.graphics.getHeight());
  local top_wall = Brick(0,0,love.graphics.getWidth(),self.wall_thickness);
  local bottom_wall = Brick(0,love.graphics.getHeight() - self.wall_thickness,
                      love.graphics.getWidth(),self.wall_thickness);
  self.walls["left"]  = left_wall;
  self.walls["right"] = right_wall;
  self.walls["top"]   = top_wall;
  self.walls["bottom"]= bottom_wall;
end

function Walls:draw()
  for _,wall in pairs(self.walls) do
    love.graphics.rectangle("line", wall.pos_x, wall.pos_y, wall.width,
                            wall.height);
  end
end


return Walls;
