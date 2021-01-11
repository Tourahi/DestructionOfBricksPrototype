local levels = {}
levels.sequence = {};
levels.current_level = 1;
levels.game_finished = false;

levels.sequence[1] = {
    { 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0 },
    { 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0 },
    { 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
 }
 
 levels.sequence[2] = {
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1 },
    { 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0 },
    { 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0 },
    { 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0 },
    { 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
 }



 function levels.switch_to_next_level(level)
    if level.no_bricks_left == true then 
        if levels.current_level < #levels.sequence then 
            levels.current_level = levels.current_level + 1;
            level:construct(levels.sequence[levels.current_level]);
            ball:reposition();
        else 
            levels.game_finished = true;
        end
    end
 end


 return levels;