
LevelBricks = Object:extend("LevelBricks");

function LevelBricks:new(width,height,
                        tlpx,tlpy,hd,vd,bricks)
  self.rows = rows;
  self.columns = cols;
  self.top_left_position_x = tlpx;
  self.top_left_position_y = tlpy;
  self.brick_width = width
  self.brick_height = height
  self.horizontal_distance = hd;
  self.vertical_distance = vd;
  self.bricks = {} or bricks;
  self.no_bricks_left = false;
  self.current_level_bricks = {};
end

function LevelBricks:addBrick(brick)
  table.insert(self.current_level_bricks , brick);
end

function LevelBricks:construct(levelSequence)
  for row_index, row in ipairs(levelSequence) do
    for col_index,bricktype in ipairs(row) do
      if bricktype ~= 0 then
        local new_brick_xpos = self.top_left_position_x + (col_index - 1)
                            * (self.brick_width + self.horizontal_distance);
        local new_brick_ypos = self.top_left_position_y + (row_index - 1)
                            * (self.brick_height + self.vertical_distance);
        self:addBrick(Brick(new_brick_xpos,new_brick_ypos,self.brick_width,
                            self.brick_height,"line"));
      end
    end
  end
end

function LevelBricks:brickHitByBall(i, brick, shift_ball_x, shift_ball_y)
  table.remove(self.current_level_bricks,i);
end

function LevelBricks:update(dt)
  if #self.current_level_bricks == 0 then 
    self.no_bricks_left = true;
  else
    -- for _, brick in pairs( self.current_level_bricks ) do
    --   bricks.update_brick( brick )
    -- end  
  end
end

function LevelBricks:draw()
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0);
  for _,brick in pairs(self.current_level_bricks) do
    love.graphics.rectangle(brick.mode, brick.pos_x, brick.pos_y, brick.width,
                            brick.height);
  end
end


return LevelBricks;
