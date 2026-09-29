-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: Objective
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
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00199c7b]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Complete = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074958628023963442";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_3_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:PoleDestoryed()
    local l0;
    l0 = self[4];
    l0.triggerId = "2076687070354504835";
    l0:Enable();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_030_OBJ_Solved_WaterPuzzle",
        id = "90978",
    };
    l0:SetMissionObjective();
end;

function export:f_1_Removed()
    self = self._graph;
    self:Complete();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_030_OBJ_Enter_PuzzleRoom",
        id = "90977",
    };
    l0:SetMissionObjective();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2075204646640568432";
    l0:Enable();
end;

function export:f_3_Added()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076122330045685811";
    l0:Enable();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Entity = "2077085624870978199";
    l0.SoundId = "0x00199c7b";
    l0.SoundType = 12;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074958628023963442";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_1_Removed;
    l0:Remove();
end;

-- Empty out anchor definitions
function export:Complete()
    
end;
_compilerVersion = 24;
