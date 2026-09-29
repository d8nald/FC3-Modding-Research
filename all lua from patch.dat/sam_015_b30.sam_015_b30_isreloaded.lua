-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b30/sam_015_b30.domino.xml
-- User graph: Sam_015_B30_IsReloaded
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplayHealthBar.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.RestoreAlarmState.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/AI/TargetModifier.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
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
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.RestoreAlarmState.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0.Activated = DummyFunction;
    l0.Disabled = DummyFunction;
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
    self[2] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[3] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[5] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_5_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.RestoreAlarmState.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0.Activated = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_21_Showned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2072616960822087921";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_13_Removed;
    l0:Remove();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_18_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.SAM_015_MAIN.IsSam015Reloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_1_A_is_True;
    l0.A_is_False = self.f_1_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Send();
end;

function export:f_13_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2075812746590431234";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Deactivate();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_ACT_Epic";
    l0._graph = self;
    l0.Started = self.f_18_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#79946413";
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:In();
end;

function export:f_17_Out()
    self = self._graph;
    self:Out();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.CanUseAlternateSeat = false;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075917849253146546";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:SetAsIndestructable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075821706422787288";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.AlarmsAreActivated = PersistentGlobals.SAM_015_MAIN.AlarmsAreActivated;
    l0.AlarmsAreDisabled = PersistentGlobals.SAM_015_MAIN.AlarmsAreDisabled;
    l0.AlarmGroup = "#E31BE937";
    l0.DestroyedAlarms = PersistentGlobals.SAM_015_MAIN.DestroyedAlarms;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2078285260587549841";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:SetDamageable();
end;

function export:f_5_OnSit()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_1_A_is_False()
    self = self._graph;
    self:Out();
end;

function export:f_1_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075821706080951508";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Start();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2074624299972461647";
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:SetUnDamageable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayHealthBar.lua")];
    l0.entityId = "2074868928208701670";
    l0.entityName = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_SAM",
        id = "91000",
    };
    l0._graph = self;
    l0.Showned = self.f_21_Showned;
    l0.Hidden = DummyFunction;
    l0:Show();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812746590431234";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.AlarmsAreActivated = PersistentGlobals.SAM_015_MAIN.AlarmsAreActivated2;
    l0.AlarmsAreDisabled = PersistentGlobals.SAM_015_MAIN.AlarmsAreDisabled2;
    l0.AlarmGroup = "#0D15881B";
    l0.DestroyedAlarms = PersistentGlobals.SAM_015_MAIN.DestroyedAlarms2;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self._sld_LocalPlayer_15 = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self._sld_LocalPlayer_15;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:UnsetInvincible();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
