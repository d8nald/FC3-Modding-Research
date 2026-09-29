-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: Sub_HotWaterBlocker
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetPosition.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.SHA_Tomb_ContinuousDamage.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.IsInTheHotWaterWithFailSafe = true;
    self[8] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = self.f_8_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_14_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = self.f_13_Critical;
    l0.Killed = DummyFunction;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.SHA_Tomb_ContinuousDamage.lua");
    l0 = self[7];
    l0._graph = self;
    l0.OpenOut = DummyFunction;
    l0.CloseOut = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = self.f_1_Leave;
    l0.Use = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_16_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = self.f_12_Started;
    l0.Stopped = self.f_12_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0.Closed = DummyFunction;
    l0.Opened = self.f_20_Opened;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Play();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:True();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Stop();
end;

function export:f_8_Started()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Enable();
end;

function export:f_19_A_ge_B()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:Open();
end;

function export:f_19_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "weaponBulletShoot";
    l0.IntensityModifier = 5;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:SendEvent();
    self:en_20();
    l0 = self[20];
    l0:In();
end;

function export:f_14_Enter()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Open();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_zPos_18 = l0.zPos;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self._sld_zPos_18;
    l0.B = 201.43;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_19_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_19_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_11_Out()
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

function export:f_13_Critical()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Stop();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Open();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Open();
end;

function export:f_23_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:True();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self._sld_LocalPlayer_17 = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self._sld_LocalPlayer_17;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Start();
end;

function export:f_1_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:In();
    self:en_12();
    l0 = self[12];
    l0:Stop();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsInTheHotWaterWithFailSafe = l0.Target;
    self:en_20();
    l0 = self[20];
    l0:Close();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.triggerId = "2075111009665701523";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[14];
    l0.triggerId = "2076895998180861025";
    l0:Enable();
    l0 = self[15];
    l0.triggerId = "2076895980157936733";
    l0:Enable();
    l0 = self[16];
    l0.triggerId = "2076978831238914251";
    l0:Enable();
    l0 = self[6];
    l0.triggerId = "2076203104256172095";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsInTheHotWaterWithFailSafe = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_16_Enter()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Open();
end;

function export:f_24_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:False();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Play();
end;

function export:f_12_Stopped()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Stop();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsInTheHotWaterWithFailSafe = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_20_Opened()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsInTheHotWaterWithFailSafe;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_24_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsInTheHotWaterWithFailSafe;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_23_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.SceneEntity = "2076092773764699333";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb03/b40_watetSFX.seq";
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.InitialDmg = 10000;
    l0.ContinuousDmg = 10000;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.seconds = 0.4;
    l0.loop = true;
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.initStateOpen = false;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
