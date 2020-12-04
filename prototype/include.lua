
function include()
  Object  = require "classicc";
  -- DEBUG
  Binocles  = require "Binocles";
  watcher  = Binocles({
      active = true,
      customPrinter = true,
      debugToggle =   'f1',
      consoleToggle = 'f2',
      colorToggle   = 'f3',
      draw_x = 75,
      draw_y = 20,
      watchedFiles = {
        'main.lua',
        'include.lua',
        'DEBUG.lua'
      },
    });

  Ball    = require "ball";
  Brick   = require "brick";
  LevelBricks = require "level_bricks";
  Walls = require "walls";
  Platform  = require "platform";
  Collisions = require "collisions";
end

include();
