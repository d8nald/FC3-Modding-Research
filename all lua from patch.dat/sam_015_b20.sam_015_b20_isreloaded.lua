-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_IsReloaded
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplayHealthBar.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cbox:RegisterBox("Domino/System/AI/TargetModifier.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.globals.lua");
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[27] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    self[46] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_46_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    self[10] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_10_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    self[59] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[25] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[47] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_47_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    self[19] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[18] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[56] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[54] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_48_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    self[21] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[62] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[64] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = self.f_40_Out;
    self[20] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    self[53] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[17];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 4,
    };
    l0.Out = self.f_17_Out;
    self[63] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[61] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Out = self.f_45_Out;
    self[13] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[57] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[2] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2074624299972461647";
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:SetUnDamageable();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.ReinforcementPoint = "2073860399568016910";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Destination = "2075906943521659753";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075906726204283729";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_46_OnSit()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Condition(2);
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075907160794995581";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_10_OnSit()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Condition(3);
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076457845192145367";
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:CreateAILogInArmy();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_44_Showned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_ACT_Play_LP";
    l0._graph = self;
    l0.Started = self.f_43_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.ReinforcementPoint = "2074623223378480956";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.Gunner = true;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0:Send();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2078823778617412255";
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:CreateAILogInArmy();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Destination = "2075907057239726969";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_47_OnSit()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Condition(1);
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075906710158973761";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Destination = "2075907055341804405";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.ReinforcementPoint = "2075815480429389923";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.ReinforcementPoint = "2078018286726950277";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075907160797092737";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_49_Removed()
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
    l0.Showned = self.f_44_Showned;
    l0.Hidden = DummyFunction;
    l0:Show();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459481291564199";
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:CreateAILogInArmy();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.ReinforcementPoint = "2074911400725073913";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0.ReinforcementPoint = "2075754151846878875";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_48_OnSit()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Condition(0);
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075906720078502729";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075783055334714807";
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:Enable();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.Gunner = true;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_29_A_is_False()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_29_A_is_True()
    local l0;
    self = self._graph;
    self:en_67();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Destination = "2075907053538253681";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_52_Out()
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

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0.ReinforcementPoint = "2075814844046518344";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_30_A_is_False()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_30_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055332617654";
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:SetDamageable();
    self:en_67();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = 3;
    l0.B = PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_3_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = 0;
    l0.B = PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_41_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = 4;
    l0.B = PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_11_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = 2;
    l0.B = PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_9_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = 1;
    l0.B = PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_6_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055334714807";
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:SetDamageable();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.Gunner = true;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective03Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_29_A_is_True;
    l0.A_is_False = self.f_29_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective02Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_28_A_is_True;
    l0.A_is_False = self.f_28_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective04Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_30_A_is_True;
    l0.A_is_False = self.f_30_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective01Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_14_A_is_True;
    l0.A_is_False = self.f_14_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.SAM_015_B20.NumberOfDestroyedTanks = l0.Target;
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459463518200995";
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:CreateAILogInArmy();
end;

function export:f_11_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075906726202186573";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_28_A_is_False()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_28_A_is_True()
    local l0;
    self = self._graph;
    self:en_67();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_43_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075917849253146546";
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2075812746590431234";
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:Deactivate();
end;

function export:f_3_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075906720078502725";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_9_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075906710158973757";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.ReinforcementPoint = "2073859993725050583";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Start();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812746590431234";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0.ReinforcementPoint = "2077745743573042272";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.ReinforcementPoint = "2075837798576857028";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_14_A_is_False()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_A_is_True()
    local l0;
    self = self._graph;
    self:en_67();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#FE6A0FCC";
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 2;
    l0.Gunner = true;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_45_Out()
    self = self._graph;
    self:Out();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075783055332617654";
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_A_is_False()
    self = self._graph;
    self:Out();
end;

function export:f_1_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2072616960822087921";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_49_Removed;
    l0:Remove();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.PawnEntity = "2074868928208701670";
    l0.Destination = "2075906700069575477";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_6_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.PawnEntity = "2078294646217262066";
    l0.Destination = "2075906700071672633";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.ReinforcementPoint = "2073388917089912156";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.ReinforcementPoint = "2075814780576213059";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
end;

function export:en_33()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
end;

function export:en_67()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0._graph = self;
    l0.Out = self.f_67_Out;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
