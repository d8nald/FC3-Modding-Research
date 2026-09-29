-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: C4_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4_MAIN/SQW_C4_MAIN.SQW_C4_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4B_MAIN/SQW_C4B_MAIN.SQW_C4B_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/C4/SQA_C4_MAIN/SQA_C4_MAIN.SQA_C4_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4C_MAIN/SQW_C4C_MAIN.SQW_C4C_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_POIsQuests/C4/SQS_C4_MAIN/SQS_C4_MAIN.SQS_C4_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_POIsQuests/C4/SQA_C4B_MAIN/SQA_C4B_MAIN.SQA_C4B_MAIN.lua";
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
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Initialized = self.f_13_Initialized;
    l0.Completed = self.f_13_Completed;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Completed = self.f_1_Completed;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    self[19] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_19_Received;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[11] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_11_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[10];
    l0.message = "C4_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Activate();
    self:en_2();
    l0 = self[2];
    l0:Activate();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Activate();
    self:en_4();
    l0 = self[4];
    l0:Activate();
    self:en_3();
    l0 = self[3];
    l0:Activate();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Activate();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Initialize();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Initialize();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
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
    self:en_6();
    l0 = self[6];
    l0:Initialize();
end;

function export:f_1_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Initialize();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Initialize();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_19_Received()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
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
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Initialize();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.message = "JAS_100_IsCompleted";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "C4_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Received()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.message = "C4_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4B_MAIN/SQW_C4B_MAIN.SQW_C4B_MAIN.lua";
    l0.MissionName = "SQW_C4B_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "378440652026556255";
    l0.QuestGiverMarker = "2076186663408648819";
    l0.QuestType = "wantedquest";
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQA_C4B_MAIN/SQA_C4B_MAIN.SQA_C4B_MAIN.lua";
    l0.MissionName = "SQA_C4B_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "369433452771798520";
    l0.QuestGiverMarker = "2076403555111050415";
    l0.QuestType = "huntingquest";
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4_MAIN/SQW_C4_MAIN.SQW_C4_MAIN.lua";
    l0.MissionName = "SQW_C4_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "351419054260571748";
    l0.QuestGiverMarker = "2076168091074576483";
    l0.QuestType = "wantedquest";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQW_C4C_MAIN/SQW_C4C_MAIN.SQW_C4C_MAIN.lua";
    l0.MissionName = "SQW_C4C_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "387447851281302385";
    l0.QuestGiverMarker = "2076186668221612686";
    l0.QuestType = "wantedquest";
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQS_C4_MAIN/SQS_C4_MAIN.SQS_C4_MAIN.lua";
    l0.MissionName = "SQS_C4_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "360426253515317724";
    l0.QuestGiverMarker = "2076222607717319400";
    l0.QuestType = "speedquest";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C4/SQA_C4_MAIN/SQA_C4_MAIN.SQA_C4_MAIN.lua";
    l0.MissionName = "SQA_C4_MAIN";
    l0.BaseBlock = "333404655751071218";
    l0.BaseLayer = "342411855005812210";
    l0.QuestGiverMarker = "2076186041233982041";
    l0.QuestType = "huntingquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
