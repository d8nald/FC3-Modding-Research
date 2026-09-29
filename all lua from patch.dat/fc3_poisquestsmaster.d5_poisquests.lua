-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: D5_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/D5/SQA_D5_MAIN/SQA_D5_MAIN.SQA_D5_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/D5/SQS_D5_MAIN/SQS_D5_MAIN.SQS_D5_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/D5/SQW_D5_MAIN/SQW_D5_MAIN.SQW_D5_MAIN.lua";
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
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[8] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_8_Received;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[8];
    l0.message = "D5_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Activate();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Activate();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Activate();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Initialize();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
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
    self:en_2();
    l0 = self[2];
    l0:Initialize();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.message = "D5_RadioTowerIsUnlocked";
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

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "D5_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_8_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
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

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D5/SQW_D5_MAIN/SQW_D5_MAIN.SQW_D5_MAIN.lua";
    l0.MissionName = "SQW_D5_MAIN";
    l0.BaseBlock = "45174279603784172";
    l0.BaseLayer = "54181478858525164";
    l0.QuestGiverMarker = "2076207965936823986";
    l0.QuestType = "wantedquest";
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D5/SQA_D5_MAIN/SQA_D5_MAIN.SQA_D5_MAIN.lua";
    l0.MissionName = "SQA_D5_MAIN";
    l0.BaseBlock = "45174279603784172";
    l0.BaseLayer = "63188678113314829";
    l0.QuestGiverMarker = "2076209142604798744";
    l0.QuestType = "huntingquest";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D5/SQS_D5_MAIN/SQS_D5_MAIN.SQS_D5_MAIN.lua";
    l0.MissionName = "SQS_D5_MAIN";
    l0.BaseBlock = "45174279603784172";
    l0.BaseLayer = "72195877368060829";
    l0.QuestGiverMarker = "2076209829438828305";
    l0.QuestType = "speedquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
