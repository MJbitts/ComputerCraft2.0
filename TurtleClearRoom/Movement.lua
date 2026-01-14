local Movement = {}

local filename = "directions.txt"
local file = fs.open(filename, "w")

local turtleOrginX = 0
local turlteOrginY = 0
local directions = 0

function Movement.forward()
    turtle.forward()
    turtleOrginX = turtleOrginX+1;

    file.writeLine("turtle.forward()")
    print(turtleOrginX)
end
file.close()
return Movement