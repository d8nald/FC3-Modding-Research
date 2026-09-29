-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: BAM_060_BambiIntroSequence
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Done = DummyFunction;
    self.MetasequenceID = 0;
    self[11] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0.Holstered = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Done = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[13];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "startBeforeKnifeFight",
            "HideBambi4",
            "FadeOutStart",
        },
    };
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_13_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["startBeforeKnifeFight"] = self.f_13_SPOut__startBeforeKnifeFight_;
    l0.SPOut["HideBambi4"] = self.f_13_SPOut__HideBambi4_;
    l0.SPOut["FadeOutStart"] = self.f_13_SPOut__FadeOutStart_;
    self[12] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_12_Out;
    self[4] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[16] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0.True = self.f_16_True;
    l0.False = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[17] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_17_True;
    l0.False = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Done = DummyFunction;
    l0.Out = self.f_3_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[11];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075501824267264750";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_8_Removed;
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077937726415460020";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.entityId = "2077246675415484328";
    l0:In();
end;

function export:f_13_SPOut__FadeOutStart_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "bloomfadeetowhite";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_13_SPOut__HideBambi4_()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Assassinate();
end;

function export:f_13_SPOut__startBeforeKnifeFight_()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:BeforeKnifeFight();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_BAM060_BeforeKnifeFight";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = true;
    l0.KeepWeaponHolstered = true;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    self.MetasequenceID = l0.ID;
    l0 = self[13];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2075395202708676878";
    l0.SequenceFile = "Sequences/fc3_main/BAM_060_B10C/BAM_060_B10C.seq";
    l0:Play();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetasequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Stop();
end;

function export:f_16_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077246675415484328";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "radar|reticule|ammo|objectiveindicator|objective";
    l0:In();
end;

function export:f_6_Out()
    self = self._graph;
    self:Done();
end;

function export:f_17_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077246675415484328";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:On();
end;

function export:f_8_Removed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.entityId = "2077246675415484328";
    l0:In();
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 24;
