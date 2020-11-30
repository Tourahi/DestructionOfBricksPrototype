Collisions = Object:extend("Collisions");


function Collisions:new()
end

function Collisions:check_rectangles_overlap(a,b)
  -- checks Collisions between two Bricks
  local overlap = false;
  if not((a.pos_x + a.width) < b.pos_x or
         (b.pos_x + b.width) < a.pos_x or
         (a.pos_y + a.height)< b.pos_y or
         (b.pos_y + b.height)< a.pos_y) then
      overlap = true;
  end
  return overlap;
end

function Collisions:ball_platform_collision(ball,platform)
  if Collisions:check_rectangles_overlap(
                Brick(ball.pos_x,ball.pos_y,2*ball.radius,2*ball.radius)
                ,platform) then
    print("ball_player_collision");
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
