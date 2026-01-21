local wireLess = peripheral.wrap("back")
local UserText
if wireLess then
    print("found wireless connection")
    wireLess.open(5)
    UserText = read()
    while UserText == "Dump" do
    wireLess.transmit(5,5,UserText)
    term.clear()
    end
else
    print("Didn't find router or inventory please reinstal")
end

