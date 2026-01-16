tel = peripheral.find("end_automata")

if tel then 
    print("peripheral found") 
    local e,k =os.pullEvent("key")
    if k == keys.t then
        print("moving forward")
        turtle.forard()
    end
    print("Please push h to save point")
    if k == keys.h then
        local saveHomeevent,message = tel.savePoint("savedHome")
        print("point saved")
        print("Please press B tor return home")
    elseif k == keys.b then
        print("returning home")
        warpToPoint("savedHome")
    end
else 
    print("Peripherial not found try to reninstall core")
end