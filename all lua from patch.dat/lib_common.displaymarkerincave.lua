-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: DisplayMarkerInCave
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
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetPosition.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ExitedFromCave = DummyFunction;
    self.ePlayer = nil;
    self.xPos = 0;
    self.yPos = 0;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Added = self.f_5_Added;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_6_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
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
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_5_Added()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.objectiveId = {
        section = "Objectives",
        item = "SQC_090_OBJ_30",
        id = "119359",
    };
    l0.FlushPreviousObjectives = true;
    l0:SetMissionObjective();
end;

function export:f_8_Removed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.xPos = l0.xPos;
    self.yPos = l0.yPos;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.xPos;
    l0.B = -4000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_10_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_10_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_6_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075810258883722512";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_8_Removed;
    l0:Remove();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:f_17_A_ge_B()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_17_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.yPos;
    l0.B = 3000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_14_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_14_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_11_A_ge_B()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Stop();
end;

function export:f_11_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.yPos;
    l0.B = 3000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_9_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_9_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.xPos = l0.xPos;
    self.yPos = l0.yPos;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.xPos;
    l0.B = -4000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_17_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_17_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_14_A_ge_B()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_A_lt_B()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_9_A_ge_B()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Stop();
end;

function export:f_9_A_lt_B()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Start();
end;

function export:f_2_A_ge_B()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Start();
end;

function export:f_2_A_lt_B()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Stop();
end;

function export:f_10_A_ge_B()
    self = self._graph;
    self:ExitedFromCave();
end;

function export:f_10_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.yPos;
    l0.B = 3000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_2_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_2_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.xPos = l0.xPos;
    self.yPos = l0.yPos;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.xPos;
    l0.B = -4000;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_11_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_11_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:In();
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Marker = "2075810258883722512";
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.seconds = 3;
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_7_Out;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.seconds = 3;
end;

-- Empty out anchor definitions
function export:ExitedFromCave()
    
end;
_compilerVersion = 24;
