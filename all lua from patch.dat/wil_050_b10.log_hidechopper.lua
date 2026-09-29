-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: LOG_HideChopper
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
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:In()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Unhide()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetEnabled();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076497057763324442";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
