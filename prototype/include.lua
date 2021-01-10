
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
      restart = true,
      watchedFiles = {
        'main.lua',
        'include.lua',
        'DEBUG.lua'
      },
    });
  Mouvement    = require "mouvement";
  Brick   = require "brick";
  Ball    = require "ball";
  LevelBricks = require "level_bricks";
  Walls = require "walls";
  Platform  = require "platform";
  Collisions = require "collisions";
end

include();
