-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_persistencymaster.domino.xml
-- User graph: G3_PersistencyController
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
        cbox:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
    self[14] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_14_Received;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[1];
    l0.message = "BASE_G3_HOYT_HQ_Active";
    l0:Enable();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "BASE_G3_HOYT_HQ_After";
    l0:Enable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "9145471359075236";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_6_Disabled;
    l0:Disable();
end;

function export:f_14_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_14_Received()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.missionBlockId = "138285423844097";
    l0:Activate();
end;

function export:f_10_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "9145471359075236";
    l0._graph = self;
    l0.Activated = self.f_4_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.message = "BASE_G3_HUR_050_After";
    l0:Enable();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "138272128444211";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_7_Disabled;
    l0:Disable();
end;

function export:f_4_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_9_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "27159869868596813";
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "9145471383213019";
    l0._graph = self;
    l0.Activated = self.f_9_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.message = "BASE_G3_HOYT_HQ_JAS_220";
    l0:Enable();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "18152670613847139";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0:Disable();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
