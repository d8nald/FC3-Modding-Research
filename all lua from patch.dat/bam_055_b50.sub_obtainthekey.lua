-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: Sub_ObtainTheKey
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
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001651ca.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018b105]], "CSoundResource");
        cbox:LoadResource([[sndres0x001aeef8]], "CSoundResource");
        cbox:LoadResource([[sndres0x001651ca]], "CSoundResource");
        cbox:LoadResource([[sndres0x001839f3]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018b105.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0019c100]], "CSoundResource");
        cbox:LoadResource([[sndres0x001aeef9]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Player = nil;
    self.MetaStatue = 0;
    self[33] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_25_Finished;
    self[20] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_20_Use;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_41_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_26_Finished;
    self[42] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[29] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_29_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[49];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "Play_Stinger",
        },
    };
    l0.Started = self.f_49_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_49_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["Play_Stinger"] = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_11_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_25_Finished()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.Entity = "2076976567233301955";
    l0.SoundId = "0x001aeef8";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_20_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351989091505343";
    l0._graph = self;
    l0.Enabled = self.f_21_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
    l0 = self[24];
    l0.textId = {
        section = "Hints",
        item = "BAM_055_TEMP_OpenSecretDoor",
        id = "119683",
    };
    l0.displaySlotId = 1;
    l0.interruptible = true;
    l0:DisplayText();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075426947900382453";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076686735468668318";
    l0.R = 1;
    l0.G = 0.9;
    l0.B = 0.6;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Disable();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.Group = self.Player;
    l0.SoundId = "0x001651ca";
    l0:ForcePlay_Priority();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.triggerId = "2076976632213562085";
    l0:Enable();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740380159648784";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109285200241125";
    l0._graph = self;
    l0.Started = self.f_60_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740374839174156";
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_13_PrintedToScreen()
    self = self._graph;
    self:Out();
end;

function export:f_60_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109290688487919";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076686739419702688";
    l0.R = 1;
    l0.G = 0.9;
    l0.B = 0.6;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_41_Enter()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.Group = self.Player;
    l0.SoundId = "0x0018b105";
    l0:ForcePlay_Priority();
end;

function export:f_26_Finished()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Entity = "2076976574153903557";
    l0.SoundId = "0x001aeef9";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076575866510386023";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_35_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351996905493697";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_30_Started()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_27_Enabled()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.Entity = "2076976567233301955";
    l0.SoundId = "0x001839f3";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.MetaStatue = l0.ID;
    l0 = self[11];
    l0.MetaSequenceID = self.MetaStatue;
    l0.SceneEntity = "2075995708571268281";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb05/b05_mechanicdoor_jason.seq";
    l0:PlayFromStart();
    l0 = self[49];
    l0.SceneEntity = "2075995708571268281";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb05/b05_mechanicdoor.seq";
    l0:PlayFromStart();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.triggerId = "2075426947900382453";
    l0:Enable();
    l0 = self[7];
    l0.triggerId = "2076675759069467433";
    l0:Enable();
    l0 = self[4];
    l0.triggerId = "2075347868744423823";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:In();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:In();
end;

function export:f_21_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351996905493697";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_29_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109281169514971";
    l0._graph = self;
    l0.Started = self.f_30_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109272426488281";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_28_Enabled()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Entity = "2076976574153903557";
    l0.SoundId = "0x001839f3";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_49_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Hidden door openning";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = self.f_13_PrintedToScreen;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351989091505343";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_35_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_49_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_FC_GenericExplorationC";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = self[37];
    l0.SoundId = "0x0019c100";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:CinematicMode();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = "2078291731083706616";
    l0.EntityB = "2076690585460151219";
    l0.BoneName = "SingleBone";
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:Bind();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:NormalMode();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaStatue;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:Stop();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[41];
    l0.triggerId = "2076274568003103514";
    l0:Enable();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076686618296591758";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = "2078291731083706616";
    l0.EntityB = "2076618106286908424";
    l0.BoneName = "SingleBone";
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Bind();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076465797168899947";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_9_Disabled;
    l0:SetDisabled();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076716452886352765";
    l0._graph = self;
    l0.Enabled = self.f_27_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076109281171612127";
    l0._graph = self;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
