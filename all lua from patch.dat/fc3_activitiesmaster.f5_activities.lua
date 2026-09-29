-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_activitiesmaster.domino.xml
-- User graph: F5_Activities
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[3];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[1];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[4];
    l0.message = "F5_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.MissionBlock = "138281522138616";
    l0.MissionBlockLayer = "9145480776879609";
    l0.ActivityMarker = "2076263294095601396";
    l0:Activate();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.MissionBlock = "138273347865378";
    l0.MissionBlockLayer = "27159871112122634";
    l0.ActivityMarker = "2076265111143591708";
    l0:Activate();
end;

function export:f_11_Completed()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_13_Added()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_13_Removed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "OnExclusiveMissionStop";
    l0:Enable();
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.message = "F5_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_170_MAIN";
    l0._graph = self;
    l0.Locked = DummyFunction;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_11_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075931418388639260";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_13_Added;
    l0.Removed = self.f_13_Removed;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.message = "OnExclusiveMissionStart";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
