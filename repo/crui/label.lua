local math = math

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
    o.text = o.text or "" --strlen doesn't like nils?
    return o
end

function label:draw(gpu)
    if #self.text > self.w then error("Text too long!") end
    gpu.setForeground(self.fg)
    gpu.setBackground(self.bg)
    gpu.fill(self.x, self.y, self.w, self.h, " ")
    if self.text ~= nil or self.text ~= "" then
        local x = self.x + math.floor((self.w - #self.text) / 2)
        local y = self.y + math.floor(self.h / 2) 
        gpu.set(x, y, self.text)
    end
end

return label