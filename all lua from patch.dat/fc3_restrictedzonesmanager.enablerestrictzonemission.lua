-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_restrictedzonesmanager.domino.xml
-- User graph: EnableRestrictZoneMission
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="MissionName" Type="Core|string" />
    <DataIn Name="MissionBlockLayer" Type="Nomad|missionblocklayer" />
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
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    self.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Enable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.MissionName;
    l0._graph = self;
    l0.Locked = self.f_3_Locked;
    l0.Running = self.f_3_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_3_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_3_Hidden()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_3_Locked()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_3_Running()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_2_Out()
    self = self._graph;
    self:Out();
end;

function export:f_1_Activated()
    self = self._graph;
    self:Out();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = self.MissionBlockLayer;
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
