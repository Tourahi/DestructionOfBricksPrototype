
function initENT()
  platform  = Platform(500,500,300,70,20,'line');
  ball = Ball(400,300,200,200,7);
  level_sequence = require("./levelsSeq/levels");
  level_sequence.reset();
  gamestates = require("./gameStates/gamestates");
  current_level_bricks = LevelBricks(50,30,70,50,10,15);
  screen_borders = Walls(30);
  level_collisions = Collisions();

  -- construct entities
  screen_borders:construct();
  current_level_bricks:construct(level_sequence.require_level());

  -- Resetting
  level_sequence.reset();
end

return initENT;
