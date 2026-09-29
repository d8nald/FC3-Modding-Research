-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: EVENT_ConvoyArrival
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleFollowPath_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        cbox:RegisterBox("Domino/System/WeaponVisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.KeyTargetIsSet = DummyFunction;
    self.Out = DummyFunction;
    self.CheckForTruckID01 = {
    };
    self.TruckID01 = nil;
    self.CheckForTruckId02 = {
    };
    self.TruckID02 = nil;
    self.TruckID04 = nil;
    self.TruckID03 = nil;
    self.CheckForTruckID03 = {
    };
    self.CheckForTruckID04 = {
    };
    self.CheckForMercID01 = {
    };
    self.MercID01 = nil;
    self.CheckForMercID02 = {
    };
    self.CheckForMercID03 = {
    };
    self.CheckForMercID04 = {
    };
    self.MercID02 = nil;
    self.MercID03 = nil;
    self.MercID04 = nil;
    self.CheckForKeyTarget = 0;
    self.ePlayer = nil;
    self[5] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.EndOfList = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_33_Completed;
    self[2] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.EndOfList = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = self.f_12_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = self.f_12_Finished;
    self[6] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = self.f_6_Finished;
    self[55] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_55_Loaded;
    l0.Unloaded = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_56_Loaded;
    l0.Unloaded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_3_Spawned;
    self[47] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_47_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_52_Loaded;
    l0.Unloaded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0.EndOfList = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[31];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_31_Out_0;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = self.f_1_Stoped;
    l0.Finished = self.f_1_Finished;
    self[51] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_51_Loaded;
    l0.Unloaded = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = self.f_58_Out;
    self[59] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[59];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 3,
    };
    l0.Out = self.f_59_Out;
    self[34] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_34_Out_0;
    l0.ResetOut = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_10_Spawned;
    self[9] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = self.f_9_Finished;
    self[54] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_54_Loaded;
    l0.Unloaded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_4_Spawned;
    self[60] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_60_Loaded;
    l0.Unloaded = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_26_Loaded;
    l0.Unloaded = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    self[53] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_53_Loaded;
    l0.Unloaded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_23_Out_0;
    l0.ResetOut = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    self[21] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_21_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_46_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_42_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = self.f_39_Out;
    self[18] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_18_Loaded;
    l0.Unloaded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_41_Loaded;
    l0.Unloaded = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_43_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138271589551401";
    l0.missionLayerId = "9145470844292394";
    l0._graph = self;
    l0.Activated = self.f_61_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:Exit();
    self:en_39();
    l0 = self[39];
    l0:Exit();
    self:en_57();
    l0 = self[57];
    l0:Exit();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.TruckID02 = l0.Data;
    l0 = self[6];
    l0.Vehicle = self.TruckID02;
    l0.Path = "2074536972172433249";
    l0.Speed = 8;
    l0:Start();
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:In();
end;

function export:f_14_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.ContextualAction = "2078046307844443231";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_48_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_14_Out_2()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:In(0);
end;

function export:f_48_Enabled()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Group = "#2E69BEAF";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_33_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NAV MESH REGEN DONE";
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

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.TruckID01 = l0.Data;
    l0 = self[1];
    l0.Vehicle = self.TruckID01;
    l0.Path = "2074534426678672854";
    l0.Speed = 8;
    l0:Start();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsUnusable();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsIndestructable();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsUnusable();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsIndestructable();
end;

function export:f_62_Out_0()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.pawn = Globals.WIL_050_MAIN.OliverMain;
    l0:Invisible();
end;

function export:f_62_Out_1()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.entityId = "2075546765886497315";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_55_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_62_Out_0;
    l0.Out[1] = self.f_62_Out_1;
    l0:In();
end;

function export:f_56_Loaded()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.entityId = "2074536972449257314";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_3_Spawned()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.CheckForMercID01 = l0.mercsSpawned;
    self.CheckForTruckID01 = l0.vehiculesSpawned;
    l0 = self[2];
    l0.Input = self.CheckForTruckID01;
    l0.Index = 1;
    l0:Read();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CONVOY01SPAWN";
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

function export:f_47_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.ReinforcementPoint = "2074522248699466530";
    l0.Battlefield = "2074618828209297194";
    l0.IdleBSR = "2074618810928764713";
    l0.AlertBSR = "2074618828209297194";
    l0.CombatBSR = "2074618828209297194";
    l0:SpawnInRelax();
end;

function export:f_52_Loaded()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.entityId = "2075546769214677550";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.TruckID04 = l0.Data;
    l0 = self[12];
    l0.Vehicle = self.TruckID04;
    l0.Path = "2074536971719448416";
    l0.Speed = 8;
    l0:Start();
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_14_Out_0;
    l0.Out[1] = self.f_14_Out_1;
    l0.Out[2] = self.f_14_Out_2;
    l0:In();
end;

function export:f_31_Out_0()
    self = self._graph;
    self:Out();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsUnusable();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "FOLLOW PATH";
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
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsIndestructable();
end;

function export:f_1_Stoped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "STOPED";
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

