-- 9 June 2017
-- Marble Turtle Tekkit Script
-- @author Liam Byrne            github.com/byrneliam2 
-- @author Andrew McManaway      github.com/McManaway1

function checkSlots()
    --[[
    Check that the inventory of the turtle is full or not.
    ]]--
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
