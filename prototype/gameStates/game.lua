local game = {};

require "include";
require ("initEntities")();
require "DEBUG";

function game.load(arg)
end

function game.enter( prevState , ... )
  if prevState == "gamefinished" then
    require ("initEntities")();
  end
end

function game.update(dt)
  platform:update(dt);
  ball:update(dt);
  current_level_bricks:update(dt);
  level_collisions:resolve_collisions(ball,platform,current_level_bricks,screen_borders.walls);
  level_sequence.switch_to_next_level(current_level_bricks);
  watcher:update();
end

function game.draw()
  watcher:draw();
  platform:draw();
  ball:draw();
  current_level_bricks:draw();
  screen_borders:draw();
end

function game.keyreleased( key, code )
   if key == 'c' then
      current_level_bricks:clear_current_level_bricks();
   elseif  key == 'escape' then
      gamestates.setState( "gamepaused", { ball, screen_borders , platform, current_level_bricks, platform, watcher } )
   end
end

function game.keypressed(key)
  watcher:keypressed(key);
end

return game;
