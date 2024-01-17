local vectorLib = {}

local vec2_t = {}
vec2_t.__index = vec2_t

function vec2_t.new(x, y)
    return setmetatable({x = x or 0, y = y or 0}, vec2_t)
end

function vec2_t:equals(coords)
    return self.x == coords.x and self.y == coords.y
end

function vec2_t:negate()
    return vec2_t.new(-self.x, -self.y)
end

function vec2_t:subtract(coords)
    return vec2_t.new(self.x - coords.x, self.y - coords.y)
end

function vec2_t:add(coords)
    return vec2_t.new(self.x + coords.x, self.y + coords.y)
end

function vec2_t:multiply(coords)
    return vec2_t.new(self.x * coords.x, self.y * coords.y)
end

function vec2_t:divide(coords)
    return vec2_t.new(self.x / coords.x, self.y / coords.y)
end

function vec2_t:length()
    return math.sqrt(self.x * self.x + self.y * self.y)
end

function vec2_t:normalize()
    local len = self:length()
    return vec2_t.new(self.x / len, self.y / len)
end

function vec2_t:getDistance(coords)
    local dx = self.x - coords.x
    local dy = self.y - coords.y
    return math.sqrt(dx * dx + dy * dy)
end

function vec2_t:dotProduct(coords)
    return self.x * coords.x + self.y * coords.y
end

local vec3_t = {}
vec3_t.__index = vec3_t

function vec3_t.new(x, y, z)
    return setmetatable({x = x or 0, y = y or 0, z = z or 0}, vec3_t)
end

function vec3_t:equals(coords)
    return self.x == coords.x and self.y == coords.y and self.z == coords.z
end

function vec3_t:negate()
    return vec3_t.new(-self.x, -self.y, -self.z)
end

function vec3_t:subtract(coords)
    return vec3_t.new(self.x - coords.x, self.y - coords.y, self.z - coords.z)
end

function vec3_t:add(coords)
    return vec3_t.new(self.x + coords.x, self.y + coords.y, self.z + coords.z)
end

function vec3_t:multiply(coords)
    return vec3_t.new(self.x * coords.x, self.y * coords.y, self.z * coords.z)
end

function vec3_t:divide(coords)
    return vec3_t.new(self.x / coords.x, self.y / coords.y, self.z / coords.z)
end

function vec3_t:length()
    return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
end

function vec3_t:normalize()
    local len = self:length()
    return vec3_t.new(self.x / len, self.y / len, self.z / len)
end

function vec3_t:getDistance(coords)
    local dx = self.x - coords.x
    local dy = self.y - coords.y
    local dz = self.z - coords.z
    return math.sqrt(dx * dx + dy * dy + dz * dz)
end

function vec3_t:dotProduct(coords)
    return self.x * coords.x + self.y * coords.y + self.z * coords.z
end

function vec3_t:radian()
    return vec3_t.new(math.rad(self.x), math.rad(self.y), math.rad(self.z))
end

function vec3_t:coordsText()
    return string.format("X: %.2f, Y: %.2f, Z: %.2f", self.x, self.y, self.z)
end

vectorLib.vec2_t = vec2_t
vectorLib.vec3_t = vec3_t

return vectorLib