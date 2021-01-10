
DEBUG = {};


function watch()
  watcher:watch("CalculatedFPS", function() return math.floor(1/love.timer.getDelta()) end);
  watcher:watch("EngineFPS", function() return love.timer.getFPS() end);
  watcher:watch("ballpos",   function() return {x=ball.pos_x,y=ball.pos_y} end);
  watcher:watch("ballspeed",   function() return {x=ball.speed_x,y=ball.speed_y} end);
  watcher:watch("paltformX", function() return platform.pos_x end);
end

watch();
