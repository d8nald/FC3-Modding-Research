-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_130/jas_130_b43c/jas_130_b43c.domino.xml
-- User graph: CIN_Rescue_Liza
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
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.End = DummyFunction;
    self.MetasequenceID = 0;
    self.False = false;
    self[7] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.Holstered = DummyFunction;
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
    self[8] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[3] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.SignalReceived = self.f_3_SignalReceived;
    self[10] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[6] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.Stopped = self.f_6_Stopped;
    l0.Skipped = self.f_6_Skipped;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[4];
    l0.seconds = 0.6;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:In();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_8_Out()
    self = self._graph;
    self:End();
end;

function export:f_3_SignalReceived()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Skip();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.MetasequenceID = l0.ID;
    self:en_6();
    l0 = self[6];
    l0:Play();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
    l0 = self[3];
    l0:Disable();
end;

function export:f_6_Skipped()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 0.4;
    l0:Start();
    l0 = self[3];
    l0:Enable();
end;

function export:f_6_Stopped()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetasequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2074937681871115893";
    l0.SequenceFile = "Sequences/fc3_main/jas_130_b43c/JAS_130_B43C_Untie_Liza.seq";
end;

-- Empty out anchor definitions
function export:End()
    
end;
_compilerVersion = 24;
