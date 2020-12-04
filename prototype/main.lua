

function love.load(arg)
  require "include";
  platform  = Platform(500,500,300,70,20,'line');
  ball = Ball(400,500,1,1,10);
  level_one = LevelBricks(50,30,5,11,70,50,10,15);
  screen_borders = Walls(30);
  level_one_collisions = Collisions();
  screen_borders:construct();
  level_one:construct();
  require "DEBUG";
end

function love.quit()
  print("See you");
end

function love.update(dt)
  platform:update(dt);
  level_one_collisions:resolve_collisions(ball,platform,level_one.bricks);
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
