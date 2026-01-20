local wireLess = peripheral.wrap("back")
if wireless then
    print("found wireless connection")
    modem.open(5)
    modem.transmit("Dump")
else
    print("Didn't find router or inventory please reinstal")
end

