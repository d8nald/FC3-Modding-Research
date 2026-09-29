-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter10
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/JAS_240/JAS_240_MAIN.JAS_240_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/JAS_230/JAS_230_MAIN.JAS_230_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_QuestGivers/JAS_230/JAS_230_BRIEF.JAS_230_BRIEF.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/IsSavingGame.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/UI/QuitToMainMenu.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self.bQuitToMainMenu = false;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    l0.Failed = self.f_9_Failed;
    self[17] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_17_Received;
    self[3] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_3_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    l0.Out[0] = self.f_7_Out_0;
    l0.Out[1] = self.f_7_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_9();
    l0 = self[9];
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
    l0.Out[0] = self.f_14_Out_0;
    l0.Out[1] = self.f_14_Out_1;
    l0:In();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    self:Initialized();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 10 Initialization ... Done.";
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

function export:f_24_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_24_A_is_True()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/IsSavingGame.lua")];
    l0:In();
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C3_DOC_HOUSE_Unlock_JAS_230";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_7_Out_1()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:In();
end;

function export:f_20_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Unlock_CIT_END";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_14_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bQuitToMainMenu;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_24_A_is_True;
    l0.A_is_False = self.f_24_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 10 Completed";
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

function export:f_2_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/QuitToMainMenu.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:QuitToMainMenu();
end;

function export:f_2_Yes()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145447679179197";
    l0.missionLayerId = "18152646933920189";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bQuitToMainMenu = l0.Target;
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
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
    l0 = self[17];
    l0.message = "QuitToMainMenu";
    l0:Enable();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_17_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:True();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/IsSavingGame.lua")];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_240/JAS_240_MAIN.JAS_240_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2074631723624174143";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsSavingGame.lua")];
    l0._graph = self;
    l0.Yes = self.f_2_Yes;
    l0.No = self.f_2_No;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/JAS_230/JAS_230_BRIEF.JAS_230_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_230/JAS_230_MAIN.JAS_230_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "JAS";
    l0.SpawnPointStart = "2074730439441920422";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = false;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
