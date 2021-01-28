gamestates = require "./gameStates/gamestates"

function love.load(arg)
  gamestates.setState( "menu" );
end

function love.update(dt)
  gamestates.stateEvent( "update" , dt );
end

function love.draw()
    gamestates.stateEvent( "draw" );
end

function love.keyreleased( key, code )
   gamestates.stateEvent( "keyreleased", key, code );
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end


function love.keypressed(key)
  gamestates.stateEvent( "keypressed", key );
end
