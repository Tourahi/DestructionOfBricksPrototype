local gamepaused = {}

local gameObjects = {};

function gamepaused.enter ( prevState , ... )
  gameObjects = ... ;
end

function gamepaused.draw ()
  for _, obj in pairs( gameObjects ) do
   if type(obj) == "table" and obj.draw then
      love.graphics.setColor(1.0, 1.0, 1.0, 1.0);
      obj:draw();
   end
  end
  love.graphics.print(
     "Game is paused. Press Enter to continue or Esc to quit",
     50, 50)
end

function gamepaused.keyreleased( key, code )
   if key == "return" then
      gamestates.setState( "game" )
   elseif key == 'escape' then
      love.event.quit()
   end
end

function gamepaused.exit()
   game_objects = nil
end



return gamepaused;
