
LevelBricks = Object:extend("LevelBricks");

function LevelBricks:new(width,height,
                        rows,cols,tlpx,tlpy,hd,vd,bricks)
  self.rows = rows;
  self.columns = cols;
  self.top_left_position_x = tlpx;
  self.top_left_position_y = tlpy;
  self.brick_width = width
  self.brick_height = height
  self.horizontal_distance = hd;
  self.vertical_distance = vd;
  self.bricks = {} or bricks;

end

function LevelBricks:addBrick(brick)
  table.insert(self.bricks , brick);
end

function LevelBricks:construct()
  for row = 1, self.rows do
    for col = 1, self.columns do
      local new_brick_xpos = self.top_left_position_x + (col - 1)
                          * (self.brick_width + self.horizontal_distance);
      local new_brick_ypos = self.top_left_position_y + (row - 1)
                          * (self.brick_height + self.vertical_distance);
      self:addBrick(Brick(new_brick_xpos,new_brick_ypos,self.brick_width,
                          self.brick_height));
    end
  end
end

function LevelBricks:draw()
  for _,brick in pairs(self.bricks) do
    love.graphics.rectangle("line", brick.pos_x, brick.pos_y, brick.width,
                            brick.height);
  end
end


return LevelBricks;
