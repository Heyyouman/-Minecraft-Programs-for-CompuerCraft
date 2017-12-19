write("How many times? ")
local Number = tonumber(read())
local i = 0
if Number == 0 then
	write("Ok!\n")
	exit()
end
repeat
	if turtle.detect() then
		turtle.dig()
		write("Digged ".. tostring(i)+1 .." times\n")
		os.sleep(1)
		i = i + 1
	else
		write("I don't have any blocks to dig!\n")
	end
until i == Number