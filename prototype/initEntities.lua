
function initENT()
  platform  = Platform(500,500,300,70,20,'line');
  ball = Ball(400,300,200,200,10);
  level_sequence = require("./levels/sequence");
  level = LevelBricks(50,30,70,50,10,15);
  screen_borders = Walls(30);
  level_collisions = Collisions();
  screen_borders:construct();
  level:construct(level_sequence.sequence[level_sequence.current_level]);
end

initENT();
