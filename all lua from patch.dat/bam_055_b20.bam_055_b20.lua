-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_C03.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_DangerZone.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_Init.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_NpcDialog.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_OBJ.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/AI/PlayContextDialog.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/ZiplineListener.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018b304]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.NPCcounter = 0;
    self.b1stgroup = false;
    self.bClear = true;
    self.bPlayerInside = false;
    self.E_player = nil;
    self.IsCombatTriggered = false;
    self[61] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0.Closed = self.f_61_Closed;
    l0.Opened = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_59_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_57_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_OBJ.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[63] = cbox:CreateBox("Domino/System/ZiplineListener.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PawnOn = self.f_63_PawnOn;
    l0.PawnOff = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_15_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[66];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_66_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_36_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_11_Spawned;
    self[39] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_39_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_20_Completed;
    self[19] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_19_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[50] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_DangerZone.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out_Disabled = self.f_50_Out_Disabled;
    self[25] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_25_Out;
    self[51] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Enabled = self.f_51_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_51_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[52];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_52_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_Init.lua");
    l0 = self[3];
    l0._graph = self;
    self[33] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[33];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = DummyFunction;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_55_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[64] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[64];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_64_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_NpcDialog.lua");
    l0 = self[2];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[40];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_40_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_49_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Acknowledged = self.f_46_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_C03.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.SP_crack = DummyFunction;
    self[60] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_OBJ.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_26_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_OBJ.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[8];
    l0._graph = self;
    self[54] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_54_Spawned;
    self[22] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_22_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = self.f_24_Start;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_29_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[46];
    l0:Acknowledge();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0:In(0);
    l0 = self[64];
    l0:In(0);
end;

function export:f_61_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078935020845673256";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:SpawnInCautious();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0:In(0);
end;

function export:f_59_StateStart()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:Condition(0);
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078935020845673256";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:SetEnabled();
    self:en_11();
    l0 = self[11];
    l0:SpawnInCautious();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "2076714165050832842";
    l0.Battlefield = "2076301159265527092";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAll();
end;

function export:f_57_Enter()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.triggerId = "2078003950675569412";
    l0:Enable();
    l0 = self[51];
    l0.triggerId = "2076164115094573817";
    l0:Enable();
    l0 = self[15];
    l0.group = "#7FBBA281";
    l0:Combat();
    l0 = self[58];
    l0.ReinforcementPoint = "2076620339525194870";
    l0.Battlefield = "2074751446202461941";
    l0.IdleBSR = "2074751446202461941";
    l0.AlertBSR = "2074751446202461941";
    l0.CombatBSR = "2074751446202461941";
    l0:SpawnInRelax();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.triggerId = "2075318038340578783";
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_63_PawnOn()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:In();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.seconds = 10;
    l0:Start();
end;

function export:f_15_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:True();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_31_Enabled()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_66_Out_0()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:In_2();
end;

function export:f_17_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0:In(0);
end;

function export:f_17_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2078006238704052186";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:CreateAILogInArmy();
end;

function export:f_36_Enter()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0:SetDisabled();
    l0 = self[5];
    l0:In4();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0:In(0);
end;

function export:f_11_Spawned()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.seconds = 3;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "zipline guy spawned!";
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
    l0 = self[24];
    l0.ContextualAction = "2078003887740037888";
    l0:Enable();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Group = self.E_player;
    l0.SoundId = "0x0018b304";
    l0:ForcePlay_Priority();
end;

function export:f_20_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "nav regenerated";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
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

function export:f_19_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In(0);
end;

function export:f_50_Out_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:False();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076523087836273479";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = self.f_28_Disabled;
    l0:Disable();
    l0 = self[14];
    l0:In();
end;

function export:f_51_Enabled()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.zipEntryPoint = "2074723979708339136";
    l0:Enable();
end;

function export:f_51_Enter()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0:In(0);
end;

function export:f_52_Out_0()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In_stop();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsCombatTriggered = l0.Target;
end;

function export:f_55_Enter()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Close();
end;

function export:f_30_Disabled()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_30_Enabled()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_64_Out_0()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.ReinforcementPoint = "2078832498602683171";
    l0.Battlefield = "2075347051935198207";
    l0.IdleBSR = "2075347051935198207";
    l0.AlertBSR = "2075347051935198207";
    l0.CombatBSR = "2075347051935198207";
    l0:SpawnInCautious();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0:SetEnabled();
    l0 = self[5];
    l0:In3();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#8B3903D3";
    l0.Battlefield = "2075347051935198207";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAll();
end;

function export:f_32_Disabled()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0:In(0);
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.triggerId = "2078935020845673256";
    l0:Enable();
end;

function export:f_40_Out_0()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.triggerId = "2078034254377260433";
    l0:Enable();
end;

function export:f_49_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetBattlefield();
    self:en_48();
    l0:SetCombatBSR();
end;

function export:f_28_Disabled()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_28_Enabled()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
    l0 = self[7];
    l0.triggerId = "2074752278205599462";
    l0:Enable();
end;

function export:f_46_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
    l0 = self[3];
    l0:In();
    l0 = self[57];
    l0.triggerId = "2076620358619763834";
    l0:Enable();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.RegionEntity = "2075122333235811590";
    l0:In();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.E_player = l0.LocalPlayer;
    l0 = self[39];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_26_Enter()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:Condition(1);
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "2076507454190932174";
    l0.Battlefield = "2078044686456465605";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:SetAll();
end;

function export:f_54_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsCombatTriggered;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_17_A_is_True;
    l0.A_is_False = self.f_17_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = self[59];
    l0:Combat();
    l0 = self[26];
    l0.triggerId = "2075318038340578783";
    l0:Enable();
    l0 = self[29];
    l0.triggerId = "2076674359212119142";
    l0:Enable();
end;

function export:f_22_Out_0()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:In();
end;

function export:f_24_Start()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PlayContextDialog.lua")];
    l0.Group = "#F57AFB5B";
    l0.Army = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:PlayRegroup();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_MAIN.IsReloaded = l0.Target;
    l0 = self[8];
    l0:Complete();
end;

function export:f_29_Enter()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = self[59];
    l0:Disable();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:In(0);
end;

function export:en_41()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078034254377260433";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_41_Out;
end;

function export:en_59()
    local l0;
    l0 = self[59];
    l0.group = "2076507454190932174";
end;

function export:en_48()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "2076507454190932174";
    l0.Battlefield = "2075347051935198207";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2077075188284941857";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_31_Enabled;
    l0.Disabled = self.f_31_Disabled;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.ReinforcementPoint = "2078003723736459341";
    l0.Battlefield = "2078031107586009088";
    l0.IdleBSR = "2078031107586009088";
    l0.AlertBSR = "2078031107586009088";
    l0.CombatBSR = "2078031107586009088";
end;

function export:en_30()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2077075370347106144";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_30_Enabled;
    l0.Disabled = self.f_30_Disabled;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2077075194626729509";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_32_Disabled;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
