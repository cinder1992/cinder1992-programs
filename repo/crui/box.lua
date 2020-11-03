local label = require("crui/label")

local box = {
    text = "", --Boxes don't have text
    title = "", --Boxes have Titles.
    style = [ ["┌","─","┐"], ["┐","│","┘"], ["└","─","┘"], ["┌","│","└"] ],
    shadowStyle = [nil, ["▖","▌","▘"], ["▝","▀","▘"], nil],
}

box = label:new(box) --inherit label

function box:draw(gpu)
    label.draw(self, gpu) --draw our label
end

function box:drawBorder(gpu)
end

function box:assembleBorder(side, width)
end

return box