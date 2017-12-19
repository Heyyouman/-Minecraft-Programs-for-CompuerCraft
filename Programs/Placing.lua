write("how many times?")
local Number = tonumber(read())
if Number == 0 then
	write("Ok!\n")
	exit()
end
local i = 0
repeat
	if turtle.detect() then
		write("I can't do it!\n")
		os.sleep(1)
	else
		turtle.place()
		write("Placed ".. tostring(i)+1 .." times\n")
		i = i + 1
	end
until i == Number