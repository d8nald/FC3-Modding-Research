-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: FlameJet
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="DamageZone" Type="Nomad|entity{}" />
    <DataIn Name="RunningTime" Type="Core|float" />
    <DataIn Name="StopTime" Type="Core|float" />
    <DataIn Name="FlameJetParticle" Type="Nomad|entity{}" />
    <DataIn Name="ParticleWhenStopDamage" Type="Nomad|entity{}" />
    <DataIn Name="SoundPoint" Type="Nomad|entity{}" />
    <DataIn Name="xLimit" Type="Core|float" />
    <DataIn Name="yLimit" Type="Core|float" />
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/FloatArithmetics.lua");
        cbox:RegisterBox("Domino/System/GetPosition.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.Hit.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018fbd2]], "CSoundResource");
        cbox:LoadResource([[sndres0x00187894]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018fbd5]], "CSoundResource");
        cbox:LoadResource([[sndres0x00187896]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.DoDamage = false;
    self.AllowDamage = false;
    self.soundpoint = nil;
    self.limit = 0;
    self.pos = 0;
    self.tmp = 0;
    self[20] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_20_Enter;
    l0.Leave = self.f_20_Leave;
    l0.Use = DummyFunction;
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
    self[24] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_40_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[23] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.Hit.lua");
    l0 = self[11];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.RunningTime;
    l0.B = 0;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_7_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_7_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = self[20];
    l0.triggerId = self.DamageZone;
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0.autoDisable = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = self.yLimit;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_29_Yes;
    l0.No = self.f_29_No;
    l0:Float();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AllowDamage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_25_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_20_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:True();
end;

function export:f_20_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:False();
end;

function export:f_12_Stopped()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Start();
    l0 = self[24];
    l0.Entity = self.SoundPoint;
    l0.SoundId = "0x0018fbd5";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    self._sld_Target_34 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self._sld_Target_34;
    l0.B = self.tmp;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_35_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_35_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.AllowDamage = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.FlameJetParticle;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
    l0 = self[11];
    l0:Stop();
end;

function export:f_16_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Start();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.DoDamage = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:Start();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    self._sld_Target_33 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0.A = self._sld_Target_33;
    l0.B = nil;
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:Abs();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = self.yLimit;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_42_Yes;
    l0.No = self.f_42_No;
    l0:Float();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.ParticleWhenStopDamage;
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[22];
    l0.Entity = self.SoundPoint;
    l0.SoundId = "0x00187896";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Start();
    l0 = self[23];
    l0.Entity = self.SoundPoint;
    l0.SoundId = "0x0018fbd2";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_41_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
end;

function export:f_41_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_29_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self.DamageZone;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:f_29_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = self.xLimit;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_28_Yes;
    l0.No = self.f_28_No;
    l0:Float();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.AllowDamage = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.DoDamage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_18_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.FlameJetParticle;
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.tmp = l0.Target;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_28_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self.DamageZone;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_28_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_7_A_gt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.StopTime;
    l0.B = 0;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_8_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_8_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_7_A_le_B()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.DoDamage = l0.Target;
    self:en_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.ParticleWhenStopDamage;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_12_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
    l0 = self[10];
    l0.Entity = self.SoundPoint;
    l0.SoundId = "0x00187894";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.AllowDamage = l0.Target;
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Start();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.DoDamage = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AllowDamage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_16_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.ParticleWhenStopDamage;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_15_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.limit = l0.xPos;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = self.xLimit;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:FromFloat();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.pos = l0.xPos;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0:Sub();
end;

function export:f_35_A_gt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.DoDamage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_38_A_is_True;
    l0.A_is_False = self.f_38_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_35_A_le_B()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:Start();
end;

function export:f_25_A_is_True()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Stop();
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_8_A_gt_B()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_8_A_le_B()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.tmp = l0.Target;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_15_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:True();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Stop();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.pos = l0.yPos;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0:Sub();
end;

function export:f_38_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
end;

function export:f_38_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:False();
end;

function export:f_42_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_42_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = self.xLimit;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_41_Yes;
    l0.No = self.f_41_No;
    l0:Float();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.limit = l0.yPos;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = self.yLimit;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:FromFloat();
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.seconds = self.StopTime;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

function export:en_45()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_45_Out;
end;

function export:en_33()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0.A = self.pos;
    l0.B = self.limit;
    l0._graph = self;
    l0.Out = self.f_33_Out;
end;

function export:en_40()
    local l0;
    l0 = self[40];
    l0.seconds = 1;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.seconds = self.RunningTime;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.FlameJetParticle;
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = Globals.ULC_020_MAIN.ePlayer;
    l0._graph = self;
    l0.Out = self.f_26_Out;
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = Globals.ULC_020_MAIN.ePlayer;
    l0._graph = self;
    l0.Out = self.f_31_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
