-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: __RescueKeithNIS
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EnableAbilityUpgrade.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Done = DummyFunction;
    self.MetasequenceID = 0;
    self[7] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[1] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Holstered = DummyFunction;
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
    self[4] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[2] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "StartFadeOut",
        },
    };
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["StartFadeOut"] = self.f_2_SPOut__StartFadeOut_;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[1];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.MetasequenceID = l0.ID;
    l0 = self[2];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2076223983751021914";
    l0.SequenceFile = "Sequences/fc3_main/bam_060_b20e/BAM_060_B20E_talkKeith.seq";
    l0:Play();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/EnableAbilityUpgrade.lua")];
    l0.pawn = nil;
    l0.Ability = "BossBuck";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In();
end;

function export:f_4_Out()
    self = self._graph;
    self:Done();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Start();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetasequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Stop();
end;

function export:f_2_SPOut__StartFadeOut_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 0.4;
    l0:Start();
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 24;
