-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter03
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.DEN_040_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_MAIN.JAS_130_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/JAS_110/JAS_110_MAIN.JAS_110_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_MainMissions/DEN_020/DEN_020_MAIN.DEN_020_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_QuestGivers/DEN_040/DEN_040_BRIEF.DEN_040_BRIEF.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_QuestGivers/JAS_110/JAS_110_BRIEF.JAS_110_BRIEF.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_MainMissions/JAS_110/JAS_110_MAIN.JAS_110_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
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
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = DummyFunction;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    l0.Completed = self.f_11_Completed;
    l0.Failed = self.f_11_Failed;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
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
    l0.Out[0] = self.f_14_Out_0;
    l0.Out[1] = self.f_14_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145499273145157";
    l0.missionLayerId = "36167097037413772";
    l0._graph = self;
    l0.Activated = self.f_16_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:In();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145499273145157";
    l0.missionLayerId = "18152698527886150";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145499273145157";
    l0.missionLayerId = "27159897782666508";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:Disable();
end;

function export:f_14_Out_1()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_4_Completed()
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

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Scan();
end;

function export:f_22_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300305482274";
    l0.missionLayerId = "9145499560223267";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_24_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "54181495439675527";
    l0.missionLayerId = "72195893949199776";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_16_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145499273145157";
    l0.missionLayerId = "18152698527886150";
    l0._graph = self;
    l0.Activated = self.f_24_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_10_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_HOTEL_After_Debris";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_10_Out_1()
    local l0;
    self = self._graph;
    self:Completed();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 3 Completed";
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

function export:f_7_Completed()
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

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_17_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300169408978";
    l0.missionLayerId = "18152698678967264";
    l0._graph = self;
    l0.Activated = self.f_22_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_17_Out_1()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300305482274";
    l0.missionLayerId = "18152698815055615";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_11_Completed()
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

function export:f_11_Failed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Restart();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_10_Out_0;
    l0.Out[1] = self.f_10_Out_1;
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 03 Initialization ... Done.";
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

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "54181495439675527";
    l0.missionLayerId = "63188694694416519";
    l0._graph = self;
    l0.Activated = self.f_8_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_8_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300169408978";
    l0.missionLayerId = "18152698678967264";
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
    l0.Message = "BASE_D4_LOGCAMP_After";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DEN_020/DEN_020_MAIN.DEN_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_110/JAS_110_MAIN.JAS_110_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/DEN_040/DEN_040_BRIEF.DEN_040_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.DEN_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "DEN";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_MAIN.JAS_130_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2073760458575211954";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
