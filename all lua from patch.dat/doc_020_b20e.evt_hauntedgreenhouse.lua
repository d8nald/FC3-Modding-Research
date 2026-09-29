-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_HauntedGreenhouse
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_WindowExplosion.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverrideGreenhouse.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x000A94B2]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164caf.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164f97.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00164827]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164d8b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00164caf]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c32f6.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x000A93AD]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A94A3]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A95DC]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c3300.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x000a95e0]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A93AE]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A94A1]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164f97]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a95df]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164827.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c32f6]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A93AC]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A967C]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c32d3]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c3300]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164d8b]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A94A2]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c32d3.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.TurnOffDrunkWalk = DummyFunction;
    self.PlayerInsideGreenhouse = DummyFunction;
    self.PlayerIsInDarkRoom = DummyFunction;
    self.ePlayer = nil;
    self.iMetaID02 = 0;
    self.iMetaID01 = 0;
    self[31] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_WindowExplosion.lua");
    l0 = self[31];
    l0._graph = self;
    self[58] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
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
    self[37] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[37];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "GH_StartPOS",
            "GH_POS2",
            "GH_POS3",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["GH_StartPOS"] = DummyFunction;
    l0.SPOut["GH_POS2"] = DummyFunction;
    l0.SPOut["GH_POS3"] = self.f_37_SPOut__GH_POS3_;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_29_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[62] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverrideGreenhouse.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_22_Finished;
    l0.FinishedInterrupted = self.f_22_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "GH_StartPOS",
            "GH_POS2",
            "GH_POS3",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["GH_StartPOS"] = DummyFunction;
    l0.SPOut["GH_POS2"] = self.f_5_SPOut__GH_POS2_;
    l0.SPOut["GH_POS3"] = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "DoorOpen",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_20_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["DoorOpen"] = self.f_20_SPOut__DoorOpen_;
    self[38] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[38];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "GH_StartPOS",
            "GH_POS2",
            "GH_POS3",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_38_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["GH_StartPOS"] = DummyFunction;
    l0.SPOut["GH_POS2"] = DummyFunction;
    l0.SPOut["GH_POS3"] = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.ResetOut = DummyFunction;
    self[75] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_75_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_78_Finished;
    l0.FinishedInterrupted = self.f_78_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[64] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[64];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_64_Out_0;
    l0.ResetOut = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Started = self.f_52_Started;
    l0.Finished = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_19_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[71] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[71];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_71_Out;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_49_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_50_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[61] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverrideGreenhouse.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_73_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[60] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverrideGreenhouse.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[45] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[63];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_63_Out_0;
    l0.ResetOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "GH_StartPOS",
            "GH_POS2",
            "GH_POS3",
        },
    };
    l0.Started = self.f_4_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["GH_StartPOS"] = self.f_4_SPOut__GH_StartPOS_;
    l0.SPOut["GH_POS2"] = DummyFunction;
    l0.SPOut["GH_POS3"] = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[28];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "OpenDoor",
            "CloseDoor",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_28_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["OpenDoor"] = self.f_28_SPOut__OpenDoor_;
    l0.SPOut["CloseDoor"] = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[69] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[69];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_69_Out;
    self[57] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Started = self.f_53_Started;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:PlayDialog()
    local l0;
    l0 = self[71];
    l0:Condition(0);
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.triggerId = "2073364939755519788";
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2073306425406267566";
    l0:Enable();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164827";
    l0:ForcePlay_Priority();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073459967563679040";
    l0._graph = self;
    l0.Started = self.f_33_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.iMetaID01 = l0.ID;
    self:en_4();
    l0 = self[4];
    l0:PlayFromStart();
end;

function export:f_66_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c32f6";
    l0.Supersede = true;
    l0:ForcePlay_Priority();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.triggerId = "2073318066166441207";
    l0:Enable();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.triggerId = "2073401887582854122";
    l0:Enable();
end;

function export:f_37_SPOut__GH_POS3_()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = self[37];
    l0:Pause();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Haunted greenhouse in POS03.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[71];
    l0:Condition(1);
    l0 = self[61];
    l0:Start();
    l0 = self[56];
    l0.Entity = "2073323093647999725";
    l0.SoundId = "0x000A93AC";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[45];
    l0.Entity = "2073765103070622633";
    l0.SoundId = "0x000A967C";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[44];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a95df";
    l0.SoundType = 0;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073306425406267566";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_DOC020_OnDrugs_Negative";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    self:en_5();
    l0 = self[5];
    l0:Play();
end;

function export:f_29_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c3300";
    l0:ForcePlay_Priority();
end;

function export:f_22_Finished()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0:In(0);
end;

function export:f_22_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0:In(0);
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[11];
    l0:In();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138226480296123";
    l0.missionLayerId = "27159829640915250";
    l0._graph = self;
    l0.Activated = self.f_42_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_5_SPOut__GH_POS2_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Haunted greenhouse in POS2.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_5();
    l0 = self[5];
    l0:Pause();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0.triggerId = "2073681797696213161";
    l0:Enable();
