-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: OpenTunnelDoor
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
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/UsableEntityListener.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0019c100]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.FirstOpened = DummyFunction;
    self.Meta = 0;
    self.Meta2 = 0;
    self.IsFirstWaterUp = false;
    self[23] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0.Holstered = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_5_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_4_OnUse;
    self[27] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = self.f_12_SPOut__End_;
    self[3] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[20] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "Shake01",
            "shake02",
            "shake03",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["Shake01"] = DummyFunction;
    l0.SPOut["shake02"] = DummyFunction;
    l0.SPOut["shake03"] = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_2_OnUse;
    self[11] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "Shake01",
            "shake02",
            "shake03",
        },
    };
    l0.Started = self.f_11_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["Shake01"] = self.f_11_SPOut__Shake01_;
    l0.SPOut["shake02"] = self.f_11_SPOut__shake02_;
    l0.SPOut["shake03"] = self.f_11_SPOut__shake03_;
    self[28] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[25] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0.Holstered = DummyFunction;
    self[21] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[9] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:FirstWaterUp()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:True();
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076783877818422282";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076783848378607296";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:Enable();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.entityId = "2074652805414569085";
    l0:Enable();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.entityId = "2074652805628478713";
    l0:Enable();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074652805628478713";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SetDisabled();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Stop();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
    l0 = self[11];
    l0.SceneEntity = "2074655809163245334";
    l0.SequenceFile = "Sequences/fc3_main/SHA_Quest/Water_Part2/Water_Part2B01/TunnelDoorOpen_2.seq";
    l0:Play();
end;

function export:f_4_OnUse()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.SoundId = "0x0019c100";
    l0.SoundType = 17;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076783848378607296";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_22_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.SceneEntity = "2078027581172494187";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b50/OpenDoor_PlayDust.seq";
    l0:PlayFromStart();
end;

function export:f_22_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.SceneEntity = "2078027582112018287";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b50/OpenDoor_PlayBubble.seq";
    l0:Play();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta2;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Stop();
end;

function export:f_12_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076642850763729357";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_36_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.Meta2 = l0.ID;
    l0 = self[6];
    l0.MetaSequenceID = self.Meta2;
    l0.SceneEntity = "2076313147236519008";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b40/OpenTunnelDoor_Jason.seq";
    l0:Play();
end;

function export:f_2_OnUse()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076783877818422282";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
    l0 = self[27];
    l0.SoundId = "0x0019c100";
    l0.SoundType = 17;
    l0:Play();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsFirstWaterUp = l0.Target;
end;

function export:f_11_SPOut__Shake01_()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0:SendEvent();
end;

function export:f_11_SPOut__shake02_()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0:SendEvent();
end;

function export:f_11_SPOut__shake03_()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0:SendEvent();
end;

function export:f_11_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsFirstWaterUp;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_22_A_is_True;
    l0.A_is_False = self.f_22_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SceneEntity = "2074655855304783640";
    l0.SequenceFile = "Sequences/fc3_main/SHA_Quest/Water_Part2/Water_Part2B01/TunnelDoorOpen_3.seq";
    l0:Play();
    l0 = self[26];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_21_Out()
    self = self._graph;
    self:FirstOpened();
end;

function export:f_36_Disabled()
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

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074652805414569085";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetDisabled();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    self.Meta = l0.ID;
    l0 = self[5];
    l0.MetaSequenceID = self.Meta;
    l0.SceneEntity = "2076313188772711522";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b40/OpenTunnelDoor_Jason.seq";
    l0:Play();
end;

function export:en_14()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.1;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:FirstOpened()
    
end;
_compilerVersion = 24;
