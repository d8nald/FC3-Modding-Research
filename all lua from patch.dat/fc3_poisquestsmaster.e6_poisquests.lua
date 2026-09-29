-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: E6_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/E6/SQW_E6_MAIN/SQW_E6_MAIN.SQW_E6_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/E6/SQS_E6_MAIN/SQS_E6_MAIN.SQS_E6_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/E6/SQA_E6_MAIN/SQA_E6_MAIN.SQA_E6_MAIN.lua";
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
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    l0.Completed = self.f_8_Completed;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[10];
    l0.message = "E6_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Activate();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Activate();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Activate();
end;

function export:f_8_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_8_Initialized()
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
    self:en_8();
    l0 = self[8];
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
    self = self._graph;
    self:Initialized();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Initialize();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "E6_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.message = "E6_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/E6/SQA_E6_MAIN/SQA_E6_MAIN.SQA_E6_MAIN.lua";
    l0.MissionName = "SQA_E6_MAIN";
    l0.BaseBlock = "81203076622914096";
    l0.BaseLayer = "90210275877655089";
    l0.QuestGiverMarker = "2076265600075706085";
    l0.QuestType = "huntingquest";
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/E6/SQW_E6_MAIN/SQW_E6_MAIN.SQW_E6_MAIN.lua";
    l0.MissionName = "SQW_E6_MAIN";
    l0.BaseBlock = "81203076622914096";
    l0.BaseLayer = "99217475132433901";
    l0.QuestGiverMarker = "2076265043512536695";
    l0.QuestType = "wantedquest";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/E6/SQS_E6_MAIN/SQS_E6_MAIN.SQS_E6_MAIN.lua";
    l0.MissionName = "SQS_E6_MAIN";
    l0.BaseBlock = "81203076622914096";
    l0.BaseLayer = "108224674387180468";
    l0.QuestGiverMarker = "2076264359360732043";
    l0.QuestType = "speedquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