end;

function export:f_20_Finished()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.Entity = "2073462682998031671";
    l0.SoundId = "0x000A94B2";
    l0.SoundType = 0;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.iMetaID02;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:Stop();
end;

function export:f_20_SPOut__DoorOpen_()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:Pause();
    l0 = self[8];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073501329577232998";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:SetEnabled();
end;

function export:f_38_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.iMetaID01;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Haunted greenhouse animation finished.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.Entity = "2073514095698519346";
    l0.SoundId = "0x000A93AD";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[60];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073318066166441207";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:SetEnabled();
    self:en_37();
    l0 = self[37];
    l0:Play();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164caf";
    l0:ForcePlay_Priority();
end;

function export:f_75_Finished()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164f97";
    l0:ForcePlay_Priority();
end;

function export:f_42_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073681797696213161";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073401887582854122";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetEnabled();
end;

function export:f_78_Finished()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:In(0);
end;

function export:f_78_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:In(0);
end;

function export:f_16_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.Entity = "2073459730684063655";
    l0.SoundId = "0x000A94A1";
    l0.SoundType = 0;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138226480296123";
    l0.missionLayerId = "138233206599626";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_32_Disabled;
    l0:Disable();
end;

function export:f_64_Out_0()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164d8b";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_33_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2073318435005151174";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_16_Destroyed;
    l0:Destroy();
end;

function export:f_52_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2078505449828666328";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.triggerId = "2073611371909540357";
    l0:Enable();
end;

function export:f_27_Out()
    self = self._graph;
    self:PlayerIsInDarkRoom();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2073101807596342485";
    l0:Enable();
end;

function export:f_19_Enter()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.Entity = "2073462682998031671";
    l0.SoundId = "0x000A94A2";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[21];
    l0:In();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.Entity = "2073514311879258008";
    l0.SoundId = "0x000A93AE";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[38];
    l0.MetaSequenceID = self.iMetaID01;
    l0.SceneEntity = "2073305571750059846";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_HauntedGreenHouse.seq";
    l0:Play();
    l0 = self[62];
    l0:Start();
end;

function export:f_49_Finished()
    local l0;
    self = self._graph;
    l0 = self[69];
    l0:Condition(1);
end;

function export:f_50_Enter()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:Play();
end;

function export:f_32_Disabled()
    self = self._graph;
    self:Completed();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:PlayerInsideGreenhouse();
    l0 = self[69];
    l0:Condition(0);
    l0 = self[54];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a95e0";
    l0.SoundType = 0;
    l0:Play();
end;

function export:f_73_Enter()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:Explode();
end;

function export:f_13_Enter()
    local l0;
    self = self._graph;
    self:TurnOffDrunkWalk();
    self:en_28();
    l0 = self[28];
    l0:Play();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.triggerId = "2073501329577232998";
    l0:Enable();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    self.iMetaID02 = l0.ID;
    self:en_20();
    l0 = self[20];
    l0:PlayFromStart();
end;

function export:f_63_Out_0()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c32d3";
    l0:ForcePlay_Priority();
end;

function export:f_4_SPOut__GH_StartPOS_()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Pause();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Haunted greenhouse into initial position.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_4_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073101807596342485";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetEnabled();
end;

function export:f_28_Finished()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.Entity = "2073459730684063655";
    l0.SoundId = "0x000A95DC";
    l0.SoundType = 0;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.iMetaID02;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Final door closed.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_28_SPOut__OpenDoor_()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.triggerId = "2078531164338963241";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073364939755519788";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:SetEnabled();
    self:en_28();
    l0 = self[28];
    l0:Pause();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    self.iMetaID02 = l0.ID;
    self:en_28();
    l0 = self[28];
    l0:PlayFromStart();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073611371909540357";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:SetEnabled();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.Entity = "2073459730684063655";
    l0.SoundId = "0x000A94A3";
    l0.SoundType = 0;
    l0:Play();
    l0 = self[26];
    l0:In();
end;

function export:f_53_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2078505471817305050";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_37()
    local l0;
    l0 = self[37];
    l0.MetaSequenceID = self.iMetaID01;
    l0.SceneEntity = "2073305571750059846";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_HauntedGreenHouse.seq";
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.MetaSequenceID = self.iMetaID01;
    l0.SceneEntity = "2073305571750059846";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_HauntedGreenHouse.seq";
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.MetaSequenceID = self.iMetaID02;
    l0.SceneEntity = "2073402072836873209";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_Doors.seq";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.MetaSequenceID = self.iMetaID01;
    l0.SceneEntity = "2073305571750059846";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_HauntedGreenHouse.seq";
end;

function export:en_28()
    local l0;
    l0 = self[28];
    l0.MetaSequenceID = self.iMetaID02;
    l0.SceneEntity = "2073402072836873209";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_Doors02.seq";
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:TurnOffDrunkWalk()
    
end;
function export:PlayerInsideGreenhouse()
    
end;
function export:PlayerIsInDarkRoom()
    
end;
_compilerVersion = 24;
