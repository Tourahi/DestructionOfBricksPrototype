local levels = {}
levels.sequence = require "./levelsSeq/data/seq";
levels.current_level = 1;
levels.game_finished = false;



--  Dynamically requiring levels
function levels.require_level()
  local lvl_fileName = "./levelsSeq/data/" .. levels.sequence[levels.current_level];
  return require ( lvl_fileName );
end

 function levels.switch_to_next_level(level)
    if level.no_bricks_left == true then
        if levels.current_level < #levels.sequence then
            levels.current_level = levels.current_level + 1;
            level:construct(levels.require_level());
            ball:reposition();
        else
            levels.game_finished = true;
        end
    end
 end


 return levels;
