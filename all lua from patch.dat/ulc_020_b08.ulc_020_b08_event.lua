-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b08/ulc_020_b08.domino.xml
-- User graph: ULC_020_B08_Event
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/StimsEmitter.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00199c82]], "CSoundResource");
        cbox:LoadResource([[sndres0x001a4720]], "CSoundResource");
        cbox:LoadResource([[sndres0x00187910]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.MissionStart = DummyFunction;
    self.player = nil;
    self.ULC20_fog = nil;
    self[88] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[88];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_88_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_34_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
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
    self[70] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_70_TimeElapsed;
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
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
    self[67] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_67_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_55_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[92] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_92_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Finished = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[108] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[108];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_50_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_52_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_58_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[111] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[111];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[96] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[86] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_86_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[109] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[109];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[90] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[90];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_90_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_24_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_61_Spawned;
    self[37] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_37_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_18_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[89] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_89_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_88_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_34_Enter()
    local l0;
    self = self._graph;
    l0 = self[109];
    l0:D_Flame();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076798078620289974";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_33_Destroyed;
    l0:Destroy();
end;

function export:f_27_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076742645312399422";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_28_Destroyed;
    l0:Destroy();
end;

function export:f_74_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076870124305917649";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.triggerId = "2076755684686324260";
    l0:Enable();
end;

function export:f_33_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:SendEvent();
end;

function export:f_51_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076841338451530129";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_70_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_75_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076870118761047757";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_10_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "#19570D23";
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:Damage();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:SendEvent();
end;

function export:f_46_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076755454710526141";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_45_Destroyed;
    l0:Destroy();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076772797855598211";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076742728607082559";
    l0._graph = self;
    l0.Started = self.f_31_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076836628195713069";
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_67_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076842295266644226";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_71_Destroyed;
    l0:Destroy();
end;

function export:f_59_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_55_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076743931462172888";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_56_Destroyed;
    l0:Destroy();
end;

function export:f_28_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:SendEvent();
end;

function export:f_92_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.Entity = "2078250826565948809";
    l0.SoundId = "0x001a4720";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_93_Started()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076798092681695198";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076895479886522767";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076785632996255017";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_19_Started()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Entity = "2078304256653274987";
    l0.SoundId = "0x00187910";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[50];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_87_Started()
    local l0;
    self = self._graph;
    l0 = self[88];
    l0.seconds = 3;
    l0:Start();
    l0 = self[17];
    l0.Entity = "2078304358295944904";
    l0.SoundId = "0x00187910";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076659839873853804";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_10_Destroyed;
    l0:Destroy();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
    self:en_68();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_91_Started()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Entity = "2078304703782858606";
    l0.SoundId = "0x00187910";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[90];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076753418233325597";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076753410064918555";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_50_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_26_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.seconds = 5;
    l0:Start();
    l0 = self[96];
    l0.SceneEntity = "2077060889518833485";
    l0.SequenceFile = "Sequences/fc3_main/ulc_020/blocking.seq";
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:SendEvent();
end;

function export:f_52_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076743953977196766";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_54_Destroyed;
    l0:Destroy();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076785632996255017";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076895479886522767";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076798092681695198";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_58_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076758247563339922";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_59_Destroyed;
    l0:Destroy();
end;

function export:f_85_Started()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_86_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_36_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:SendEvent();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076659879799433588";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_7_Destroyed;
    l0:Destroy();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076659885939894647";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_56_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Entity = "2076674212728156256";
    l0.SoundId = "0x00199c82";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_45_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076743762517696615";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_68_Started()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076755270446358639";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076659862374197617";
    l0:Enable();
    l0 = self[34];
    l0.triggerId = "2076743781096366189";
    l0:Enable();
    l0 = self[18];
    l0.triggerId = "2076660718809146233";
    l0:Enable();
    l0 = self[89];
    l0.triggerId = "2076977268111978004";
    l0:Enable();
    l0 = self[1];
    l0.triggerId = "2076659727015618912";
    l0:Enable();
    l0 = self[24];
    l0.triggerId = "2076742584278984761";
    l0:Enable();
    l0 = self[37];
    l0.triggerId = "2076753959095115881";
    l0:Enable();
    l0 = self[67];
    l0.triggerId = "2076842303567171847";
    l0:Enable();
    l0 = self[58];
    l0.triggerId = "2076758252502132885";
    l0:Enable();
    l0 = self[5];
    l0.ReinforcementPoint = "2076659823545428329";
    l0.Battlefield = "2076579676345608954";
    l0.IdleBSR = "2076579676345608954";
    l0.AlertBSR = "2076579676345608954";
    l0.CombatBSR = "2076579676345608954";
    l0:SpawnInRelax();
    l0 = self[52];
    l0.triggerId = "2076743916236849365";
    l0:Enable();
    l0 = self[61];
    l0.ReinforcementPoint = "2076772750269109264";
    l0.Battlefield = "2076579676345608954";
    l0.IdleBSR = "2076579676345608954";
    l0.AlertBSR = "2076579676345608954";
    l0.CombatBSR = "2076579676345608954";
    l0:SpawnInRelax();
end;

function export:f_13_Out()
    self = self._graph;
    self:MissionStart();
end;

function export:f_71_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:SendEvent();
end;

function export:f_16_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:SendEvent();
end;

function export:f_54_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:SendEvent();
end;

function export:f_90_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_91();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_97_Out;
    l0:In();
end;

function export:f_30_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076841376913297815";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_24_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076742562705582134";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_26_Destroyed;
    l0:Destroy();
end;

function export:f_61_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076772797855598211";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_37_Enter()
    local l0;
    self = self._graph;
    l0 = self[108];
    l0:Hurry_Up();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076753973674516590";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_38_Destroyed;
    l0:Destroy();
end;

function export:f_7_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.seconds = 5;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076659885939894647";
    l0._graph = self;
    l0.Started = self.f_36_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[9];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_18_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2078304230912831338";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_16_Destroyed;
    l0:Destroy();
end;

function export:f_38_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_31_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076841361895592340";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.objectiveId = {
        section = "Objectives",
        item = "Find a way to the Upper part of the Rocket Silo",
        id = "125432",
    };
    l0:SetMissionObjective();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076742733363423297";
    l0._graph = self;
    l0.Started = self.f_30_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128848618564389";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128884526000939";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128932842285871";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128842744441635";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128855228787495";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077156435155758349";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128835345689377";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128860580719401";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128828586568479";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077128902741863213";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_73_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2076870125903947477";
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:Enable();
end;

function export:f_89_Enter()
    local l0;
    self = self._graph;
    self:en_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
    self:en_91();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
    l0 = self[111];
    l0:D_Flame();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:SendEvent();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076869014467913862";
    l0._graph = self;
    l0.Started = self.f_74_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076870100964615881";
    l0._graph = self;
    l0.Started = self.f_75_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076869035080820872";
    l0._graph = self;
    l0.Started = self.f_73_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:en_93()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076935971779136473";
    l0._graph = self;
    l0.Started = self.f_93_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076660780622709925";
    l0._graph = self;
    l0.Started = self.f_19_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_87()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076935966131506135";
    l0._graph = self;
    l0.Started = self.f_87_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_48()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076755466379079870";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_91()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076935973266017243";
    l0._graph = self;
    l0.Started = self.f_91_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_85()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076936083733498845";
    l0._graph = self;
    l0.Started = self.f_85_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_68()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076842330450563337";
    l0._graph = self;
    l0.Started = self.f_68_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

function export:en_49()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076755468897759424";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:MissionStart()
    
end;
_compilerVersion = 24;
