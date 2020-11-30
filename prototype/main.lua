

function love.load(arg)
  include();
  platform  = Platform(500,500,300,70,20);
  ball = Ball(400,400,10,10,10);
  level_one = LevelBricks(50,30,5,11,70,50,10,15);
  screen_borders = Walls(30);
  screen_borders:construct();
  level_one:construct();
end

function love.quit()
  print("See you");
end

function love.update(dt)
  platform:update(dt);
end

function love.draw()
  platform:draw();
  ball:draw();
  level_one:draw();
  screen_borders:draw();
end
