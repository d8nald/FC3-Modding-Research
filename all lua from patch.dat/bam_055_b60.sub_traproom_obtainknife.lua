-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_TrapRoom_ObtainKnife
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
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.SP_Out = DummyFunction;
    self.MetaCoffin = 0;
    self[2] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[4] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Holstered = self.f_4_Holstered;
    self[5] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[3] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "StartSpark",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["StartSpark"] = self.f_3_SPOut__StartSpark_;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[4];
    l0.ActionMapName = "narrative_interact_qte";
    l0:HolsterWeapon();
end;

function export:f_2_Out()
    self = self._graph;
    self:Out();
end;

function export:f_4_Holstered()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.MetaCoffin = l0.ID;
    l0 = self[3];
    l0.MetaSequenceID = self.MetaCoffin;
    l0.SceneEntity = "2076110745940009390";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb06/b06_obtainkey.seq";
    l0:PlayFromStart();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaCoffin;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Stop();
end;

function export:f_3_SPOut__StartSpark_()
    self = self._graph;
    self:SP_Out();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:SP_Out()
    
end;
_compilerVersion = 24;
