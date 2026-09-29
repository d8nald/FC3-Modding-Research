-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: C5_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/C5/SQW_C5_MAIN/SQW_C5_MAIN.SQW_C5_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/C5/SQA_C5_MAIN/SQA_C5_MAIN.SQA_C5_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/C5/SQS_C5_MAIN/SQS_C5_MAIN.SQS_C5_MAIN.lua";
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
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[10];
    l0.message = "C5_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Activate();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Activate();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Activate();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.message = "C5_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
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
    self:en_9();
    l0 = self[9];
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
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
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

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.message = "C5_2_OutpostIsUnlocked";
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

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C5/SQA_C5_MAIN/SQA_C5_MAIN.SQA_C5_MAIN.lua";
    l0.MissionName = "SQA_C5_MAIN";
    l0.BaseBlock = "138283319086822";
    l0.BaseLayer = "18152681828655658";
    l0.QuestGiverMarker = "2076683434926815783";
    l0.QuestType = "huntingquest";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C5/SQW_C5_MAIN/SQW_C5_MAIN.SQW_C5_MAIN.lua";
    l0.MissionName = "SQW_C5_MAIN";
    l0.BaseBlock = "138283319086822";
    l0.BaseLayer = "9145482573827814";
    l0.QuestGiverMarker = "2076182635790494124";
    l0.QuestType = "wantedquest";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/C5/SQS_C5_MAIN/SQS_C5_MAIN.SQS_C5_MAIN.lua";
    l0.MissionName = "SQS_C5_MAIN";
    l0.BaseBlock = "138283319086822";
    l0.BaseLayer = "27159881083402810";
    l0.QuestGiverMarker = "2076683283894123032";
    l0.QuestType = "speedquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
