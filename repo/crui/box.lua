local label = require("crui/label")

local box = {
    text = "", --Boxes don't have text
    title = "", --Boxes have Titles.
    style = {"┌","─","┐"}, {"┐","│","┘"}, {"└","─","┘"}, {"┌","│","└"}, },
    shadowStyle = { nil, {"▖","▌","▘"}, {"▝","▀","▘"} },
}

box = label:new(box) --inherit label

function box:draw(gpu)
    label.draw({x=self.x+1, y=self.y+1, w=self.w-1, h=self.h-1, fg=self.fg, bg=self.bg}, gpu) --draw our label
end

function box:drawBorder(gpu)
end

function box:assembleBorder(side, width)
end

return box