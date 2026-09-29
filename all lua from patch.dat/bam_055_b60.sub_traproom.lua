-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_TrapRoom
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_Obj.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.PlayMusic.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundAmbianceOverride.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningCoffin.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_ObtainKnife.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018766d]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001953e9.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00195448.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00195448]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018766c]], "CSoundResource");
        cbox:LoadResource([[sndres0x001953e9]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018778c]], "CSoundResource");
        cbox:LoadResource([[sndres0x00195466]], "CSoundResource");
        cbox:LoadResource([[sndres0x00187658]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00195466.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00187659]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018765a]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018765b]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Player = nil;
    self.InitFire = true;
    self.MetaCoffin = 0;
    self[29] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = self.f_33_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_33_Use;
    self[59] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_59_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[34] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Complete = self.f_34_Complete;
    l0.Out = self.f_34_Out;
    l0.SmokeActived = self.f_34_SmokeActived;
    l0.FireActived = self.f_34_FireActived;
    self[24] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Enabled = self.f_46_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_46_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_66_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_ObtainKnife.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0.SP_Out = self.f_27_SP_Out;
    self[42] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Complete = self.f_42_Complete;
    l0.Out = self.f_42_Out;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = DummyFunction;
    self[36] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Complete = self.f_36_Complete;
    l0.Out = self.f_36_Out;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = self.f_36_FireActived;
    self[47] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Enabled = self.f_47_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_47_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_41_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[97] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[44] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Complete = self.f_44_Complete;
    l0.Out = self.f_44_Out;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = self.f_44_FireActived;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_22_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[107] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[107];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_107_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_57_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[64] = cbox:CreateBox("Domino/System/SoundAmbianceOverride.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Started = self.f_64_Started;
    l0.Stopped = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_49_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_Obj.lua");
    l0 = self[28];
    l0._graph = self;
    self[26] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningCoffin.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[77] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[40] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Complete = self.f_40_Complete;
    l0.Out = self.f_40_Out;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = self.f_40_FireActived;
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
    self[43] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Complete = self.f_43_Complete;
    l0.Out = DummyFunction;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "MidPoint",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["MidPoint"] = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Finished = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = self.f_48_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_48_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Started = self.f_74_Started;
    l0.Finished = DummyFunction;
    self[38] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Prefab_Dragon.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Complete = self.f_38_Complete;
    l0.Out = self.f_38_Out;
    l0.SmokeActived = DummyFunction;
    l0.FireActived = DummyFunction;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.PlayMusic.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[98] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Started = DummyFunction;
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
    self[89] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_89_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[39] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_BurningGround.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_82_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Enabled = self.f_45_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_45_Enter;
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
    l0.Out = self.f_32_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.SceneEntity = "2077543995512203191";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb06/b06_crackdoor.seq";
    l0:PlayFromStart();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_74();
    l0 = self[74];
    l0:Play();
    l0 = self[82];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = self[98];
    l0:Stop();
    self:en_74();
    l0 = self[74];
    l0:Stop();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = self[38];
    l0:In();
    self:en_36();
    l0 = self[36];
    l0:In();
    self:en_42();
    l0 = self[42];
    l0:In();
    self:en_34();
    l0 = self[34];
    l0:In();
    self:en_40();
    l0 = self[40];
    l0:In();
    self:en_43();
    l0 = self[43];
    l0:In();
    self:en_44();
    l0 = self[44];
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[107];
    l0:In(0);
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.Group = self.Player;
    l0.SoundId = "0x001953e9";
    l0:ForcePlay_Priority();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:Deactive_Sound();
    self:en_38();
    l0 = self[38];
    l0:Deactive_Sound();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:SmokeOn();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_33_Enabled()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.triggerId = "2076548389301931278";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_33_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_68_Out_0;
    l0.Out[1] = self.f_68_Out_1;
    l0:In();
    l0 = self[27];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076772406587827283";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_59_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "2078044916438542566";
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:Damage();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:In();
    l0 = self[89];
    l0.triggerId = "2076841025306975401";
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:In();
end;

function export:f_34_Complete()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_34_FireActived()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013839571463341";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:SmokeOn();
end;

function export:f_34_SmokeActived()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.2;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:SendEvent();
    l0 = self[28];
    l0:Obj_2nd();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In();
    l0 = self[59];
    l0.seconds = 3;
    l0:Start();
    l0 = self[45];
    l0.triggerId = "2076093831928916738";
    l0:Enable();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[33];
    l0.triggerId = "2076091922931267686";
    l0:Enable();
end;

function export:f_17_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754164379034646";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_46_Enabled()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.triggerId = "2076093857512074030";
    l0:Enable();
end;

function export:f_46_Enter()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = self[38];
    l0:FireOn();
end;

function export:f_66_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013954778508657";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076700816294553799";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:FireOn();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076091922931267686";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076091954413713512";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_50_Disabled;
    l0:SetDisabled();
end;

function export:f_27_SP_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:In();
end;

function export:f_42_Complete()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2076093858506124082";
    l0.BuringParticle = "2076700878061971657";
    l0.b_Playparticle = true;
    l0:In();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = self[44];
    l0:SmokeOn();
end;

function export:f_36_Complete()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2076093831928916738";
    l0.b_Playparticle = false;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_36_FireActived()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078152966294017045";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = self[38];
    l0:SmokeOn();
end;

function export:f_68_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_FC_GenericExplorationC";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
end;

function export:f_68_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_MIS_Sarcophagus";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_47_Enabled()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.triggerId = "2076093858506124082";
    l0:Enable();
end;

function export:f_47_Enter()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:FireOn();
end;

function export:f_41_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2078028147548275852";
    l0.BuringParticle = "2078028058754860166";
    l0.b_Playparticle = true;
    l0:In();
end;

function export:f_50_Disabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Entity = "2077363527409996296";
    l0.SoundId = "0x0018778c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_44_Complete()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2076093858963303222";
    l0.BuringParticle = "2076700814168041669";
    l0.b_Playparticle = true;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:In();
end;

function export:f_44_FireActived()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078152960593957854";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    self:en_43();
    l0 = self[43];
    l0:FireOn();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:SmokeOn();
end;

function export:f_22_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754150581871634";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_17_Disabled;
    l0:SetDisabled();
end;

function export:f_107_Out_0()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.seconds = 0.6;
    l0:Start();
end;

function export:f_57_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "StopDamg";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_64_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SOUND AMBIANCE 47 STARTED";
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
end;

function export:f_49_Enter()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = self[44];
    l0:FireOn();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_TOMB_Dragon_Fire_Ending";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0:Stop();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:Deactive_fire();
end;

function export:f_16_Stopped()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.seconds = 0.3;
    l0:Start();
end;

function export:f_40_Complete()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2076093857512074030";
    l0.BuringParticle = "2076700812238661827";
    l0.b_Playparticle = true;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_40_FireActived()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.2;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078153006286705753";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    self:en_42();
    l0 = self[42];
    l0:SmokeOn();
end;

function export:f_60_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "2078044914989410532";
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_43_Complete()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.seconds = 0.3;
    l0:Start();
end;

function export:f_6_Finished()
    self = self._graph;
    self:Out();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0.ambianceId = 47;
    l0:Start();
end;

function export:f_15_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076784012161992377";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_16_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.2;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_48_Enabled()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.triggerId = "2076093858963303222";
    l0:Enable();
end;

function export:f_48_Enter()
    local l0;
    self = self._graph;
    self:en_42();
    l0 = self[42];
    l0:FireOn();
end;

function export:f_74_Started()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = self[98];
    l0:Play();
end;

function export:f_38_Complete()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.DelayValue = 0.3;
    l0.TriggerID = "2076093839325571846";
    l0.BuringParticle = "2076700806737832129";
    l0.b_Playparticle = true;
    l0:In();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:SmokeOn();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076783933476849335";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_15_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0.Group = self.Player;
    l0.SoundId = "0x00195448";
    l0:ForcePlay_Priority();
end;

function export:f_89_Enter()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0.Group = self.Player;
    l0.SoundId = "0x00195466";
    l0:ForcePlay_Priority();
end;

function export:f_82_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_45_Enabled()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.triggerId = "2076093839325571846";
    l0:Enable();
end;

function export:f_45_Enter()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:FireOn();
end;

function export:en_34()
    local l0;
    l0 = self[34];
    l0.Prefab = "2076094683259343470";
    l0.BurstStart = "0x00187658";
    l0.Sound_Point = "2077030111388903627";
end;

function export:en_42()
    local l0;
    l0 = self[42];
    l0.Prefab = "2076094715320603309";
    l0.BurstStart = "0x0018765a";
    l0.Sound_Point = "2077030014991214789";
end;

function export:en_36()
    local l0;
    l0 = self[36];
    l0.Prefab = "2076094696077136503";
    l0.BurstStart = "0x0018765a";
    l0.Sound_Point = "2077030004616603839";
end;

function export:en_44()
    local l0;
    l0 = self[44];
    l0.Prefab = "2076094712686580379";
    l0.BurstStart = "0x00187659";
    l0.Sound_Point = "2077030017346316487";
end;

function export:en_40()
    local l0;
    l0 = self[40];
    l0.Prefab = "2076964568149550174";
    l0.BurstStart = "0x0018765b";
    l0.Sound_Point = "2077030012852119747";
end;

function export:en_43()
    local l0;
    l0 = self[43];
    l0.Prefab = "2076964569246360681";
    l0.BurstStart = "0x0018765b";
    l0.Sound_Point = "2077030019875481801";
end;

function export:en_74()
    local l0;
    l0 = self[74];
    l0.Entity = "2077029969441073339";
    l0.SoundId = "0x0018766c";
    l0.SoundType = 11;
end;

function export:en_38()
    local l0;
    l0 = self[38];
    l0.Prefab = "2076964686963702077";
    l0.BurstStart = "0x00187659";
    l0.Sound_Point = "2077030008448100545";
end;

function export:en_98()
    local l0;
    l0 = self[98];
    l0.Entity = "2077029984322463933";
    l0.SoundId = "0x0018766d";
    l0.SoundType = 11;
end;

function export:en_56()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076095041792658089";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
