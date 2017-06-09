-- 9 June 2017
-- Marble Turtle Tekkit Script
-- @author Liam Byrne            github.com/byrneliam2 
-- @author Andrew McManaway      github.com/McManaway1

-- ================== References =====================
-- https://www.lua.org/manual/5.1/manual.html
-- http://computercraft.info/wiki/Turtle_(API)
-- http://www.computercraft.info/wiki/Os.loadAPI

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

-- Loop while the inventory is not full
while (checkSlots() == false) do
    if (turtle.compare()) then
        turtle.dig()
        turtle.forward()
        continue;
    end
    if (not turtle.compare()) then
        turtle.turnRight()
    end
end
