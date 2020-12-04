Collisions = Object:extend("Collisions");


function Collisions:new()
  -- Debug members
  self.is_ball_platform_collision = false;
  self.shiftX = 0;
  self.shiftY = 0;
end

function Collisions:check_rectangles_overlap(a,b)
  -- checks Collisions between two Bricks
  local overlap = false;
  local shift_b_x, shift_b_y = 0, 0;
  if not((a.pos_x + a.width) < b.pos_x or
         (b.pos_x + b.width) < a.pos_x or
         (a.pos_y + a.height)< b.pos_y or
         (b.pos_y + b.height)< a.pos_y) then
      overlap = true;
      if ( a.pos_x + a.width / 2 ) < ( b.pos_x + b.width / 2 ) then
         shift_b_x = ( a.pos_x + a.width ) - b.pos_x;
      else
         shift_b_x = a.pos_x - ( b.pos_x + b.width );
      end
      if ( a.pos_y + a.height / 2 ) < ( b.pos_y + b.height / 2 ) then
         shift_b_y = ( a.pos_y + a.height ) - b.pos_y;
      else
         shift_b_y = a.pos_y - ( b.pos_y + b.height );
      end
  end
  return overlap,shift_b_x, shift_b_y;
end

function Collisions:ball_platform_collision(ball,platform)
  local overlap, shift_ball_x, shift_ball_y;
  overlap,shift_b_x, shift_b_y=  Collisions:check_rectangles_overlap(
                Brick(ball.pos_x,ball.pos_y,2*ball.radius,2*ball.radius)
                ,platform);
  if overlap then
     ball:rebound( {x = shift_b_x,y = shift_b_y} );
  end
end

function Collisions:ball_bricks_collision(ball,bricks)
  for i,brick in pairs(bricks) do
      if Collisions:check_rectangles_overlap(
                   Brick(ball.pos_x,ball.pos_y,2*ball.radius,2*ball.radius)
                   ,brick) then
          print("ball_bricks_collision");
      end
  end
end

function Collisions:resolve_collisions(ball,platform,bricks)
  self:ball_platform_collision(ball,platform);
  self:ball_bricks_collision(ball,bricks);
end


return Collisions;