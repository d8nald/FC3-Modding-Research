
LuaLibMath = {}

--[[
A --k--------- B
A ------k----- B
A ----------k- B
done
--]]
function LuaLibMath:Lerp(a,b,k)
	return (a + (b - a)*k);
end

function LuaLibMath:Normalize(vec)
    if(vec == nil) then
        return nil;
    end
    local amp = math.sqrt(vec[1]^2+vec[2]^2+vec[3]^2);
    return {vec[1]/amp, vec[2]/amp, vec[3]/amp}
end

function LuaLibMath:SnapAngle360Deg(ang)
    if(ang == nil) then
        return nil;
    end
    return ang%360;
end

function LuaLibMath:SnapAngle180Deg(ang)
    if(ang == nil) then
        return nil;
    end
    return ang%180;
end

function LuaLibMath:SnapAngle2Pi(ang)
    if(ang == nil) then
        return nil;
    end
    return ang%(2*math.pi);
end

function LuaLibMath:SnapAnglePi(ang)
    if(ang == nil) then
        return nil;
    end
    return ang%(math.pi);
end

function LuaLibMath:SnapAngles2Pi(ang3)
    if(ang3 == nil) then
        return nil;
    end
    return {self:SnapAngle2Pi(ang3[1]), self:SnapAngle2Pi(ang3[2]), self:SnapAngle2Pi(ang3[3])}
end


luavec = {}
function luavec.new(x, y, z)
    local v
    if(type(x) == "table") then
        v = { x[1] or 0, x[2] or 0, x[3] or 0}
    else
        v = { x or 0, y or 0, z or 0}
    end
    setmetatable(v, luavecmt)
    return v
end

function luavec.normalize(v)
    local s = 1.0 / math.sqrt(v[1]*v[1] + v[2]*v[2] + v[3]*v[3]);
    return luavec.new(v[1]*s, v[2]*s, v[3]*s)
end

function luavec.dot(v1, v2)
    return v1[1] * v2[1] + v1[2] * v2[2] + v1[3] * v2[3]
end

function luavec.cross(v1, v2)
    return luavec.new(v1[2] * v2[3] - v1[3] * v2[2], v1[3] * v2[1] - v1[1] * v2[3], v1[1] * v2[2] - v1[2] * v2[1])
end

luavecmt = {}
luavecmt.__unm = function(v) return luavec.new(-v[1], -v[2], -v[3]) end --not operator
luavecmt.__add = function(v1, v2) return luavec.new(v1[1] + v2[1], v1[2] + v2[2], v1[3] + v2[3]) end
luavecmt.__sub = function(v1, v2) return luavec.new(v1[1] - v2[1], v1[2] - v2[2], v1[3] - v2[3]) end
luavecmt.__mul = function(v1, v2)
    local s = tonumber(v2)
    if s then
        -- vector * scalar
        return luavec.new(v1[1] * s, v1[2] * s, v1[3] * s)
    else
        -- vector * vector
        return luavec.new(v1[1] * v2[1], v1[2] * v2[2], v1[3] * v2[3])
    end
end

