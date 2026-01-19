local wireLess = peripheral.wrap("right")
local inventory = peripheral.find("inventoryManager")
if wireless and inventory then
    print("found wireless connection")
    modem.open(5)
    event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
    print("I received a message : ".. message)
else
    print("Didn't find router or inventory please reinstal")
end

