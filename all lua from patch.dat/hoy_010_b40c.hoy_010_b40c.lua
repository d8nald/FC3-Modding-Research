-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/hoy_010/hoy_010_b40c/hoy_010_b40c.domino.xml
-- User graph: HOY_010_B40C
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/AI/PawnRelationshipModifier.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Sam = nil;
    self.MetaSequenceID = 0;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[2];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[13] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = self.f_12_Started;
    l0.Finished = self.f_12_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Complete();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:Pop();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SceneEntity = "2075792649440208819";
    l0.SequenceFile = "Sequences/fc3_main/HOY_010_B40C/HOY_010_B40C_paper.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PawnRelationshipModifier.lua")];
    l0.AI = "#E6134818";
    l0.Blue = nil;
    l0.Red = true;
    l0.Green = nil;
    l0.Grey = nil;
    l0.Neutral = nil;
    l0.Yellow = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:SetAllied();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Send();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
