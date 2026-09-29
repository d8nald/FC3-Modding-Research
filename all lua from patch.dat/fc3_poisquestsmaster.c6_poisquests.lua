-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: C6_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/C6/SQA_C6_MAIN/SQA_C6_MAIN.SQA_C6_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/C6/SQS_C6_MAIN/SQS_C6_MAIN.SQS_C6_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/C6/SQW_C6_MAIN/SQW_C6_MAIN.SQW_C6_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_POIsQuests/C6/SQW_C6B_MAIN/SQW_C6B_MAIN.SQW_C6B_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_POIsQuests/C6/SQA_C6B_MAIN/SQA_C6B_MAIN.SQA_C6B_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_POIsQuests/C6/SQS_C6B_MAIN/SQS_C6B_MAIN.SQS_C6B_MAIN.lua";
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
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Initialized = self.f_12_Initialized;
    l0.Completed = self.f_12_Completed;
    self[16] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = self.f_16_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_16_Received;
    self[15] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_15_Received;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Completed = self.f_1_Completed;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    l0.Completed = self.f_11_Completed;
    self[14] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_14_Received;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[16];
    l0.message = "C6_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Activate();
    self:en_1();
    l0 = self[1];
    l0:Activate();
    self:en_3();
    l0 = self[3];
    l0:Activate();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Activate();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Activate();
    self:en_12();
    l0 = self[12];
    l0:Activate();
end;

function export:f_12_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_12_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_16_Enabled()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.message = "C6_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_16_Received()
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
    l0 = self[14];
    l0.message = "C6_RadioTowerIsUnlocked";
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
    self:en_11();
    l0 = self[11];
    l0:Initialize();
end;

function export:f_11_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Initialize();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Initialize();
end;

function export:f_14_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
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
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Initialize();
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
    self:en_12();
    l0 = self[12];
    l0:Initialize();
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQS_C6B_MAIN/SQS_C6B_MAIN.SQS_C6B_MAIN.lua";
    l0.MissionName = "SQS_C6B_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "126239072888973962";
    l0.QuestGiverMarker = "2076385556993959806";
    l0.QuestType = "speedquest";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQW_C6_MAIN/SQW_C6_MAIN.SQW_C6_MAIN.lua";
    l0.MissionName = "SQW_C6_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "99217475124726977";
    l0.QuestGiverMarker = "2076264061439325076";
    l0.QuestType = "wantedquest";
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQA_C6_MAIN/SQA_C6_MAIN.SQA_C6_MAIN.lua";
    l0.MissionName = "SQA_C6_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "81203076615124165";
    l0.QuestGiverMarker = "2076266114989477432";
    l0.QuestType = "huntingquest";
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQA_C6B_MAIN/SQA_C6B_MAIN.SQA_C6B_MAIN.lua";
    l0.MissionName = "SQA_C6B_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "90210275869912635";
    l0.QuestGiverMarker = "2076694494274680371";
    l0.QuestType = "huntingquest";
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQW_C6B_MAIN/SQW_C6B_MAIN.SQW_C6B_MAIN.lua";
    l0.MissionName = "SQW_C6B_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "108224674379477513";
    l0.QuestGiverMarker = "2076277667243501436";
    l0.QuestType = "wantedquest";
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C6/SQS_C6_MAIN/SQS_C6_MAIN.SQS_C6_MAIN.lua";
    l0.MissionName = "SQS_C6_MAIN";
    l0.BaseBlock = "72195877360383173";
    l0.BaseLayer = "117231873634228183";
    l0.QuestGiverMarker = "2076265071599694886";
    l0.QuestType = "speedquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
