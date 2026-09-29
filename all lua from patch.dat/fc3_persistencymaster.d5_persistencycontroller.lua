-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_persistencymaster.domino.xml
-- User graph: D5_PersistencyController
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
    self[27] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = self.f_27_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_27_Received;
    self[15] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_15_Received;
    self[23] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = self.f_23_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_23_Received;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[24] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = self.f_24_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_24_Received;
    self[20] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_20_Received;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
    self[18] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_18_Received;
    self[28] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_28_Received;
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[15];
    l0.message = "BASE_D5_TEMPLE_Initialize";
    l0:Enable();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "18152645925294483";
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_21_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_27_Enabled()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.message = "BASE_D5_TEMPLE_Unlock_VILLAGERZONE";
    l0:Enable();
end;

function export:f_27_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "27159845180069966";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_26_Disabled;
    l0:Disable();
end;

function export:f_32_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "138285276732445";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:Disable();
end;

function export:f_29_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.message = "BASE_D5_TEMPLE_Unlock_CIT_010";
    l0:Enable();
end;

function export:f_15_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138248372853265";
    l0._graph = self;
    l0.Activated = self.f_16_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138247415794744";
    l0._graph = self;
    l0.Activated = self.f_9_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_23_Enabled()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.message = "BASE_D5_TEMPLE_Lock_Door_Script";
    l0:Enable();
end;

function export:f_23_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138272125551279";
    l0._graph = self;
    l0.Activated = self.f_21_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_17_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "9145446670545466";
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_26_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "9145446538917949";
    l0._graph = self;
    l0.Activated = self.f_25_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_16_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "9145446538917949";
    l0._graph = self;
    l0.Activated = self.f_14_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.message = "BASE_D5_TEMPLE_Unlock_CIT_END";
    l0:Enable();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "18152645925294483";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_8_Disabled;
    l0:Disable();
end;

function export:f_22_Deactivated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_19_Deactivated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_25_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.message = "BASE_D5_TEMPLE_Unlock_CIT_030";
    l0:Enable();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138247415794744";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_6_Disabled;
    l0:Disable();
end;

function export:f_24_Enabled()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.message = "BASE_D5_HOTEL_After_Debris";
    l0:Enable();
end;

function export:f_24_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138272125551279";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_22_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.message = "BASE_D5_TEMPLE_Unlock_Door_Script";
    l0:Enable();
end;

function export:f_20_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138248372853265";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_19_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.message = "BASE_D5_TEMPLE_Unlock_CIT_015";
    l0:Enable();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "9145446538917949";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_5_Disabled;
    l0:Disable();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.message = "BASE_D5_TEMPLE_Lock_VILLAGERZONE";
    l0:Enable();
end;

function export:f_18_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "138248372853265";
    l0._graph = self;
    l0.Activated = self.f_17_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "27159845180069966";
    l0._graph = self;
    l0.Activated = self.f_12_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_28_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_28_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "18152681485916705";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_30_Disabled;
    l0:Disable();
end;

function export:f_30_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "138304874290722";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_32_Disabled;
    l0:Disable();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "9145482654114948";
    l0._graph = self;
    l0.Activated = self.f_29_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_9_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "BASE_D5_TEMPLE_Unlock_CIT_060";
    l0:Enable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247284176957";
    l0.missionLayerId = "9145446670545466";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_7_Disabled;
    l0:Disable();
end;

function export:f_12_Activated()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
