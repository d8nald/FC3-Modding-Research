-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: POIsQuest
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Mission" Type="Core|boxclass" />
    <DataIn Name="MissionName" Type="Core|string" />
    <DataIn Name="BaseBlock" Type="Nomad|missionblock" />
    <DataIn Name="BaseLayer" Type="Nomad|missionblocklayer" />
    <DataIn Name="QuestType" Type="Core|string" />
    <DataIn Name="QuestGiverMarker" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.Quest.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[5] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_5_Received;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Quest.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.MissionName;
    l0._graph = self;
    l0.Locked = self.f_3_Locked;
    l0.Running = self.f_3_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
    l0 = self[5];
    l0.message = "OnExclusiveMissionStart";
    l0:Enable();
end;

function export:Initialize()
    local l0;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_17_Completed()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_17_Locked()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_17_Running()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_18_Completed()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_Locked()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_Running()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.QuestGiverMarker;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_14_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_15_Yes()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_1_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.QuestGiverMarker;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_15_Yes;
    l0.No = self.f_15_No;
    l0:Entity();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_13_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.QuestGiverMarker;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_12_Removed;
    l0:Remove();
end;

function export:f_13_Yes()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Disable();
end;

function export:f_12_Removed()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Disable();
end;

function export:f_14_Added()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.MissionName;
    l0.B = "SQS_";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = DummyFunction;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = self.f_7_A_ncontains_B;
    l0:In();
end;

function export:f_3_Locked()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_3_Running()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_5_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.MissionName;
    l0._graph = self;
    l0.Locked = self.f_6_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_6_Locked()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_4_Completed()
    self = self._graph;
    self:Completed();
end;

function export:f_4_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_7_A_ncontains_B()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_060_MAIN";
    l0._graph = self;
    l0.Locked = self.f_17_Locked;
    l0.Running = self.f_17_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_17_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.message = self.MissionName;
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_080_MAIN";
    l0._graph = self;
    l0.Locked = self.f_18_Locked;
    l0.Running = self.f_18_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_18_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.BaseBlock;
    l0.missionLayerId = self.BaseLayer;
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.QuestGiverMarker;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_13_Yes;
    l0.No = self.f_13_No;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = self.Mission;
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.typeName = self.QuestType;
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
