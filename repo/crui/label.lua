local math = math
local string = string

local label = {
    text = "",
    w = 1,
    h = 1,
    x = 1,
    y = 1,
    fg = 0xFFFFFF,
    bg = 0x0000AA,
}

function label:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function label:draw(gpu)
    if string.len(self.text) > w then error("Text too long!") end
    gpu.setForeground(self.fg)
    gpu.setBackgroundI(self.bg)
    gpu.fill(self.x, self.y, self.w, self.h, " ")
    if self.text ~= nil or self.text ~= "" then
        local x = self.x + math.floor(self.w - string.len(self.text) / 2)
        local y = self.y + math.floor(self.h / 2) 
        gpu.set(x, y, self.text)
    end
end


return label