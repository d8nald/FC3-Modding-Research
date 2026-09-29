-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: Prefab_WaterRiseFull
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Prefab" Type="Nomad|entity{}" />
    <DataIn Name="WaitingTime" Type="Core|float" />
    <DataIn Name="middle" Type="Nomad|entity{}" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.WaterRiseOut = DummyFunction;
    self.WaterFallOut = DummyFunction;
    self.Dummy = nil;
    self.SceneEntity = nil;
    self.SFX_Shake01 = nil;
    self.SFX_Shake02 = nil;
    self.SFX_Shake03 = nil;
    self.SFX_Shake04 = nil;
    self.SFX_Shake05 = nil;
    self.SFX_Boiling02 = nil;
    self.SFX_Boiling03 = nil;
    self.SFX_Boiling01 = nil;
    self.SFX_Boiling04 = nil;
    self.SFX_Boiling05 = nil;
    self.DamageVol = nil;
    self.Dummy02 = nil;
    self.Dangerous = false;
    self.InTrigger = false;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = self.f_5_Started;
    l0.Stopped = self.f_5_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = self.f_12_Leave;
    l0.Use = DummyFunction;
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
    self[7] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Started = self.f_61_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_61_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_60_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Started = self.f_68_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_68_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[84] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Out = self.f_84_Out;
    self[62] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_62_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[80] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Out = self.f_80_Out;
    self[35] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    self[9] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = self.f_9_Critical;
    l0.Killed = DummyFunction;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[85] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Out = self.f_85_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:In();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.BAM_055_B50.InGeyserArea;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_15_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = self[61];
    l0:Play();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = self.Dummy;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_81_Disabled;
    l0:SetDisabled();
end;

function export:f_81_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = self.Dummy;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_83_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "BAM_055_B50_WaterPrefab_Shake05";
    l0:In();
    self:Out();
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "weaponBulletShoot";
    l0.IntensityModifier = 5;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SendEvent();
end;

function export:f_5_Stopped()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Stop();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Stop();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "enter the triger";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = self.DamageVol;
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

function export:f_12_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Leave the triger";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = self.DamageVol;
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
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:True();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.SFX_Shake05;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_52_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.InTrigger;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_14_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Enable();
end;

function export:f_61_Finished()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.seconds = self.WaitingTime;
    l0:Start();
end;

function export:f_61_Started()
    local l0;
    self = self._graph;
    self:WaterRiseOut();
    l0 = self[3];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.SFX_Shake05;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_79_Out;
    l0:False();
end;

function export:f_15_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Dangerous;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_52_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:In();
end;

function export:f_60_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0.SceneEntity = self.SceneEntity;
    l0.SequenceFile = "Sequences/fc3_main/bam_055_b50/bam_055_b50_waterfall.seq";
    l0:Play();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.InTrigger = l0.Target;
end;

function export:f_68_Finished()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0.seconds = self.WaitingTime;
    l0:Start();
end;

function export:f_68_Started()
    local l0;
    self = self._graph;
    self:WaterFallOut();
    l0 = self[2];
    l0:Start();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = self[84];
    self.SceneEntity = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.Dummy;
    l0.EntityB = self.SFX_Shake05;
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_82_Out;
    l0:Bind();
end;

function export:f_62_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:In();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    self.SFX_Shake05 = l0.ObjectEntity;
    l0 = self[35];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "BAM_055_B50_WaterPrefab_Dummy";
    l0:In();
end;

function export:f_14_A_is_True()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Start();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Dangerous = l0.Target;
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 12;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Dangerous = l0.Target;
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = self[35];
    self.Dummy = l0.ObjectEntity;
    l0 = self[85];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "BAM_055_B50_WaterPrefab_DamageVol";
    l0:In();
end;

function export:f_9_Critical()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Stop();
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    l0 = self[85];
    self.DamageVol = l0.ObjectEntity;
    l0 = self[84];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "BAM_055_B50_WaterPrefab_SceneEntity";
    l0:In();
end;

function export:f_83_Disabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.triggerId = self.DamageVol;
    l0.autoDisable = false;
    l0:Enable();
    self:en_61();
    l0 = self[61];
    l0:Play();
    l0 = self[11];
    l0.seconds = 0.5;
    l0.loop = true;
    l0:Start();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.seconds = 0.5;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.SceneEntity = "2076092773764699333";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb03/b40_watetSFX.seq";
end;

function export:en_61()
    local l0;
    l0 = self[61];
    l0.SceneEntity = self.SceneEntity;
    l0.SequenceFile = "Sequences/fc3_main/bam_055_b50/bam_055_b50_waterrise.seq";
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:WaterRiseOut()
    
end;
function export:WaterFallOut()
    
end;
_compilerVersion = 24;
