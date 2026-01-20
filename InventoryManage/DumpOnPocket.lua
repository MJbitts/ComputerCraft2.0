local wireLess = peripheral.wrap("back")
if wireLess then
    print("found wireless connection")
    wireLess.open(5)
    wireLess.transmit(5,5,"Dump")
else
    print("Didn't find router or inventory please reinstal")
end

