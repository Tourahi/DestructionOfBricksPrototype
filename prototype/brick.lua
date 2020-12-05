
Brick = Object:extend("Brick");

function Brick:new(pos_x,pos_y,width,height,mode,color)
  self.pos_x = pos_x;
  self.pos_y = pos_y;
  self.width = width;
  self.height = height;
  self.mode = mode or "line";
  self.color = color or {1.0,1.0,1.0,1.0};
end


return Brick;
