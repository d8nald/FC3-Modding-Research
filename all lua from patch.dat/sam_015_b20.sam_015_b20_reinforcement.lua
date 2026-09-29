-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_Reinforcement
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
        cbox:RegisterBox("Domino/System/AI/AlarmModifier.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0016dd90]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[28] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_28_Spawned;
    self[24] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_24_Enter;
    l0.Leave = self.f_24_Leave;
    l0.Use = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Started = self.f_66_Started;
    l0.Finished = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_39_Success;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_39_Spawned;
    self[23] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0.Closed = self.f_23_Closed;
    l0.Opened = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[34];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_34_Out;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_26_Out;
    self[27] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_27_Spawned;
    self[67] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_48_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[72] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = self.f_9_Leave;
    l0.Use = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[36];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_36_Out;
    self[64] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_64_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[65] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_65_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0.Closed = self.f_35_Closed;
    l0.Opened = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0.Closed = self.f_31_Closed;
    l0.Opened = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Started = self.f_70_Started;
    l0.Finished = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_22_Out;
    self[73] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Started = self.f_73_Started;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = self.f_10_Leave;
    l0.Use = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Started = self.f_74_Started;
    l0.Finished = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[69] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[69];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_14_Enter;
    l0.Leave = self.f_14_Leave;
    l0.Use = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_40_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[99] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[99];
    l0._graph = self;
    l0.Out = self.f_99_Out;
    l0.Closed = self.f_99_Closed;
    l0.Opened = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = self.f_49_Started;
    l0.Finished = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_44_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_51_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:BlewupBomb01()
    local l0;
    l0 = self[31];
    l0:Close();
end;

function export:BlewupBomb02()
    local l0;
    l0 = self[99];
    l0:Close();
end;

function export:BlewupBomb03()
    local l0;
    l0 = self[35];
    l0:Close();
end;

function export:BlewupBomb04()
    local l0;
    l0 = self[23];
    l0:Close();
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective03Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_54_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective01Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_33_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2075816199333095734";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_61_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective02Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_53_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective04Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_55_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#262C9E10";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
    l0 = self[23];
    l0:In();
    l0 = self[35];
    l0:In();
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:In();
    l0 = self[35];
    l0:In();
    l0 = self[23];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#A120F32E";
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:In();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#A120F32E";
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
    l0 = self[23];
    l0:In();
    l0 = self[31];
    l0:In();
    l0 = self[99];
    l0:In();
end;

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#A120F32E";
    l0._graph = self;
    l0.Out = self.f_87_Out;
    l0:In();
    l0 = self[35];
    l0:In();
    l0 = self[31];
    l0:In();
    l0 = self[99];
    l0:In();
end;

function export:f_55_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074911367946588145";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:SetEnabled();
end;

function export:f_25_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076456952254183781";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:CreateAILogInArmy();
end;

function export:f_28_Spawned()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_24_Enter()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:Reset();
    l0 = self[13];
    l0.ReinforcementPoint = "2074909207546567304";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:In();
    l0 = self[65];
    l0:Start();
end;

function export:f_24_Leave()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:Condition(1);
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.triggerId = "2076677076072544795";
    l0:Enable();
end;

function export:f_54_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075824949741758701";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:SetEnabled();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.ReinforcementPoint = "2075814875304568908";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2075816529213004393";
    l0.AlertBSR = "2075816529213004393";
    l0.CombatBSR = "2075816529213004393";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_66_Started()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.Entity = "2076459148987345552";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076500347102182150";
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:CreateAILogInArmy();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459463518200995";
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:CreateAILogInArmy();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075814935874512977";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetEnabled();
end;

function export:f_39_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "heavy flammer spawned";
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
    l0:ToAll();
end;

function export:f_39_Success()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "heavy flammer success";
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
    l0:ToAll();
end;

function export:f_23_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074911367946588145";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:Condition(0);
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#60C0C5B0";
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:In();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.ReinforcementPoint = "2075795289714730815";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = "#E31BE937";
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:Activate();
end;

function export:f_83_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074911270303191007";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_82_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_45_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076677099227200035";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#60C0C5B0";
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_27_Spawned()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.ReinforcementPoint = "2074911400725073913";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.ReinforcementPoint = "2075795358694254405";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.Entity = "2076677691148352298";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_93_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.ReinforcementPoint = "2075795437553461067";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076677076072544795";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:SetEnabled();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075834369502623285";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_83_Removed;
    l0:Remove();
end;

function export:f_48_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = "#0D15881B";
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:Activate();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_105_Out;
    l0:In();
    l0 = self[51];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459481291564199";
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0:CreateAILogInArmy();
    l0 = self[22];
    l0:Reset();
end;

function export:f_9_Leave()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:Condition(1);
end;

function export:f_61_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075816199333095734";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_53_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074909219890403982";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetEnabled();
end;

function export:f_64_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2075816492466707047";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.Entity = "2076459546965976237";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#53CE8C9B";
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:In();
end;

function export:f_65_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.Entity = "2074538555423588921";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_35_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075824949741758701";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Condition(0);
end;

function export:f_46_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076677065100245527";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_82_Added()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2074911332089483240";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2075816529213004393";
    l0.AlertBSR = "2075816529213004393";
    l0.CombatBSR = "2075816529213004393";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#53CE8C9B";
    l0._graph = self;
    l0.Out = self.f_88_Out;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#53CE8C9B";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#79946413";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_31_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074870933853583890";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Condition(0);
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#262C9E10";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#60C0C5B0";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.ReinforcementPoint = "2075795144753293112";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Enable();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#79946413";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.ReinforcementPoint = "2075824650287327190";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_70_Started()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.Entity = "2076459557208466616";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Enable();
end;

function export:f_73_Started()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0.Entity = "2076459125505534586";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Reset();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076457845192145367";
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:CreateAILogInArmy();
end;

function export:f_10_Leave()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Condition(1);
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:f_88_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#79946413";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074566616170907671";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_45_Removed;
    l0:Remove();
end;

function export:f_74_Started()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.Entity = "2076677836837501746";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = "2074908012587271732";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_14_Enter()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Reset();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_102_Out;
    l0:In();
    l0 = self[52];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2073418075939557766";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_3_Removed;
    l0:Remove();
end;

function export:f_14_Leave()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Condition(1);
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#262C9E10";
    l0._graph = self;
    l0.Out = self.f_85_Out;
    l0:In();
end;

function export:f_33_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074870933853583890";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:SetEnabled();
end;

function export:f_40_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075814935874512977";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074841747564792131";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_46_Removed;
    l0:Remove();
end;

function export:f_99_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074909219890403982";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:Condition(0);
end;

function export:f_49_Started()
    local l0;
    self = self._graph;
    l0 = self[69];
    l0.Entity = "2074939836698991342";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.triggerId = "2075814935874512977";
    l0:Enable();
end;

function export:f_44_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076677076072544795";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:SetDisabled();
end;

function export:f_3_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074911217029238747";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_25_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_51_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0.Entity = "2076483425604234797";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.triggerId = "2074909219890403982";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.triggerId = "2074911367946588145";
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.triggerId = "2075824949741758701";
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.triggerId = "2074870933853583890";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
