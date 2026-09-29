-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: C3_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/C3/SQW_C3B_MAIN/SQW_C3B_MAIN.SQW_C3B_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/C3/SQA_C3_MAIN/SQA_C3_MAIN.SQA_C3_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/C3/SQW_C3_MAIN/SQW_C3_MAIN.SQW_C3_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_POIsQuests/C3/SQS_C3_MAIN/SQS_C3_MAIN.SQS_C3_MAIN.lua";
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
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
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
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[9];
    l0.message = "C3_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Activate();
    self:en_3();
    l0 = self[3];
    l0:Activate();
    self:en_2();
    l0 = self[2];
    l0:Activate();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
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
    self:en_7();
    l0 = self[7];
    l0:Initialize();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Initialize();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.message = "C3_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
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
    self = self._graph;
    self:Initialized();
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
    self:en_2();
    l0 = self[2];
    l0:Initialize();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Initialize();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C3/SQW_C3B_MAIN/SQW_C3B_MAIN.SQW_C3B_MAIN.lua";
    l0.MissionName = "SQW_C3B_MAIN";
    l0.BaseBlock = "288368659476490465";
    l0.BaseLayer = "315390257240755553";
    l0.QuestGiverMarker = "2076183569098641164";
    l0.QuestType = "wantedquest";
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C3/SQS_C3_MAIN/SQS_C3_MAIN.SQS_C3_MAIN.lua";
    l0.MissionName = "SQS_C3_MAIN";
    l0.BaseBlock = "288368659476490465";
    l0.BaseLayer = "324397456495502002";
    l0.QuestGiverMarker = "2076210494619794369";
    l0.QuestType = "speedquest";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C3/SQW_C3_MAIN/SQW_C3_MAIN.SQW_C3_MAIN.lua";
    l0.MissionName = "SQW_C3_MAIN";
    l0.BaseBlock = "288368659476490465";
    l0.BaseLayer = "306383057986003386";
    l0.QuestGiverMarker = "2076181715071543616";
    l0.QuestType = "wantedquest";
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C3/SQA_C3_MAIN/SQA_C3_MAIN.SQA_C3_MAIN.lua";
    l0.MissionName = "SQA_C3_MAIN";
    l0.BaseBlock = "288368659476490465";
    l0.BaseLayer = "297375858731231457";
    l0.QuestGiverMarker = "2076181825358670267";
    l0.QuestType = "huntingquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
