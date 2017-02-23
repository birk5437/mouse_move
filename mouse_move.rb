# Run "gem install mouse" (without quotes) in mac terminal to get this to run.
# To run: cd into the directory this file is kept..then type "ruby mouse_move.rb" in terminal (no quotes)
# control-c in the terminal window to stop
# See https://github.com/AXElements/mouse for more stuff you can do
require 'mouse'



mouse_x_change = 45
mouse_y_change = 45
screen_width = 1440
screen_height = 900

while true do

  mouse_x = Mouse.current_position.x.to_i
  mouse_y = Mouse.current_position.y.to_i

  if mouse_x >= (screen_width - 10) || mouse_x <= 10
    mouse_x_change *= -1
  end
  if mouse_y >= (screen_height - 10) || mouse_y <= 10
    mouse_y_change *= -1
  end

  mouse_x += mouse_x_change
  mouse_y += mouse_y_change

  Mouse.move_to( [mouse_x, mouse_y] )

end
