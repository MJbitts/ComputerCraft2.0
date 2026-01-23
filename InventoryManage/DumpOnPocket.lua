local wireLess = peripheral.wrap("back")
local UserText
if wireLess then
    print("found wireless connection")
    wireLess.open(5)
    while true do
    wireLess.transmit(5,5,"Dump")
    term.clear()
    print("Dumped")
    sleep(1)
    end
else
    print("Didn't find router or inventory please reinstal")
end

