local detector = peripheral.find("playerDetector")
while true do
    local pos = detector.getPlayerPos("mjbitts")
    term.clear()
    print("Position: "..pos.x.. ","..pos.y..","..pos.z)
end