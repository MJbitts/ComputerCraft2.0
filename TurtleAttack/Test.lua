tel = peripheral.find("end_automata")
local savedpoint
while true do
if tel then 
    print("peripheral found") 
    print("If you  want to go foward press t, if you want to save push h")
    print("If you want to warp back please press b ")
    local e,k =os.pullEvent("key")
    if k == keys.t then
        print("moving forward")
        turtle.forward()
    end
    if k == keys.h then
        local saveHomeevent,message = tel.savePoint("setHome")
        savedpoint = "setHome"
        print("point saved")
    elseif k == keys.b then
        print("returning home")
        warpToPoint("setHome")
    end
else 
    print("Peripherial not found try to reninstall core")
end
end