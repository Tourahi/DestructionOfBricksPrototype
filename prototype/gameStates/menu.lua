local menu = {}

function menu.update( dt )
end

function menu.draw()
   love.graphics.print("Menu. Press Enter to continue.",
		       280, 250)
end

function menu.keyreleased( key, code )
   if key == "return" then
      gamestates.setState( "game", {  } );
   elseif key == "escape" then
      love.event.quit()
   end
end

return menu
