
Brick = Object:extend("Brick");

function Brick:new(pos_x,pos_y,width,height,mode)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.width = width;
  self.height = height;
  self.mode = mode or "line";
end


return Brick;
