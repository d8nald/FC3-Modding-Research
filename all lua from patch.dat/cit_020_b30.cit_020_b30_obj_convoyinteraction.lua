-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_OBJ_ConvoyInteraction
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
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[9] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
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
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_2_Use;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[1];
    l0.objectiveId = {
        section = "Objectives",
        item = "CIT_020_OBJ_H",
        id = "126775",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075684079891650520";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_3_Removed;
    l0:Remove();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075684094001289178";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetAsUsable();
end;

function export:f_3_Removed()
    self = self._graph;
    self:Completed();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075684079891650520";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_7_Added;
    l0.Removed = DummyFunction;
    l0:Add();
    self:en_8();
    l0 = self[8];
    l0:Start();
end;

function export:f_7_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075684094001289178";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetEnabled();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2075684094001289178";
    l0:Enable();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Start();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.textId = {
        section = "Hints",
        item = "CIT_020_HINT_ConvoyInteraction",
        id = "148955",
    };
    l0.priority = 1;
    l0.displaySlotId = 1;
    l0.displayTimer = 5;
    l0:DisplayText();
end;

function export:f_2_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075684094001289178";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetDisabled();
    self:en_8();
    l0 = self[8];
    l0:Stop();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.seconds = 10;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
