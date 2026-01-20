local wireLess = peripheral.wrap("right")
local inventory = peripheral.find("inventory_manager")
if wireLess then
    if inventory then
        print("found wireless connection")
        wireLess.open(5)
        event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
        print("I received a message : ".. message)
        if senderChannel == 5 and message == ("Dump") then
            inventory.removeItemFromPlayer("up",nil,9,26,nil)
        end
    else 
        print("Didn't find inventory")
    end
else
    print("Didn't find router")
end

