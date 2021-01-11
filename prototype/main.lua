

function love.load(arg)
  require "include";
  require "initEntities";
  require "DEBUG";
end

function love.quit()
  print("See you");
end

function love.update(dt)
  platform:update(dt);
  ball:update(dt);
  current_level_bricks:update(dt);
  level_collisions:resolve_collisions(ball,platform,current_level_bricks,screen_borders.walls);
  level_sequence.switch_to_next_level(current_level_bricks);
  watcher:update();
end

function love.draw()
  watcher:draw();
  platform:draw();
  ball:draw();
  current_level_bricks:draw();
  screen_borders:draw();
end

function love.keypressed(key)
  watcher:keypressed(key);
end
