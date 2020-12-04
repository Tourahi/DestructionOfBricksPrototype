
DEBUG = {};


function watch()
  watcher:watch("FPS", function() return math.floor(1/love.timer.getDelta()) end);
end

watch();
