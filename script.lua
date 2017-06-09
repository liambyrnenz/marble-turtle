function checkSlots()
    full = true
    for i = 1, 9 do
        if (turtle.getItemCount(i) ~= 64) then
            full = false
        end
    end
    return full
end

while (checkSlots() == false) do
    if (turtle.compare()) then
        turtle.dig()
        turtle.forward()
    end
    if (not turtle.compare()) then
        turtle.turnRight()
    end
end
