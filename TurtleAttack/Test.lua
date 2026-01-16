tel = peripheral.find("end_automata")

if tel then 
    print("peripheral found")  
    local saveHomeevent,message = tel.savePoint("savedHome")
    local e,k =os.pullEvent("key")
    if k == keys.s then
        print("returning home")
    end
else 
    print("Peripherial not found try to reninstall core")
end