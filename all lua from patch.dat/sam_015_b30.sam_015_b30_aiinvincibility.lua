-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b30/sam_015_b30.domino.xml
-- User graph: SAM_015_B30_AIInvincibility
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Fail = DummyFunction;
    self.ePlayer = nil;
    self[8] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_9_Damaged;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = DummyFunction;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_7_OnSit;
    l0.OnStandUp = self.f_7_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = self.f_1_Disabled;
    l0.OnSit = self.f_1_OnSit;
    l0.OnStandUp = self.f_1_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_13_True;
    l0.False = self.f_13_False;
    l0:In();
end;

function export:PlayerNonLongerInvincible()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:UnsetInvincible();
end;

function export:SamGetsOff()
    local l0;
    self:en_7();
    l0 = self[7];
    l0:Disable();
end;

function export:f_9_Damaged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetInvincible();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Enable();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.CanUseAlternateSeat = false;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_7_OnSit()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Stop();
end;

function export:f_7_OnStandUp()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Start();
end;

function export:f_13_False()
    self = self._graph;
    self:Fail();
end;

function export:f_13_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetInvincible();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0:UnsetInvincible();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Enable();
end;

function export:f_1_OnSit()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0:SetInvincible();
end;

function export:f_1_OnStandUp()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0:UnsetInvincible();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:UnsetInvincible();
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.loop = true;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0.autoDisable = false;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.vehicle = "2078294646217262066";
    l0.autoDisable = false;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Fail()
    
end;
_compilerVersion = 24;
