
DEBUG = {};


function watch()
  watcher:watch("FPS", function() return math.floor(1/love.timer.getDelta()) end);
  watcher:watch("ballX", function() return ball.pos_x end);
  watcher:watch("paltformX", function() return platform.pos_x end);
  watcher:watch("shift_b_x", function() return level_one_collisions.shift_b_x end);
  watcher:watch("shift_b_y", function() return level_one_collisions.shift_b_y end);
end

watch();
