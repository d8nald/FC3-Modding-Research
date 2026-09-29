-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_persistencymaster.domino.xml
-- User graph: E6_PersistencyController
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
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_7_Received;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
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
    l0.message = "BASE_E6_TOWN_Close_Gate";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "BASE_E6_OW_RegenerateNavmesh_Activate";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138287020251670";
    l0.missionLayerId = "9145486274992662";
    l0._graph = self;
    l0.Activated = self.f_6_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "BASE_E6_OW_RegenerateNavmesh_Dectivate";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138287020251670";
    l0.missionLayerId = "138288221804181";
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
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

function export:f_3_Activated()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Disable();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_12_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138287020251670";
    l0.missionLayerId = "138288221804181";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_14_Disabled;
    l0:Disable();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.message = "BASE_E6_OW_Comodo_Activate";
    l0:Enable();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Disable();
end;

function export:f_2_Activated()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "BASE_E6_TOWN_Open_Gate";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_6_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159868799773134";
    l0.missionLayerId = "54181466564028486";
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159868799773134";
    l0.missionLayerId = "45174267309279518";
    l0._graph = self;
    l0.Activated = self.f_2_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
