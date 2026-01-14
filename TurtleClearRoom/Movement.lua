local Movement = {}

local filename = "directions.txt"

local turtleOriginX = 0
local turtleOriginY = 0
local turtleOriginZ = 0
local direction = 0

function Movement.forward()
    local file = fs.open(filename, "w")
    turtle.forward()
    if direction == 0 then -- Facing North
        turtleOriginZ = turtleOriginZ-1;
    elseif direction == 1 then -- Facing East
        turtleOriginX = turtleOriginX+1
    elseif direction == 2 then -- Facing South
        turtleOriginZ = turtleOriginZ+1
    else -- Facing West
        turtleOriginX = turtleOriginX-1
    end
    file.writeLine(direction..":"..turtleOriginX..","..turtleOriginY..",".. turtleOriginZ)
    file.close()
    
end

function Movement.up()
     local file = fs.open(filename, "w")
    turtle.up()
    turtleOriginZ = turtleOriginZ+1
    file.writeLine(direction..":"..turtleOriginX..","..turtleOriginY..",".. turtleOriginZ)
    file.close()
end

function Movement.down()
     local file = fs.open(filename, "w")
    turtle.down()
    turtleOriginZ = turtleOriginZ-1
    file.writeLine(direction..":"..turtleOriginX..","..turtleOriginY..",".. turtleOriginZ)
    file.close()
end

return Movement