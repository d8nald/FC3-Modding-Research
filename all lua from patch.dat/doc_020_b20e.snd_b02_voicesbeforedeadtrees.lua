-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: SND_B02_VoicesBeforeDeadTrees
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c329d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c32fb.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00154be3.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c32fb]], "CSoundResource");
        cbox:LoadResource([[sndres0x00154be3]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c329d]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.ePlayer = nil;
    self[7] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_7_Out_0;
    l0.ResetOut = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_3_Leave;
    l0.Use = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.FinishedInterrupted = self.f_6_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[10];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_10_Out;
    self[5] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_5_Out_0;
    l0.ResetOut = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_8_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.FinishedInterrupted = self.f_4_FinishedInterrupted;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:PreviousDialogPlayed()
    local l0;
    l0 = self[10];
    l0:Condition(0);
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c329d";
    l0:ForcePlay_Priority();
end;

function export:f_3_Leave()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Condition(1);
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In(0);
end;

function export:f_6_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In(0);
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073594969234356053";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetEnabled();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c32fb";
    l0:ForcePlay_Priority();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.triggerId = "2073594969234356053";
    l0:Enable();
end;

function export:f_5_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00154be3";
    l0:ForcePlay_Priority();
end;

function export:f_8_Finished()
    self = self._graph;
    self:Completed();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In(0);
end;

function export:f_4_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In(0);
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
