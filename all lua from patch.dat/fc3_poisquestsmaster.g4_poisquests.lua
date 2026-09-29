-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: G4_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/G4/SQW_G4_MAIN/SQW_G4_MAIN.SQW_G4_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/G4/SQS_G4_MAIN/SQS_G4_MAIN.SQS_G4_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4_MAIN/SQA_G4_MAIN.SQA_G4_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_POIsQuests/G4/SQW_G4B_MAIN/SQW_G4B_MAIN.SQW_G4B_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4B_MAIN/SQA_G4B_MAIN.SQA_G4B_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4C_MAIN/SQA_G4C_MAIN.SQA_G4C_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Initialized = self.f_13_Initialized;
    l0.Completed = self.f_13_Completed;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    self[16] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = self.f_16_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_16_Received;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
    self[15] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_15_Received;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    l0.Completed = self.f_10_Completed;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Initialized = self.f_14_Initialized;
    l0.Completed = self.f_14_Completed;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[1];
    l0.message = "G4_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Activate();
    self:en_5();
    l0 = self[5];
    l0:Activate();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Activate();
    self:en_9();
    l0 = self[9];
    l0:Activate();
    self:en_13();
    l0 = self[13];
    l0:Activate();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Activate();
end;

function export:f_13_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_13_Initialized()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Initialize();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Initialize();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_4_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_16_Enabled()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Initialize();
end;

function export:f_16_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.message = "G4_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_15_Enabled()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.message = "G4_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_15_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_10_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_10_Initialized()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Initialize();
end;

function export:f_14_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Initialized()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Initialize();
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Initialize();
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQW_G4_MAIN/SQW_G4_MAIN.SQW_G4_MAIN.lua";
    l0.MissionName = "SQW_G4_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "297375858737486049";
    l0.QuestGiverMarker = "2076276416688699470";
    l0.QuestType = "wantedquest";
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4C_MAIN/SQA_G4C_MAIN.SQA_G4C_MAIN.lua";
    l0.MissionName = "SQA_G4C_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "288368659482731089";
    l0.QuestGiverMarker = "2076290833356699989";
    l0.QuestType = "huntingquest";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQS_G4_MAIN/SQS_G4_MAIN.SQS_G4_MAIN.lua";
    l0.MissionName = "SQS_G4_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "315390257246977946";
    l0.QuestGiverMarker = "2076276571030698104";
    l0.QuestType = "speedquest";
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4B_MAIN/SQA_G4B_MAIN.SQA_G4B_MAIN.lua";
    l0.MissionName = "SQA_G4B_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "279361460227984555";
    l0.QuestGiverMarker = "2076289981067835789";
    l0.QuestType = "huntingquest";
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQA_G4_MAIN/SQA_G4_MAIN.SQA_G4_MAIN.lua";
    l0.MissionName = "SQA_G4_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "234325463954005060";
    l0.QuestGiverMarker = "2076276153026361397";
    l0.QuestType = "huntingquest";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/G4/SQW_G4B_MAIN/SQW_G4B_MAIN.SQW_G4B_MAIN.lua";
    l0.MissionName = "SQW_G4B_MAIN";
    l0.BaseBlock = "225318264699264068";
    l0.BaseLayer = "306383057992231489";
    l0.QuestGiverMarker = "2076290527268976936";
    l0.QuestType = "wantedquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
