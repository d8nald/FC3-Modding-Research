-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: RebelVO
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetScriptEntity.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/SafeHouseListener.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001bd643]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b87c0]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b9b5a]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b9cb6]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bd01f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bcc26.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bd01f]], "CSoundResource");
        cbox:LoadResource([[sndres0x001bcc26]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b9b5a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bcd1e]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b87c0.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bce58.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bd643.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bce58]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b9cb6.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bcd1e.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.entityrebel = nil;
    self.eplayer = nil;
    self.rebellist = {
    };
    self.rebel = nil;
    self.STP = nil;
    self.rebeljobboard = nil;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = self.f_11_Select;
    l0.Start = self.f_11_Start;
    l0.End = self.f_11_End;
    l0.Interrupt = self.f_11_Interrupt;
    l0.Markup1 = self.f_11_Markup1;
    l0.Markup2 = self.f_11_Markup2;
    l0.Available = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/SafeHouseListener.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Unlocked = self.f_17_Unlocked;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_14_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_18_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_4_Near;
    l0.Far = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[10];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 8,
        Output = 8,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_10_Output_0;
    l0.Output[1] = self.f_10_Output_1;
    l0.Output[2] = self.f_10_Output_2;
    l0.Output[3] = self.f_10_Output_3;
    l0.Output[4] = self.f_10_Output_4;
    l0.Output[5] = self.f_10_Output_5;
    l0.Output[6] = self.f_10_Output_6;
    l0.Output[7] = self.f_10_Output_7;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_12_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_13_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_8_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_7_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/GetScriptEntity.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[17];
    l0.safehouseId = self.SafeHouse;
    l0:Enable();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_11_End()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
end;

function export:f_11_Interrupt()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
end;

function export:f_11_Markup1()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
end;

function export:f_11_Markup2()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
end;

function export:f_11_Select()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
end;

function export:f_11_Start()
    local l0;
    self = self._graph;
    l0 = self[11];
    self.rebeljobboard = l0.User;
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_17_Unlocked()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:In();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.rebeljobboard;
    l0.ContextualAction = self.STP;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0:Disable();
end;

function export:f_4_Near()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Disable();
    l0 = self[10];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_10_Output_0()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001b87c0";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_1()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001bd01f";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_2()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001bcc26";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_3()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001b9cb6";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_4()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001b9b5a";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_5()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001bd643";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_6()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001bcd1e";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_7()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Group = self.rebeljobboard;
    l0.SoundId = "0x001bce58";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.eplayer = l0.LocalPlayer;
    l0 = self[11];
    l0.ContextualAction = self.STP;
    l0:Enable();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.STP = l0.Entity;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Entities = self.STP;
    l0.id2 = self.eplayer;
    l0.nearZone = 10;
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
