-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_Explosion
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
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_OilFieldExplosions.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cbox:RegisterBox("Domino/System/StimsEmitter.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00116258]], "CSoundResource");
        cbox:LoadResource([[sndres0x00116253]], "CSoundResource");
        cbox:LoadResource([[sndres0x00116236]], "CSoundResource");
        cbox:LoadResource([[sndres0x00116254]], "CSoundResource");
        cbox:LoadResource([[sndres0x00116252]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[76] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Started = self.f_76_Started;
    l0.Finished = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Started = self.f_44_Started;
    l0.Finished = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Started = self.f_73_Started;
    l0.Finished = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Started = self.f_74_Started;
    l0.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[70] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
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
    self[35] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Started = self.f_35_Started;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[75] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Started = self.f_75_Started;
    l0.Finished = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_58_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[71] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[71];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[86] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Started = self.f_86_Started;
    l0.Finished = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_55_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = self.f_14_Started;
    l0.Finished = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Started = self.f_56_Started;
    l0.Finished = DummyFunction;
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
    self[72] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
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
    self[82] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Started = self.f_25_Started;
    l0.Finished = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_31_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Started = self.f_20_Started;
    l0.Finished = DummyFunction;
    self[51] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_OilFieldExplosions.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = self.f_51_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Bomb01()
    local l0;
    l0 = self[14];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x00116236";
    l0.SoundType = 10;
    l0:Play();
end;

function export:Bomb02()
    local l0;
    l0 = self[25];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x00116254";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806686146209657";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetEnabled();
end;

function export:Bomb03()
    local l0;
    l0 = self[35];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x00116252";
    l0.SoundType = 10;
    l0:Play();
end;

function export:Bomb04()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806718530430842";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:SetEnabled();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "27159873786099583";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_52_Disabled;
    l0:Disable();
    l0 = self[19];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_76_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076580714370841455";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_97_Out;
    l0:SetDisabled();
end;

function export:f_48_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "36167073040939339";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_96_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076486796518152407";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_95_Removed;
    l0:Remove();
end;

function export:f_67_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "54181471552388845";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_44_Started()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0.Entity = "2076486510439347617";
    l0.SoundId = "0x00116258";
    l0.SoundType = 0;
    l0:Play();
end;

function export:f_57_Started()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.Entity = "2076485903758421778";
    l0.SoundId = "0x00116253";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076580642495150956";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_80_Out;
    l0:SetEnabled();
end;

function export:f_95_Removed()
    local l0;
    self = self._graph;
    l0 = self[76];
    l0.Entity = "2076485892299583246";
    l0.SoundId = "0x00116253";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:In();
    l0 = self[55];
    l0.seconds = 0.3;
    l0:Start();
end;

function export:f_8_Started()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0.Entity = "2076485542542864124";
    l0.SoundId = "0x00116252";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Play();
    l0 = self[10];
    l0.seconds = 0.8;
    l0:Start();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055332617654";
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:SetDamageable();
end;

function export:f_73_Started()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Start();
end;

function export:f_74_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076500378542684936";
    l0._graph = self;
    l0.Started = self.f_85_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.seconds = 1.3;
    l0:Start();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783331934381917";
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_85_Started()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.Entity = "2076500378544782092";
    l0.SoundId = "0x00116252";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0.Entity = "2076485574981611268";
    l0.SoundId = "0x00116253";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.Entity = "2076485493459021560";
    l0.SoundId = "0x00116254";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075825378779215116";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_47_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806718530430842";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:SetDisabled();
end;

function export:f_59_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.33;
    l0._graph = self;
    l0.Out = self.f_91_Out;
    l0:SendEvent();
end;

function export:f_24_Started()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Entity = "2076485492529983220";
    l0.SoundId = "0x00116254";
    l0.SoundType = 10;
    l0:Play();
    l0 = self[16];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.seconds = 0.7;
    l0:Start();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075806602213992305";
    l0._graph = self;
    l0.Started = self.f_36_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077565094455207046";
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:Enable();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "9145498352673098";
    l0._graph = self;
    l0.Activated = self.f_48_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_35_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.33;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806524747294575";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:SetEnabled();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783332938917727";
    l0._graph = self;
    l0.Started = self.f_8_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806524747294575";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_60_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "45174295371674957";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806686146209657";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:SetDisabled();
end;

function export:f_75_Started()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0:Start();
end;

function export:f_58_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783347862251369";
    l0._graph = self;
    l0.Started = self.f_59_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0:SetDamageable();
end;

function export:f_79_DamageableChanged()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0:NextState();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076580714370841455";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_81_Out;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055334714807";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetDamageable();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806579134834544";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:SetEnabled();
end;

function export:f_68_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "36167096116916441";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_77_Disabled;
    l0:Disable();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078532860645486112";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_86_Started()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Start();
end;

function export:f_52_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "138299097897186";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:Disable();
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075816209216973113";
    l0._graph = self;
    l0.Started = self.f_57_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077565106056651921";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_66_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "54181494626421426";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_14_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.33;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783311629756240";
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "18152697607426186";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_60_Disabled;
    l0:Disable();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783321970812758";
    l0._graph = self;
    l0.Started = self.f_23_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_56_Started()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_77_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "63188693881167369";
    l0._graph = self;
    l0.Activated = self.f_67_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076580642495150956";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_96_Out;
    l0:SetDisabled();
end;

function export:f_94_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077565094935454862";
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:Enable();
end;

function export:f_19_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783315394144082";
    l0._graph = self;
    l0.Started = self.f_5_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_81_Out()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:In();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783340805334883";
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_38_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2074907408425027696";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = self[31];
    l0:Start();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075783055332617654";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077565090168628351";
    l0._graph = self;
    l0.Out = self.f_99_Out;
    l0:Enable();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075783055334714807";
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:Enable();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076486804202117339";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_94_Removed;
    l0:Remove();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.33;
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:SendEvent();
    l0 = self[41];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x00116253";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_23_Started()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.Entity = "2076485492529983220";
    l0.SoundId = "0x00116254";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783346708817767";
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.Entity = "2076484624218858273";
    l0.SoundId = "0x00116236";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075806603237402483";
    l0._graph = self;
    l0.Started = self.f_37_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "27159896862171409";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_66_Disabled;
    l0:Disable();
    l0 = self[20];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x00116252";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[71];
    l0.Entity = "2076484624871072549";
    l0.SoundId = "0x00116236";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075806603702970229";
    l0._graph = self;
    l0.Started = self.f_38_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_37_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078532860645486112";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetEnabled();
    l0 = self[40];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_25_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783322436380504";
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.33;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "45174272297631438";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_68_Disabled;
    l0:Disable();
    l0 = self[3];
    l0:Start();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0.Entity = "2076485551357193984";
    l0.SoundId = "0x00116252";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_31_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075806579134834544";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:SetDisabled();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807288163047889";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:f_36_Started()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.seconds = 0.4;
    l0:Start();
    self:en_11();
    l0 = self[11];
    l0:Play();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2077565094750905482";
    l0._graph = self;
    l0.Out = self.f_100_Out;
    l0:Enable();
end;

function export:f_20_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783333293336417";
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.Entity = "2076294034229306069";
    l0.SoundId = "0x00116258";
    l0.SoundType = 0;
    l0:Play();
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Entity = "2076484622849418013";
    l0.SoundId = "0x00116236";
    l0.SoundType = 10;
end;

function export:en_79()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2075816199333095734";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_79_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
