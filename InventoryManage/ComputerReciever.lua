local wireLess = peripheral.wrap("right")
local inventory = peripheral.find("inventory_manager")
if wireLess then
    if inventory then
        print("found wireless connection")
        wireLess.open(5)
        while true do
            event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
            print("I received a message : ".. message)
            if senderChannel == 5 and message == ("Dump") then
                inventory.removeItemFromPlayer("down", {toSlot=26, fromSlot=9})
            end
        end
        term.clear()
    else 
        print("Didn't find inventory")
    end
else
    print("Didn't find router")
end

