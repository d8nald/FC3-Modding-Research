-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter07
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.CIT_020_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_QuestGivers/CIT_020/CIT_020_BRIEF.CIT_020_BRIEF.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/CIT_030/CIT_030_MAIN.CIT_030_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_MainMissions/CIT_050/CIT_050_MAIN.CIT_050_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_MainMissions/JAS_150/JAS_150_MAIN.JAS_150_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_MAIN.JAS_160_MAIN.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_QuestGivers/DOC_060/DOC_060_BRIEF.DOC_060_BRIEF.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_QuestGivers/CIT_015/CIT_015_BRIEF.CIT_015_BRIEF.lua";
    luaDepTable[9] = "Domino/user/fc3/FC3_QuestGivers/CIT_060/CIT_060_BRIEF.CIT_060_BRIEF.lua";
    luaDepTable[10] = "Domino/user/fc3/FC3_QuestGivers/DOC_050/DOC_050_BRIEF.DOC_050_BRIEF.lua";
    luaDepTable[11] = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER07/GAME_CHAPTER07.GAME_CHAPTER07.lua";
    luaDepTable[12] = "Domino/user/fc3/FC3_MainMissions/WIL_060/WIL_060_MAIN.WIL_060_MAIN.lua";
    luaDepTable[13] = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER05/GAME_CHAPTER05.GAME_CHAPTER05.lua";
    luaDepTable[14] = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER06/GAME_CHAPTER06.GAME_CHAPTER06.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.DOC_050_OptionalMissions.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.DOC_060_OptionalMissions.lua");
        cbox:RegisterBox("Domino/System/EnableAbilityUpgrade.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[35] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Initialized = self.f_35_Initialized;
    l0.Completed = self.f_35_Completed;
    l0.Failed = DummyFunction;
    self[27] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.DOC_050_OptionalMissions.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Initialized = self.f_27_Initialized;
    l0.Started = self.f_27_Started;
    self[34] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Initialized = self.f_34_Initialized;
    l0.Completed = self.f_34_Completed;
    l0.Failed = DummyFunction;
    self[19] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Initialized = self.f_19_Initialized;
    l0.Completed = self.f_19_Completed;
    l0.Failed = DummyFunction;
    self[56] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Initialized = self.f_56_Initialized;
    l0.Completed = self.f_56_Completed;
    l0.Failed = DummyFunction;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    l0.Failed = DummyFunction;
    self[57] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Initialized = self.f_57_Initialized;
    l0.Completed = self.f_57_Completed;
    l0.Failed = DummyFunction;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = self.f_7_Failed;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.DOC_060_OptionalMissions.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Started = self.f_4_Started;
    self[18] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Initialized = self.f_18_Initialized;
    l0.Completed = self.f_18_Completed;
    l0.Failed = DummyFunction;
    self[26] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Initialized = self.f_26_Initialized;
    l0.Completed = self.f_26_Completed;
    l0.Failed = self.f_26_Failed;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    l0.Completed = self.f_10_Completed;
    l0.Failed = self.f_10_Failed;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = DummyFunction;
    self[43] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Initialized = self.f_43_Initialized;
    l0.Completed = self.f_43_Completed;
    l0.Failed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_28_Out_0;
    l0.Out[1] = self.f_28_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_34();
    l0 = self[34];
    l0:Scan();
end;

function export:f_51_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "DOC_050_OPT30_Stop";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_51_Out_1()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:In();
end;

function export:f_35_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_16_Out_0;
    l0.Out[1] = self.f_16_Out_1;
    l0:In();
end;

function export:f_35_Initialized()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_36_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/EnableAbilityUpgrade.lua")];
    l0.pawn = nil;
    l0.Ability = "SP_Wingsuit";
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_36_Out_1()
    self = self._graph;
    self:Completed();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300981978648";
    l0.missionLayerId = "9145500236719641";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Unlock_CIT_030";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_BNG_030";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Unlock_VILLAGERZONE";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_16_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138235333708404";
    l0.missionLayerId = "138295470580177";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_16_Out_1()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_E6_OW_Comodo_Activate";
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:f_28_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C0_CAVE_Unlock_DOC_050";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_28_Out_1()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:In();
end;

function export:f_27_Initialized()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Scan();
end;

function export:f_27_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_12_Out_0;
    l0.Out[1] = self.f_12_Out_1;
    l0:In();
end;

function export:f_34_Completed()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:In();
end;

function export:f_34_Initialized()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:Scan();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300301916427";
    l0.missionLayerId = "54181495832608393";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_19_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.Out[1] = self.f_24_Out_1;
    l0:In();
end;

function export:f_19_Initialized()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = self[56];
    l0:Scan();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_E6_OW_RegenerateNavmesh_Activate";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_56_Completed()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:In();
end;

function export:f_56_Initialized()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Scan();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C0_CAVE_Unlock_DOC_060";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_29_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138235333708404";
    l0.missionLayerId = "27159894044587523";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_29_Out_1()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:In();
end;

function export:f_22_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "DOC_050_OPT_Stop";
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_22_Out_1()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Unlock_CIT_060";
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_22_Out_0;
    l0.Out[1] = self.f_22_Out_1;
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Scan();
end;

function export:f_54_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_BNG_010";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_57_Completed()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:In();
end;

function export:f_57_Initialized()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Scan();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "BNG_010_MAIN";
    l0._graph = self;
    l0.Locked = self.f_54_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "KILL_BNG_MISSION";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_52_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_BNG_020";
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/EnableAbilityUpgrade.lua")];
    l0.pawn = nil;
    l0.Ability = "RiteOfPassage2";
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:In();
end;

function export:f_38_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138273048301927";
    l0.missionLayerId = "9145472303042920";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_37_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Scan();
end;

function export:f_48_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159898747187797";
    l0.missionLayerId = "45174297256699161";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_33_Out_0;
    l0.Out[1] = self.f_33_Out_1;
    l0:In();
end;

function export:f_7_Failed()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Restart();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:Scan();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:Scan();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_29_Out_0;
    l0.Out[1] = self.f_29_Out_1;
    l0:In();
end;

function export:f_18_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_13_Out_0;
    l0.Out[1] = self.f_13_Out_1;
    l0:In();
end;

function export:f_18_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_26_Completed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Start();
end;

function export:f_26_Failed()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:Restart();
end;

function export:f_26_Initialized()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Initialize();
end;

function export:f_37_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_E6_OW_RegenerateNavmesh_Dectivate";
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
end;

function export:f_10_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_51_Out_0;
    l0.Out[1] = self.f_51_Out_1;
    l0:In();
end;

function export:f_10_Failed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Restart();
end;

function export:f_10_Initialized()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300301916427";
    l0.missionLayerId = "63188695087369824";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_24_Out_1()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = self[56];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300981978648";
    l0.missionLayerId = "18152699491487220";
    l0._graph = self;
    l0.Activated = self.f_47_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_33_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138273048301927";
    l0.missionLayerId = "138273206348362";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_38_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_33_Out_1()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:In();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Start();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Initialize();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "BNG_020_MAIN";
    l0._graph = self;
    l0.Locked = self.f_52_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Unlock_CIT_015";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_12_Out_1()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:In();
end;

function export:f_47_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159898747187797";
    l0.missionLayerId = "36167098001928789";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_48_Disabled;
    l0:Disable();
end;

function export:f_43_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 7 Completed";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_36_Out_0;
    l0.Out[1] = self.f_36_Out_1;
    l0:In();
end;

function export:f_43_Initialized()
    local l0;
    self = self._graph;
    self:Initialized();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 07 Initialization ... Done.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.Mission = "Domino/user/fc3/FC3_QuestGivers/CIT_060/CIT_060_BRIEF.CIT_060_BRIEF.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2076705408396829066";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_34()
    local l0;
    l0 = self[34];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER07/GAME_CHAPTER07.GAME_CHAPTER07.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074743296099365887";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_19()
    local l0;
    l0 = self[19];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_150/JAS_150_MAIN.JAS_150_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074646353501232403";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_56()
    local l0;
    l0 = self[56];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER05/GAME_CHAPTER05.GAME_CHAPTER05.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074732278990248690";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/CIT_050/CIT_050_MAIN.CIT_050_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2076679687949530071";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_57()
    local l0;
    l0 = self[57];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER06/GAME_CHAPTER06.GAME_CHAPTER06.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2076705408396829066";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/CIT_030/CIT_030_MAIN.CIT_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/CIT_020/CIT_020_BRIEF.CIT_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.CIT_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "CIT";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_MAIN.JAS_160_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074732278990248690";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = true;
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/DOC_050/DOC_050_BRIEF.DOC_050_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.disableEncountersForMission = true;
    l0.GiverName = "DOC";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/CIT_015/CIT_015_BRIEF.CIT_015_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.disableEncountersForMission = true;
    l0.GiverName = "CIT";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_QuestGivers/DOC_060/DOC_060_BRIEF.DOC_060_BRIEF.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074743296099365887";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_43()
    local l0;
    l0 = self[43];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/WIL_060/WIL_060_MAIN.WIL_060_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2078544024410588231";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
