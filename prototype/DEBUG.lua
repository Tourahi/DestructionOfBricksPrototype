
DEBUG = {};


function watch()
  watcher:watch("CalculatedFPS", function() return math.floor(1/love.timer.getDelta()) end);
  watcher:watch("EngineFPS",   function() return love.timer.getFPS() end);
  watcher:watch("ballpos",     function() return {x=ball.pos_x,y=ball.pos_y} end);
  watcher:watch("ballspeed",   function() return {x=ball.speed_x,y=ball.speed_y} end);
  watcher:watch("getHeight",   function() return love.graphics.getHeight() - 30 end);
  watcher:watch("level.brick_width + level.horizontal_distance",   function() return current_level_bricks.brick_width + current_level_bricks.horizontal_distance end);
  watcher:watch("is_ball_platform_collision",   function() return tostring(level_collisions.is_ball_platform_collision) end);
end

watch();
