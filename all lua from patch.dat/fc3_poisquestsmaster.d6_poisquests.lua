-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: D6_POIsQuests
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/D6/SQA_D6_MAIN/SQA_D6_MAIN.SQA_D6_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_POIsQuests/D6/SQW_D6_MAIN/SQW_D6_MAIN.SQW_D6_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_POIsQuests/D6/SQS_D6_MAIN/SQS_D6_MAIN.SQS_D6_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_POIsQuests/D6/SQA_D6B_MAIN/SQA_D6B_MAIN.SQA_D6B_MAIN.lua";
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
    self[11] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_11_Received;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.POIsQuest.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
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
    l0.message = "D6_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Activate();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Activate();
    self:en_4();
    l0 = self[4];
    l0:Activate();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
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
    self:en_7();
    l0 = self[7];
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
    self = self._graph;
    self:Initialized();
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
    self:en_6();
    l0 = self[6];
    l0:Initialize();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "D6_RadioTowerIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
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
    self:en_8();
    l0 = self[8];
    l0:Initialize();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Initialize();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.message = "D6_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D6/SQA_D6B_MAIN/SQA_D6B_MAIN.SQA_D6B_MAIN.lua";
    l0.MissionName = "SQA_D6B_MAIN";
    l0.BaseBlock = "207303866183047574";
    l0.BaseLayer = "234325463947300945";
    l0.QuestGiverMarker = "2076307486316565219";
    l0.QuestType = "huntingquest";
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D6/SQS_D6_MAIN/SQS_D6_MAIN.SQS_D6_MAIN.lua";
    l0.MissionName = "SQS_D6_MAIN";
    l0.BaseBlock = "207303866183047574";
    l0.BaseLayer = "243332663202046594";
    l0.QuestGiverMarker = "2076264943767803213";
    l0.QuestType = "speedquest";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D6/SQW_D6_MAIN/SQW_D6_MAIN.SQW_D6_MAIN.lua";
    l0.MissionName = "SQW_D6_MAIN";
    l0.BaseBlock = "207303866183047574";
    l0.BaseLayer = "225318264692554468";
    l0.QuestGiverMarker = "2076210442520242866";
    l0.QuestType = "wantedquest";
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_POIsQuests/D6/SQA_D6_MAIN/SQA_D6_MAIN.SQA_D6_MAIN.lua";
    l0.MissionName = "SQA_D6_MAIN";
    l0.BaseBlock = "207303866183047574";
    l0.BaseLayer = "216311065437788566";
    l0.QuestGiverMarker = "2076212871315888093";
    l0.QuestType = "huntingquest";
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
