

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
  level_one_collisions:resolve_collisions(ball,platform,level_one);
  watcher:update();
end

function love.draw()
  watcher:draw();
  platform:draw();
  ball:draw();
  level_one:draw();
  screen_borders:draw();
end

function love.keypressed(key)
  watcher:keypressed(key);
end
