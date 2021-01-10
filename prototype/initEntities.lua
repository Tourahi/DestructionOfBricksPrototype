
function initENT()
  platform  = Platform(500,500,300,70,20,'line');
  ball = Ball(400,500,200,200,10);
  level_one = LevelBricks(50,30,5,11,70,50,10,15);
  screen_borders = Walls(30);
  level_one_collisions = Collisions();
  screen_borders:construct();
  level_one:construct();
end

initENT();
