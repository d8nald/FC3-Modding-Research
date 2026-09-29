-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: LOG_IsMissionRestartedB10
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    self.MissionIsInPlaytrough = DummyFunction;
    self.MissionIsRestarted = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.WIL_050_MAIN.WIL_050_MainIsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_1_A_is_True;
    l0.A_is_False = self.f_1_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_1_A_is_False()
    self = self._graph;
    self:MissionIsInPlaytrough();
end;

function export:f_1_A_is_True()
    self = self._graph;
    self:MissionIsRestarted();
end;

-- Empty out anchor definitions
function export:MissionIsInPlaytrough()
    
end;
function export:MissionIsRestarted()
    
end;
_compilerVersion = 24;
