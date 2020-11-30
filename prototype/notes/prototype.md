## Prototype

* As the LÖVE [hamster ball demo](https://love2d.org/wiki/Tutorial:Hamster_Ball) tells us, we need to define `love.load`, `love.update`, and `love.draw` callbacks. `love.load` is executed only once right after the game is launched, `love.update` is continually executed to update states of the game objects, and `love.draw` redraws the screen according to the current state of the objects. These functions have to operate on some objects, so we also need to define them and their properties.