-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_sidequestsmaster.domino.xml
-- User graph: FC3_SideQuestsMaster
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
    luaDepTable[1] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_040/SQH_040_BRIEF.SQH_040_BRIEF.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_020/SQC_020_BRIEF.SQC_020_BRIEF.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_090/SQC_090_MAIN.SQC_090_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_BRIEF.SQC_010_BRIEF.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_010/SQH_010_BRIEF.SQH_010_BRIEF.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_010/SQH_010_MAIN.SQH_010_MAIN.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_100/SQC_100_BRIEF.SQC_100_BRIEF.lua";
    luaDepTable[9] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_100/SQC_100_MAIN.SQC_100_MAIN.lua";
    luaDepTable[10] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_020/SQC_020_MAIN.SQC_020_MAIN.lua";
    luaDepTable[11] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_040/SQC_040_BRIEF.SQC_040_BRIEF.lua";
    luaDepTable[12] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_040/SQC_040_MAIN.SQC_040_MAIN.lua";
    luaDepTable[13] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_020/SQH_020_BRIEF.SQH_020_BRIEF.lua";
    luaDepTable[14] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_020/SQH_020_MAIN.SQH_020_MAIN.lua";
    luaDepTable[15] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_040/SQH_040_MAIN.SQH_040_MAIN.lua";
    luaDepTable[16] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_080/SQC_080_BRIEF.SQC_080_BRIEF.lua";
    luaDepTable[17] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_080/SQC_080_MAIN.SQC_080_MAIN.lua";
    luaDepTable[18] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_030/SQH_030_BRIEF.SQH_030_BRIEF.lua";
    luaDepTable[19] = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_030/SQH_030_MAIN.SQH_030_MAIN.lua";
    luaDepTable[20] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_060/SQC_060_BRIEF.SQC_060_BRIEF.lua";
    luaDepTable[21] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_060/SQC_060_MAIN.SQC_060_MAIN.lua";
    luaDepTable[22] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_030/SQC_030_BRIEF.SQC_030_BRIEF.lua";
    luaDepTable[23] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_030/SQC_030_MAIN.SQC_030_MAIN.lua";
    luaDepTable[24] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_070/SQC_070_MAIN.SQC_070_MAIN.lua";
    luaDepTable[25] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_070/SQC_070_BRIEF.SQC_070_BRIEF.lua";
    luaDepTable[26] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_090/SQC_090_BRIEF.SQC_090_BRIEF.lua";
    luaDepTable[27] = "Domino/user/fc3/FC3_MainMissions/WIL_010/WIL_010_MAIN.WIL_010_MAIN.lua";
    luaDepTable[28] = "Domino/user/fc3/FC3_QuestGivers/WIL_010/WIL_010_BRIEF.WIL_010_BRIEF.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[48] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Initialized = self.f_48_Initialized;
    l0.Completed = self.f_48_Completed;
    l0.Failed = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Enabled = self.f_46_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_46_Received;
    self[97] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Initialized = self.f_97_Initialized;
    l0.Completed = self.f_97_Completed;
    l0.Failed = DummyFunction;
    self[80] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Enabled = self.f_80_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_80_Received;
    self[92] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Enabled = self.f_92_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_92_Received;
    self[87] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Initialized = self.f_87_Initialized;
    l0.Completed = self.f_87_Completed;
    l0.Failed = DummyFunction;
    self[35] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Initialized = self.f_35_Initialized;
    l0.Completed = self.f_35_Completed;
    l0.Failed = DummyFunction;
    self[24] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Initialized = self.f_24_Initialized;
    l0.Completed = self.f_24_Completed;
    l0.Failed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[25] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Initialized = self.f_25_Initialized;
    l0.Completed = self.f_25_Completed;
    l0.Failed = DummyFunction;
    self[50] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Initialized = self.f_50_Initialized;
    l0.Completed = self.f_50_Completed;
    l0.Failed = DummyFunction;
    self[30] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Initialized = self.f_30_Initialized;
    l0.Completed = self.f_30_Completed;
    l0.Failed = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Enabled = self.f_42_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_42_Received;
    self[59] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = self.f_59_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_59_Received;
    self[27] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Initialized = self.f_27_Initialized;
    l0.Completed = self.f_27_Completed;
    l0.Failed = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Enabled = self.f_39_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_39_Received;
    self[93] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Enabled = self.f_93_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_93_Received;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[94] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[94];
    l0._graph = self;
    l0.Initialized = self.f_94_Initialized;
    l0.Completed = self.f_94_Completed;
    l0.Failed = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = self.f_5_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_5_Received;
    self[84] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Initialized = self.f_84_Initialized;
    l0.Completed = self.f_84_Completed;
    l0.Failed = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = self.f_29_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_29_Received;
    self[73] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Enabled = self.f_73_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_73_Received;
    self[95] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[95];
    l0._graph = self;
    l0.Enabled = self.f_95_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_95_Received;
    self[72] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Enabled = self.f_72_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_72_Received;
    self[85] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Initialized = self.f_85_Initialized;
    l0.Completed = self.f_85_Completed;
    l0.Failed = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
    self[75] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.QuestGiver.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Initialized = self.f_75_Initialized;
    l0.Completed = self.f_75_Completed;
    l0.Failed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[5];
    l0.message = "Unlock_WIL_010";
    l0:Enable();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0.message = "C7_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_48_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_48_Initialized()
    local l0;
    self = self._graph;
    l0 = self[95];
    l0.message = "D6_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_46_Enabled()
    local l0;
    self = self._graph;
    self:en_94();
    l0 = self[94];
    l0:Scan();
