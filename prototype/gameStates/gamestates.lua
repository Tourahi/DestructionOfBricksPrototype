-- This module will manage the game states

local gameStates  = {};
local gameStatesPath = "./gameStates/";

local loaded = {}; -- loaded state (cached)
local current_state = nil;


local function getKeyOfValue( tab , value )
  for k,v in pairs( tab ) do
    if v == value then
      return k;
    end
  end
  return nil;
end

-- Run the function "callback" associated to the event name if defined
function gameStates.stateEvent( funcName , ... )
  if current_state and type( current_state[funcName] ) == 'function' then
    current_state[funcName]( ... );
  end
end

function gameStates.setState( Sname , ... ) -- Sname : stateName
  gameStates.stateEvent( 'exit' );
  local oldStateName = getKeyOfValue( loaded , current_state );
  current_state = loaded[ Sname ];
  if not current_state then
    current_state = require (gameStatesPath .. Sname);
    loaded[ Sname ] = current_state;
    gameStates.stateEvent('load' , oldStateName , ... );
  end
  print(oldStateName);
  gameStates.stateEvent( 'enter' , oldStateName , ... );
end


return gameStates;
