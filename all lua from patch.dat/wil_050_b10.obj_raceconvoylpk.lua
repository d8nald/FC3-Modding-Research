-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: OBJ_RaceConvoyLPK
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
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.RaceTimeOut = DummyFunction;
    self.SpawnSniperNestCrew = DummyFunction;
    self.SpawnPlayerBoat = DummyFunction;
    self.RaceTimeStart = DummyFunction;
    self.ePlayer = nil;
    self._2 = 8;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = self.f_15_Started;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[32];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_32_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_17_Loaded;
    l0.Unloaded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.ShowOut = self.f_14_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_12_Loaded;
    l0.Unloaded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.ResetOut = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_7_Near;
    l0.Far = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = DummyFunction;
    l0.Unloaded = self.f_10_Unloaded;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = self.f_22_Enabled;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:ObjectiveCompleteStopTimer()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
    l0:In();
end;

function export:RemoveLKPMarker()
    local l0;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_3_Out_1()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.entityId = "2075921829314176748";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_3_Out_2()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_15_Started()
    self = self._graph;
    self:RaceTimeStart();
end;

function export:f_15_TimeElapsed()
    self = self._graph;
    self:RaceTimeOut();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Hide();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Stop();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_2_Out_0;
    l0.Out[1] = self.f_2_Out_1;
    l0.Out[2] = self.f_2_Out_2;
    l0:In();
end;

function export:f_32_Out_0()
    self = self._graph;
    self:Out();
end;

function export:f_17_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "RELOADED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:SpawnSniperNestCrew();
end;

function export:f_14_ShowOut()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Start();
end;

function export:f_12_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "LOADED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_5_Out_0;
    l0.Out[1] = self.f_5_Out_1;
    l0.Out[2] = self.f_5_Out_2;
    l0:In();
end;

function export:f_1_Out_0()
    self = self._graph;
    self:SpawnSniperNestCrew();
end;

function export:f_1_Out_1()
    self = self._graph;
    self:SpawnPlayerBoat();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = self.f_1_Out_1;
    l0:In();
end;

function export:f_7_Near()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NEAR15";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Show();
end;

function export:f_10_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.entityId = "2075921829314176748";
    l0:Enable();
end;

function export:f_5_Out_0()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Entities = self.ePlayer;
    l0.id2 = "2075921829314176748";
    l0.nearZone = 40;
    l0.use2d = true;
    l0.autoDisable = true;
    l0:Enable();
end;

function export:f_5_Out_1()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Entities = self.ePlayer;
    l0.id2 = "2075921829314176748";
    l0.nearZone = 30;
    l0.use2d = true;
    l0.autoDisable = true;
    l0:Enable();
end;

function export:f_5_Out_2()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = "2075921829314176748";
    l0:Enable();
end;

function export:f_2_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_RaceConvoy",
        id = "71268",
    };
    l0:SetMissionObjective();
end;

function export:f_2_Out_1()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_2_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = DummyFunction;
    l0.Out[1] = self.f_3_Out_1;
    l0.Out[2] = self.f_3_Out_2;
    l0:In();
end;

function export:f_22_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.seconds = 100;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.time = 100;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074521149907144924";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:RaceTimeOut()
    
end;
function export:SpawnSniperNestCrew()
    
end;
function export:SpawnPlayerBoat()
    
end;
function export:RaceTimeStart()
    
end;
_compilerVersion = 24;
