local detector = peripheral.find("playerDetector")
while true do
    if detector then
        local pos = detector.getPlayerPos("mjbitts")
        term.clear()
        print("Position: "..pos.x.. ","..pos.y..","..pos.z)
    else
        print("playerDetector not found please try reanstalling")
    end
end