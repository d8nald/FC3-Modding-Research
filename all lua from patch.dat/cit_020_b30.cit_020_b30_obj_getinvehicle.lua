-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_OBJ_GetInVehicle
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/IsVehicleAvailable.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleHealthListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.MissionFailed = DummyFunction;
    self.fChaseVehicleHealth = 0;
    self.ePlayerVehicle = nil;
    self[3] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_3_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.ResetOut = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_13_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_19_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.ResetOut = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_27_Loaded;
    l0.Unloaded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.ResetOut = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/VehicleHealthListener_v2.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.HealthChanged = self.f_30_HealthChanged;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = self.f_2_Started;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[9];
    l0.objectiveId = {
        section = "Objectives",
        item = "CIT_020_OBJ_E",
        id = "115831",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Disable();
end;

function export:f_3_OnSit()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
    l0 = self[5];
    l0:Close();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:DisplayText();
end;

function export:f_23_Out_0()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:ClearText();
    self:en_16();
    l0 = self[16];
    l0:Stop();
end;

function export:f_23_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076487784436084238";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_24_Removed;
    l0:Remove();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.triggerId = "2076183158966983670";
    l0:Enable();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.ReinforcementPoint = "2076183122891774960";
    l0.Battlefield = "2075918854696999003";
    l0.IdleBSR = "2075918854696999003";
    l0.AlertBSR = "2075918854696999003";
    l0.CombatBSR = "2075918854696999003";
    l0:SpawnInCautious();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076487784436084238";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_10_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0.vehicle;
    l0 = self[6];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:SetAsUsable();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Start();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_31_Removed()
    self = self._graph;
    self:Completed();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_23_Out_0;
    l0.Out[1] = self.f_23_Out_1;
    l0:In();
end;

function export:f_28_Disabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_28_EngineFail()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_28_Underwater()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_28_Unusable()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_13_OnSit()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Disable();
end;

function export:f_19_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076183140033895412";
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:CreateAILogInArmy();
end;

function export:f_26_Out_0()
    self = self._graph;
    self:MissionFailed();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.pawn = Globals.CIT_020_MAIN.ePlayer;
    l0.vehicle = self.ePlayerVehicle;
    l0:Enable();
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_27_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetAsDestructable();
end;

function export:f_1_Out_0()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:ClearText();
    self:en_12();
    l0 = self[12];
    l0:Disable();
    self:en_16();
    l0 = self[16];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076487784436084238";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_31_Removed;
    l0:Remove();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.pawn = Globals.CIT_020_MAIN.ePlayer;
    l0.vehicle = "2076276965389647656";
    l0:Enable();
    self:en_12();
    l0 = self[12];
    l0:Enable();
    self:en_30();
    l0 = self[30];
    l0:Enable();
end;

function export:f_10_Added()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.entityId = "2076276965389647656";
    l0:Enable();
end;

function export:f_24_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
    self:Completed();
end;

function export:f_30_HealthChanged()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Disable();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable.lua")];
    l0.Vehicle = "2076276965389647656";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Flipped = DummyFunction;
    l0.Unusable = self.f_28_Unusable;
    l0.Underwater = self.f_28_Underwater;
    l0.EngineFail = self.f_28_EngineFail;
    l0.Disabled = self.f_28_Disabled;
    l0.OK = DummyFunction;
    l0:In();
    self:en_30();
    l0 = self[30];
    l0:Enable();
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.seconds = 10;
    l0.loop = true;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.triggerId = "2076594032202497085";
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.textId = {
        section = "Hints",
        item = "CIT_020_HINT_GetOnVehicle",
        id = "126776",
    };
    l0.priority = 1;
    l0.displaySlotId = 1;
    l0.displayTimer = 5;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.Vehicle = "2076276965389647656";
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:MissionFailed()
    
end;
_compilerVersion = 24;
