local moves = 0
local moves_maked = 0
local destroyed_blocks = 0
local destroyed_blocks_temp = 0
local lines_digged = 0
local horizontally = false
local vertically = false
local wall = false
write("How many blocks horizontally? \n")
local x = tonumber(read())
write("How many blocks vertically? \n")
local y = tonumber(read())
if (x >= 1) and (y >= 1) then
	moves = x*y+(y*2-2)
	destroyed_blocks = x*y
	write("It will spend ".. tostring(moves) .." fuel!\n")
	wall = true
elseif (x >= 1) and (y <= 0) then
	moves = x
	destroyed_blocks = x
	write("It will spend ".. tostring(moves)*2 .." fuel!\n")
	horizontally = true
elseif (x <= 0) and (y >= 1) then
	moves = y
	destroyed_blocks = y
	write("It will spend ".. tostring(moves)*2 .." fuel!\n")
	vertically = true
elseif (x <= 0) and (y <= 0) then
	write("Exiting...")
	exit()
else
	write("Error!")
	exit()
end
write("Do you like to continue? Y/N ")
local answer = read()
if answer == "N" then
	write("Exiting... \n")
	exit()
end
function dig_right()
	turtle.dig()
	turtle.turnRight()
	turtle.forward()
	turtle.turnLeft()
end
function go_left()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnRight()
end
function dig_left()
	turtle.dig()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnRight()
end
function go_right()
	turtle.turnRight()
	turtle.forward()
	turtle.turnLeft()
end
function dig_horizontal()
	repeat
		dig_right()
		moves_maked = moves_maked + 1
	until moves_maked >= destroyed_blocks
	moves_maked = 0
	turtle.turnLeft()
	repeat
		turtle.forward()
		moves_maked = moves_maked + 1
	until moves_maked >= x
		turtle.turnRight()
end
function dig_vertical()
	repeat
		turtle.dig()
		turtle.up()
		moves_maked = moves_maked + 1
	until moves_maked == destroyed_blocks
	moves_maked = 0
	repeat
		turtle.down()
		moves_maked = moves_maked + 1
	until moves_maked >= y
end
function dig_wall()
	repeat
		repeat
			dig_right()
			destroyed_blocks_temp = destroyed_blocks_temp + 1
			moves_maked = moves_maked + 1
		until destroyed_blocks_temp >= x-1
	turtle.dig() 
	destroyed_blocks_temp = 0
	lines_digged = lines_digged + 1
	turtle.up()
		repeat
			dig_left()
			destroyed_blocks_temp = destroyed_blocks_temp + 1
			moves_maked = moves_maked + 1
		until destroyed_blocks_temp == x-1
		turtle.dig()
		lines_digged = lines_digged + 1
		destroyed_blocks_temp = 0
	until (destroyed_blocks >= moves_maked) and (lines_digged >= y)
	destroyed_blocks_temp = 0
	lines_digged = lines_digged + 1
	moves_maked = 0
repeat
	turtle.down()
	moves_maked = moves_maked + 1
until moves_maked >= y
end
if wall then
	dig_wall()
elseif horizontally then
	dig_horizontal()
elseif vertically then
	dig_vertical()
else
	write("Fatal error!!")
end
write("Done!!!")