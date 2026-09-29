-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: ULC
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/HUR_020/HUR_020_MAIN.HUR_020_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_QuestGivers/HUR_020/HUR_020_BRIEF.HUR_020_BRIEF.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/HUR_030/HUR_030_MAIN.HUR_030_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_QuestGivers/HUR_030/HUR_030_BRIEF.HUR_030_BRIEF.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_QuestGivers/HUR_050/HUR_050_BRIEF.HUR_050_BRIEF.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_MainMissions/HUR_050/HUR_050_MAIN.HUR_050_MAIN.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_QuestGivers/HUR_040/HUR_040_BRIEF.HUR_040_BRIEF.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_MainMissions/HUR_040/HUR_040_MAIN.HUR_040_MAIN.lua";
    luaDepTable[9] = "Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.ULC_010_MAIN.lua";
    luaDepTable[10] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ULC_020_MAIN.lua";
    luaDepTable[11] = "Domino/user/fc3/FC3_DLC_ULC/ULC_030/ULC_030_MAIN.ULC_030_MAIN.lua";
    luaDepTable[12] = "Domino/user/fc3/FC3_QuestGivers/HUR_010/HUR_010_BRIEF.HUR_010_BRIEF.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/LockedContentCheck.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = self.f_2_Failed;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[8] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    l0.Completed = self.f_8_Completed;
    l0.Failed = self.f_8_Failed;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    l0.Completed = self.f_10_Completed;
    l0.Failed = self.f_10_Failed;
    self[17] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_17_Received;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    l0.Failed = self.f_5_Failed;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    l0.Failed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULCGiver.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    l0.Failed = self.f_9_Failed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    self:Completed();
end;

function export:Initialize()
    local l0;
    l0 = self[17];
    l0.message = "Unlock_Hurk_ULC";
    l0:Enable();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/LockedContentCheck.lua")];
    l0.ContentName = "ULC_020";
    l0._graph = self;
    l0.IsLocked = DummyFunction;
    l0.IsUnlocked = self.f_26_IsUnlocked;
    l0:CheckByName();
    l0 = Boxes[GetPathID("Domino/System/LockedContentCheck.lua")];
    l0.ContentName = "ULC_030-Uplay";
    l0._graph = self;
    l0.IsLocked = DummyFunction;
    l0.IsUnlocked = self.f_27_IsUnlocked;
    l0:CheckByName();
    l0 = Boxes[GetPathID("Domino/System/LockedContentCheck.lua")];
    l0.ContentName = "ULC_010";
    l0._graph = self;
    l0.IsLocked = DummyFunction;
    l0.IsUnlocked = self.f_25_IsUnlocked;
    l0:CheckByName();
end;

function export:f_27_IsUnlocked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_22_IsUnlocked()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:In();
end;

function export:f_26_IsUnlocked()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138287540506462";
    l0.missionLayerId = "9145486795247454";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_18_Out_1()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:In();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.Out[1] = self.f_18_Out_1;
    l0:In();
end;

function export:f_2_Failed()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Restart();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Scan();
end;

function export:f_25_IsUnlocked()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
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
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting ULC Content Initialization ... Done.";
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

function export:f_8_Completed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_8_Failed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Restart();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Scan();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ULC Content Completed";
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

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_10_Completed()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
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
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Scan();
end;

function export:f_17_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/LockedContentCheck.lua")];
    l0.ContentName = "Hurk_030";
    l0._graph = self;
    l0.IsLocked = DummyFunction;
    l0.IsUnlocked = self.f_22_IsUnlocked;
    l0:CheckByName();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:In();
end;

function export:f_5_Failed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Restart();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Scan();
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
    self:en_6();
    l0 = self[6];
    l0:Scan();
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
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_G3_HUR_050_After";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
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
    l0 = self[12];
    l0.message = "Unlock_LostExpedition_ULC";
    l0:Enable();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HUR_040/HUR_040_BRIEF.HUR_040_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HUR_040/HUR_040_MAIN.HUR_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "HUR";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_DLC_ULC/ULC_030/ULC_030_MAIN.ULC_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = true;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HUR_010/HUR_010_BRIEF.HUR_010_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.disableEncountersForMission = true;
    l0.GiverName = "HUR";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HUR_020/HUR_020_BRIEF.HUR_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HUR_020/HUR_020_MAIN.HUR_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "HUR";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HUR_030/HUR_030_BRIEF.HUR_030_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HUR_030/HUR_030_MAIN.HUR_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "HUR";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.ULC_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = true;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ULC_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = true;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HUR_050/HUR_050_BRIEF.HUR_050_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HUR_050/HUR_050_MAIN.HUR_050_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "HUR";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