function export:f_51_Loaded()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.entityId = "2074534426678672854";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Condition(0);
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Vehicle = "2075546702133076451";
    l0.Path = "2074536972449257314";
    l0.Speed = 8;
    l0:Start();
end;

function export:f_50_Enabled()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Use();
end;

function export:f_34_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_10_Spawned()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.CheckForMercID04 = l0.mercsSpawned;
    self.CheckForTruckID04 = l0.vehiculesSpawned;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CONVOY04SPAWN";
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
    l0 = self[11];
    l0.Input = self.CheckForTruckID04;
    l0:Read();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_45_Out_0;
    l0.Out[1] = self.f_45_Out_1;
    l0:In();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsIndestructable();
end;

function export:f_54_Loaded()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.entityId = "2074522248701563686";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_4_Spawned()
    local l0;
    self = self._graph;
    l0 = self[4];
    self.CheckForMercID02 = l0.mercsSpawned;
    self.CheckForTruckId02 = l0.vehiculesSpawned;
    l0 = self[5];
    l0.Input = self.CheckForTruckId02;
    l0:Read();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CONVOY02SPAWN";
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

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2074522248703660840";
    l0.Battlefield = "2074618828209297194";
    l0.IdleBSR = "2074618810928764713";
    l0.AlertBSR = "2074618828209297194";
    l0.CombatBSR = "2074618828209297194";
    l0:SpawnInRelax();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "INSIDE";
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

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_13_Out_2()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_13_Out_3()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_60_Loaded()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.entityId = "2074522248699466530";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_26_Loaded()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.entityId = "2074522248703660840";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.RegionEntity = "2075534908706529343";
    l0:In();
end;

function export:f_25_Out_1()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#85784C16";
    l0.Battlefield = "2076593063311982183";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAll();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = Globals.WIL_050_MAIN.OliverMain;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:On();
end;

function export:f_53_Loaded()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.entityId = "2075546702133076451";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#1C711DAC";
    l0.Battlefield = "2075604319060680936";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAll();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#1C711DAC";
    l0.Battlefield = "2075604319060680936";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetBattlefield();
end;

function export:f_23_Out_0()
    self = self._graph;
    self:KeyTargetIsSet();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Condition(2);
end;

function export:f_21_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_13_Out_0;
    l0.Out[1] = self.f_13_Out_1;
    l0.Out[2] = self.f_13_Out_2;
    l0.Out[3] = self.f_13_Out_3;
    l0:In();
end;

function export:f_46_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_49_Out_0;
    l0.Out[1] = self.f_49_Out_1;
    l0.Out[2] = self.f_49_Out_2;
    l0.Out[3] = self.f_49_Out_3;
    l0:In();
end;

function export:f_42_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ReinforcementPoint = "2074522248701563686";
    l0.Battlefield = "2074618828209297194";
    l0.IdleBSR = "2074618810928764713";
    l0.AlertBSR = "2074618828209297194";
    l0.CombatBSR = "2074618828209297194";
    l0:SpawnInRelax();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.Out[1] = self.f_25_Out_1;
    l0:In();
end;

function export:f_61_Activated()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.entityId = Globals.WIL_050_MAIN.OliverMain;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Condition(1);
end;

function export:f_18_Loaded()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.entityId = "2074536971719448416";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_41_Loaded()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In(0);
end;

function export:f_45_Out_0()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsUnusable();
end;

function export:f_45_Out_1()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In(0);
end;

function export:f_49_Out_0()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:In(0);
end;

function export:f_49_Out_1()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:TakeSeat();
end;

function export:f_49_Out_2()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = self[39];
    l0:TakeSeat();
end;

function export:f_49_Out_3()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:TakeSeat();
end;

function export:f_43_Loaded()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.entityId = "2074536972172433249";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:en_30()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2075546702133076451";
    l0._graph = self;
    l0.Out = self.f_30_Out;
end;

function export:en_58()
    local l0;
    l0 = self[58];
    l0.Vehicle = "2075546702133076451";
    l0.User = Globals.WIL_050_MAIN.OliverMain;
    l0.Passenger = true;
    l0.SkipEntryAnimation = true;
end;

function export:en_50()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075493771583243121";
    l0.ContextualAction = "2078046307844443232";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_50_Enabled;
    l0.Disabled = DummyFunction;
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.TruckID02;
    l0._graph = self;
    l0.Out = self.f_29_Out;
end;

function export:en_28()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.TruckID01;
    l0._graph = self;
    l0.Out = self.f_28_Out;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.TruckID04;
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

function export:en_57()
    local l0;
    l0 = self[57];
    l0.Vehicle = "2075546702133076451";
    l0.User = "2075546769214677550";
    l0.Gunner = true;
    l0.SkipEntryAnimation = true;
end;

function export:en_39()
    local l0;
    l0 = self[39];
    l0.Vehicle = "2075546702133076451";
    l0.User = "2075546765886497315";
    l0.Driver = true;
    l0.SkipEntryAnimation = true;
end;

-- Empty out anchor definitions
function export:KeyTargetIsSet()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
