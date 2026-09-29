-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b10/den_040_b10.domino.xml
-- User graph: DEN_040_BackupAlarmState
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="DestoryedAlarm" Type="Nomad|entity{}" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/ListWriter.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.globals.lua");
    end;
end;

function export:AlarmActivated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:True();
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:AlarmDestroyed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter.lua")];
    l0.Input = PersistentGlobals.DEN_040_MAIN.DestroyedAlarms;
    l0.Data = self.DestoryedAlarm;
    l0.Index = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Add();
end;

function export:AlarmDisabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:True();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.DEN_040_MAIN.AlarmsAreDisabled = l0.Target;
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.DEN_040_MAIN.AlarmAreActivated = l0.Target;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
