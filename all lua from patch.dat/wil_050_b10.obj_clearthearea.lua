-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: OBJ_ClearTheArea
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
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001719de.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001719de]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ePlayer = nil;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_2_MemberRemoved;
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
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_3_A_le_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.Out[1] = self.f_4_Out_1;
    l0.Out[2] = self.f_4_Out_2;
    l0:In();
end;

function export:f_2_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[2];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 0;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_3_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "DIE";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001719de";
    l0:ForcePlay_Priority();
end;

function export:f_5_Out_0()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_ClearTheSniperNest",
        id = "43803",
    };
    l0:SetMissionObjective();
end;

function export:f_5_Out_1()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_5_Out_0;
    l0.Out[1] = self.f_5_Out_1;
    l0:In();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_4_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ALLDIE";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:Out();
end;

function export:f_4_Out_2()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 5;
    l0:Start();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.group = "#24E46EBF";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
