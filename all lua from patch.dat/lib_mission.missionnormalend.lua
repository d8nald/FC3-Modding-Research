-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: MissionNormalEnd
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionEnd_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionEnd_v3.lua");
    l0 = self[1];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Complete()
    local l0;
    l0 = self[1];
    l0:Complete();
end;

function export:Fail()
    local l0;
    l0 = self[1];
    l0:Fail();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
