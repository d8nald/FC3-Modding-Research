-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_AIInvincibility
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
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleToCollisionsState.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/TargetModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.SamIsKilled = DummyFunction;
    self.ePlayer = nil;
    self[27] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_27_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_2_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[31];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_31_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
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
    self[30] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = DummyFunction;
    l0.Unloaded = self.f_30_Unloaded;
    self[28] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[28];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_28_Out;
    self[9] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_9_OnSit;
    l0.OnStandUp = self.f_9_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = DummyFunction;
    l0.Unloaded = self.f_18_Unloaded;
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
    self[25] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_25_OnSit;
    l0.OnStandUp = self.f_25_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_23_Out_0;
    l0.ResetOut = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_15_Damaged;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = DummyFunction;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075685763957138960";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:SetUnDamageable();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Enable();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Disable();
end;

function export:f_27_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.CanUseAlternateSeat = false;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.entityId = "2074868928208701670";
    l0.autoDisable = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "health listenner started";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[28];
    l0:Condition(0);
end;

function export:f_2_Killed()
    self = self._graph;
    self:SamIsKilled();
end;

function export:f_31_Out_0()
    self = self._graph;
    self:SamIsKilled();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:UnsetInvincible();
end;

function export:f_30_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:In(0);
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075812533645634300";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetUnDamageable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2075812746590431234";
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:Deactivate();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
    l0 = self[18];
    l0.entityId = "2078294646217262066";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Damage should be send to Sam";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "2074868928208701670";
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Damage();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0:UnsetInvincible();
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_OnSit()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_OnStandUp()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0:UnsetInvincible();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:SetInvincible();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055332617654";
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:SetUnDamageable();
end;

function export:f_24_False()
    self = self._graph;
    self:SamIsKilled();
end;

function export:f_24_True()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.pawns = "2074868928208701670";
    l0:Enable();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Damage sent.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[9];
    l0.vehicle = "2078294646217262066";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetInvincible();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetAsIndestructable();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Vehicle Status listener STARTED!";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_18_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:In(0);
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:In(0);
    l0 = self[25];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2074949975279671907";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetUnDamageable();
end;

function export:f_32_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "vehicle UNLOADED!";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[28];
    l0:Condition(1);
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055334714807";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:SetUnDamageable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075685760278734346";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetUnDamageable();
end;

function export:f_25_OnSit()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:Stop();
end;

function export:f_25_OnStandUp()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:Start();
end;

function export:f_23_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_24_True;
    l0.False = self.f_24_False;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055334714808";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:SetUnDamageable();
end;

function export:f_15_Damaged()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.seconds = 1;
    l0:Start();
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.loop = true;
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:SamIsKilled()
    
end;
_compilerVersion = 24;
