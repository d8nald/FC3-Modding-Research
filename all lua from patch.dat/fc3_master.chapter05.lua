-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter05
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
    luaDepTable[1] = "Domino/user/fc3/FC3_QuestGivers/WIL_050/WIL_050_BRIEF.WIL_050_BRIEF.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.WIL_050_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_QuestGivers/WIL_020/WIL_020_BRIEF.WIL_020_BRIEF.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_MainMissions/WIL_020/WIL_020_MAIN.WIL_020_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_QuestGivers/WIL_040/WIL_040_BRIEF.WIL_040_BRIEF.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_MainMissions/WIL_040/WIL_040_MAIN.WIL_040_MAIN.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_MainMissions/JAS_140/JAS_140_MAIN.JAS_140_MAIN.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.WIL_050_MAIN.lua";
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
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
    self[18] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Initialized = self.f_18_Initialized;
    l0.Completed = self.f_18_Completed;
    l0.Failed = DummyFunction;
    self[20] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Initialized = self.f_20_Initialized;
    l0.Completed = self.f_20_Completed;
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
    self:en_18();
    l0 = self[18];
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_18();
    l0 = self[18];
    l0:Scan();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_11_Out_0;
    l0.Out[1] = self.f_11_Out_1;
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
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_18_Completed()
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

function export:f_18_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138301780687772";
    l0.missionLayerId = "9145501035428765";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138301778746316";
    l0.missionLayerId = "9145501033487309";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_20_Completed()
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

function export:f_20_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 05 Initialization ... Done.";
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
    l0.missionBlockId = "138301778746316";
    l0.missionLayerId = "18152700288295117";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Unlock_WIL_010";
    l0._graph = self;
    l0.Out = self.f_5_Out;
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
    self:en_20();
    l0 = self[20];
    l0:Scan();
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C7_WIL_040_Active";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_11_Out_1()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138301780687772";
    l0.missionLayerId = "9145501035428765";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_12_Out_1()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:In();
end;

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C7_WIL_040_After";
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    self:Completed();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 5 Completed";
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

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/WIL_020/WIL_020_BRIEF.WIL_020_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/WIL_020/WIL_020_MAIN.WIL_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "WIL";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_140/JAS_140_MAIN.JAS_140_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.WIL_050_MAIN.lua";
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
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/WIL_040/WIL_040_BRIEF.WIL_040_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/WIL_040/WIL_040_MAIN.WIL_040_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "WIL";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