end;

function export:f_46_Received()
    local l0;
    self = self._graph;
    self:en_94();
    l0 = self[94];
    l0:In();
end;

function export:f_97_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_97_Initialized()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.message = "F5_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_80_Enabled()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = self[25];
    l0:Scan();
end;

function export:f_80_Received()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = self[25];
    l0:In();
end;

function export:f_92_Enabled()
    local l0;
    self = self._graph;
    self:en_48();
    l0 = self[48];
    l0:Scan();
end;

function export:f_92_Received()
    local l0;
    self = self._graph;
    self:en_48();
    l0 = self[48];
    l0:In();
end;

function export:f_87_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_87_Initialized()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.message = "C4_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_35_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_35_Initialized()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.message = "F2_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_24_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_24_Initialized()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.message = "C5_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Scan();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:In();
end;

function export:f_25_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_25_Initialized()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.message = "C3_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_50_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_50_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_30_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_30_Initialized()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "D7_2_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_42_Enabled()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = self[85];
    l0:Scan();
end;

function export:f_42_Received()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = self[85];
    l0:In();
end;

function export:f_59_Enabled()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:Scan();
end;

function export:f_59_Received()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:In();
end;

function export:f_27_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "SQC_100_IsCompleted";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_27_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_39_Enabled()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Scan();
end;

function export:f_39_Received()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:In();
end;

function export:f_93_Enabled()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = self[50];
    l0:Scan();
end;

function export:f_93_Received()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = self[50];
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
    l0 = self[39];
    l0.message = "D4_2_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_94_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "SQC_070_IsCompleted";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_94_Initialized()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0.message = "C6_2_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_5_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_5_Received()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_84_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_84_Initialized()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0.message = "D5_2_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_29_Enabled()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Scan();
end;

function export:f_29_Received()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:In();
end;

function export:f_73_Enabled()
    local l0;
    self = self._graph;
    self:en_75();
    l0 = self[75];
    l0:Scan();
end;

function export:f_73_Received()
    local l0;
    self = self._graph;
    self:en_75();
    l0 = self[75];
    l0:In();
end;

function export:f_95_Enabled()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = self[84];
    l0:Scan();
end;

function export:f_95_Received()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = self[84];
    l0:In();
end;

function export:f_72_Enabled()
    local l0;
    self = self._graph;
    self:en_97();
    l0 = self[97];
    l0:Scan();
end;

function export:f_72_Received()
    local l0;
    self = self._graph;
    self:en_97();
    l0 = self[97];
    l0:In();
end;

function export:f_85_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "SQC_060_IsCompleted";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_85_Initialized()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.message = "G3_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:Scan();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:In();
end;

function export:f_75_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_75_Initialized()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.message = "G4_1_OutpostIsUnlocked";
    l0:Enable();
end;

function export:en_48()
    local l0;
    l0 = self[48];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_020/SQH_020_BRIEF.SQH_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_020/SQH_020_MAIN.SQH_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_97()
    local l0;
    l0 = self[97];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_090/SQC_090_BRIEF.SQC_090_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_090/SQC_090_MAIN.SQC_090_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_87()
    local l0;
    l0 = self[87];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_030/SQC_030_BRIEF.SQC_030_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_030/SQC_030_MAIN.SQC_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_040/SQC_040_BRIEF.SQC_040_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_040/SQC_040_MAIN.SQC_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_BRIEF.SQC_010_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_25()
    local l0;
    l0 = self[25];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_010/SQH_010_BRIEF.SQH_010_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_010/SQH_010_MAIN.SQH_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_50()
    local l0;
    l0 = self[50];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_040/SQH_040_BRIEF.SQH_040_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_040/SQH_040_MAIN.SQH_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_020/SQC_020_BRIEF.SQC_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_020/SQC_020_MAIN.SQC_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_100/SQC_100_BRIEF.SQC_100_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_100/SQC_100_MAIN.SQC_100_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/WIL_010/WIL_010_BRIEF.WIL_010_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/WIL_010/WIL_010_MAIN.WIL_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_94()
    local l0;
    l0 = self[94];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_070/SQC_070_BRIEF.SQC_070_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_070/SQC_070_MAIN.SQC_070_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_84()
    local l0;
    l0 = self[84];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_030/SQH_030_BRIEF.SQH_030_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQH_030/SQH_030_MAIN.SQH_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_85()
    local l0;
    l0 = self[85];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_060/SQC_060_BRIEF.SQC_060_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_060/SQC_060_MAIN.SQC_060_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_75()
    local l0;
    l0 = self[75];
    l0.Giver = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_080/SQC_080_BRIEF.SQC_080_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_080/SQC_080_MAIN.SQC_080_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
