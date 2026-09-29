-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter06
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/BAM_020/BAM_020_MAIN.BAM_020_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_QuestGivers/JAS_145/JAS_145_BRIEF.JAS_145_BRIEF.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_QuestGivers/DOC_040/DOC_040_BRIEF.DOC_040_BRIEF.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_QuestGivers/BAM_030/BAM_030_BRIEF.BAM_030_BRIEF.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_MainMissions/BAM_040/BAM_040_MAIN.BAM_040_MAIN.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_QuestGivers/BAM_055/BAM_055_BRIEF.BAM_055_BRIEF.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.BAM_055_MAIN.lua";
    luaDepTable[9] = "Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_MAIN.BAM_030_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.DOC_040_OptionalMissions.lua");
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
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.DOC_040_OptionalMissions.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    l0.Started = self.f_8_Started;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = self.f_3_Failed;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    l0.Completed = self.f_10_Completed;
    l0.Failed = self.f_10_Failed;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    l0.Failed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    l0.Completed = self.f_11_Completed;
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
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = self.f_15_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_8_Started()
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

function export:f_4_Completed()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:In();
end;

function export:f_4_Failed()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Restart();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_BNG_020";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_12_Out_1()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_17_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "DOC_040_OPT_Stop";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_17_Out_1()
    local l0;
    self = self._graph;
    self:Completed();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 6 Completed";
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

function export:f_3_Completed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:In();
end;

function export:f_3_Failed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Restart();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Scan();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "BNG_010_MAIN";
    l0._graph = self;
    l0.Locked = self.f_14_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
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

function export:f_19_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138304709727328";
    l0.missionLayerId = "9145503964468321";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_19_Out_1()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:In();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Scan();
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
    self:Initialized();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 06 Initialization ... Done.";
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

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Start();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Initialize();
end;

function export:f_11_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_19_Out_0;
    l0.Out[1] = self.f_19_Out_1;
    l0:In();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_14_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_BNG_010";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C0_CAVE_Unlock_DOC_040";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Out_1()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/BAM_030/BAM_030_BRIEF.BAM_030_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_MAIN.BAM_030_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "BAM";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/JAS_145/JAS_145_BRIEF.JAS_145_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.disableEncountersForMission = true;
    l0.GiverName = "JAS";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/BAM_055/BAM_055_BRIEF.BAM_055_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.BAM_055_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "BAM";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BAM_040/BAM_040_MAIN.BAM_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_QuestGivers/DOC_040/DOC_040_BRIEF.DOC_040_BRIEF.lua";
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

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BAM_020/BAM_020_MAIN.BAM_020_MAIN.lua";
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
function export:Completed()
    
end;
_compilerVersion = 24;
