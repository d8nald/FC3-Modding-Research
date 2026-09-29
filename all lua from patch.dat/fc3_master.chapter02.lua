-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter02
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
    luaDepTable[1] = "Domino/user/fc3/FC3_QuestGivers/JAS_100/JAS_100_BRIEF.JAS_100_BRIEF.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/JAS_060/JAS_060_MAIN.JAS_060_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/JAS_100/JAS_100_MAIN.JAS_100_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_MainMissions/JAS_080/JAS_080_MAIN.JAS_080_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_MAIN.DOC_020_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_QuestGivers/DOC_020/DOC_020_BRIEF.DOC_020_BRIEF.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/EnableAbilityUpgrade.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RadioTowerModifier.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/ShowTattoo.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/UnlockGroup.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    l0.Failed = self.f_9_Failed;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    l0.Failed = self.f_6_Failed;
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
    l0.Out[0] = self.f_10_Out_0;
    l0.Out[1] = self.f_10_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_14_TattooShown()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2074855440570658244";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_17_Out_0;
    l0.Out[1] = self.f_17_Out_1;
    l0:In();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Scan();
end;

function export:f_16_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2072711715096629817";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_16_Out_1()
    self = self._graph;
    self:Completed();
end;

function export:f_32_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/EnableAbilityUpgrade.lua")];
    l0.pawn = nil;
    l0.Ability = "SP_Takedown";
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_32_Out_1()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:f_9_Completed()
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
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 2 Completed";
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
end;

function export:f_9_Failed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Restart();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 02 Initialization ... Done.";
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
    self:Initialized();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_LostExpedition_ULC";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_10_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = self.f_14_TattooShown;
    l0.TattooHidden = DummyFunction;
    l0:ShowTattoo();
end;

function export:f_10_Out_1()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:In();
end;

function export:f_13_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "JAS_100_IsCompleted";
    l0._graph = self;
    l0.Out = self.f_20_Out;
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
    l0.Out[0] = self.f_32_Out_0;
    l0.Out[1] = self.f_32_Out_1;
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_Hurk_ULC";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/UnlockGroup.lua")];
    l0.Group = "UNLOCK_Syringes";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2075834596452213647";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_13_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_12_Out_1()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:In();
end;

function export:f_6_Completed()
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

function export:f_6_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Restart();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Scan();
end;

function export:f_17_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RadioTowerModifier.lua")];
    l0.Entity = "2075643923713233333";
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:Show();
end;

function export:f_17_Out_1()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_E6_OW_RegenerateNavmesh_Activate";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_060/JAS_060_MAIN.JAS_060_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074523898549912232";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/DOC_020/DOC_020_BRIEF.DOC_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_MAIN.DOC_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "DOC";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_080/JAS_080_MAIN.JAS_080_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = false;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/JAS_100/JAS_100_BRIEF.JAS_100_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_100/JAS_100_MAIN.JAS_100_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "JAS";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
