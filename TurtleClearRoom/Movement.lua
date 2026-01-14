local Movement = {}

local filename = "directions.txt"

local turtleOrginX = 0
local turlteOrginY = 0
local directions = 0

function Movement.forward()
    local file = fs.open(filename, "w")
    turtle.forward()
    turtleOrginX = turtleOrginX+1;
    
    file.writeLine("turtle.forward()")
    print(turtleOrginX)
    file.close()
end
return Movement