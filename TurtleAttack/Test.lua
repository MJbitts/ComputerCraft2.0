tel = peripheral.find("end_automata")

if tel then 
    print("peripheral found")  
    local saveHomeevent,message = tel.savePoint("savedHome")
    local e,k =os.pullEvent("key")
    print("point saved")
    print("Please press H tor return home")
    if k == keys.h then
        print("returning home")
        warpToPoint("savedHome")
    end
else 
    print("Peripherial not found try to reninstall core")
end