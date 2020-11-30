-- Platform
local platform = {};
platform.pos_x = 500;
platform.pos_y = 500;
platform.speed_x = 300;
platform.width = 70
platform.height = 20


function love.load(arg)
  Object  = require "classicc";
  Ball    = require "ball";
  Brick   = require "brick";
  LevelBricks = require "level_bricks";
  Walls = require "walls";
  Platform  = require "platform";

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
