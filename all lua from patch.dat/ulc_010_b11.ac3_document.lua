-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b11/ulc_010_b11.domino.xml
-- User graph: AC3_Document
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
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.meta = 0;
    self[12] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[9] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[2] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Holstered = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0:Start();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
    l0 = self[5];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076810927899943077";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Play();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    self.meta = l0.ID;
    l0 = self[12];
    l0:In();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Stop();
    l0 = self[6];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Stop();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 1;
    l0:Start();
    l0 = self[11];
    l0:Send();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Disable();
end;

function export:f_6_Out()
    self = self._graph;
    self:Out();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.MetaSequenceID = self.meta;
    l0.SceneEntity = "2076810948414283944";
    l0.SequenceFile = "Sequences/fc3_main/ULC_010/AC3_Document.seq";
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076810927899943077";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
