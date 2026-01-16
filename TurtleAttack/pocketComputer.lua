local detector = peripheral.find("player_detector")
while true do
    if detector then
        local pos = detector.getPlayerPos("mjbitts")
        term.clear()
        print("Position: "..pos.x.. ","..pos.y..","..pos.z)
    else
        print("playerDetector not found please try reanstalling")
    end
    sleep(3)
end