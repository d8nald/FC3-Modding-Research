-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b10/den_040_b10.domino.xml
-- User graph: DEN_040_B20_Init
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
        cbox:RegisterBox("Domino/System/AI/AlarmModifier.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.RestoreAlarmState.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.RestoreAlarmState.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Activated = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.DEN_040_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_1_A_is_True;
    l0.A_is_False = self.f_1_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.AlarmsAreActivated = PersistentGlobals.DEN_040_MAIN.AlarmAreActivated;
    l0.AlarmsAreDisabled = PersistentGlobals.DEN_040_MAIN.AlarmsAreDisabled;
    l0.AlarmGroup = "#3E17E227";
    l0.DestroyedAlarms = PersistentGlobals.DEN_040_MAIN.DestroyedAlarms;
    l0:In();
end;

function export:f_1_A_is_False()
    self = self._graph;
    self:Initialized();
end;

function export:f_1_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = "2077964970821167500";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Destroy();
end;

function export:f_2_Out()
    self = self._graph;
    self:Initialized();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
