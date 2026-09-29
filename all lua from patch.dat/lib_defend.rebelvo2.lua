-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: RebelVO2
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
        cbox:RegisterBox("Domino/System/GetScriptEntity.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/SafeHouseListener.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bc5ea.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bcf9c]], "CSoundResource");
        cbox:LoadResource([[sndres0x001bcd36]], "CSoundResource");
        cbox:LoadResource([[sndres0x001bc5a5]], "CSoundResource");
        cbox:LoadResource([[sndres0x001bc5c8]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bcd36.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bc5c8.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bd79f]], "CSoundResource");
        cbox:LoadResource([[sndres0x001bcda4]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bcda4.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bd79f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bc5ea]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bc5a5.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bd273.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001bcf9c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001bd273]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.eplayer = nil;
    self.rebelcheering = nil;
    self.STP2 = nil;
    self[14] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_14_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_5_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[7];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 8,
        Output = 8,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_7_Output_0;
    l0.Output[1] = self.f_7_Output_1;
    l0.Output[2] = self.f_7_Output_2;
    l0.Output[3] = self.f_7_Output_3;
    l0.Output[4] = self.f_7_Output_4;
    l0.Output[5] = self.f_7_Output_5;
    l0.Output[6] = self.f_7_Output_6;
    l0.Output[7] = self.f_7_Output_7;
    self[2] = cbox:CreateBox("Domino/System/SafeHouseListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Unlocked = self.f_2_Unlocked;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_10_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_1_Finished;
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
    self[12] = cbox:CreateBox("Domino/System/GetScriptEntity.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_16_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_15_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = self.f_6_Select;
    l0.Start = self.f_6_Start;
    l0.End = self.f_6_End;
    l0.Interrupt = self.f_6_Interrupt;
    l0.Markup1 = self.f_6_Markup1;
    l0.Markup2 = self.f_6_Markup2;
    l0.Available = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[2];
    l0.safehouseId = self.SafeHouse;
    l0:Enable();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Output_0()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bc5c8";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_1()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bcf9c";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_2()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bd79f";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_3()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bcd36";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_4()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bc5ea";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_5()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bd273";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_6()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bcda4";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_7_Output_7()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Group = self.rebelcheering;
    l0.SoundId = "0x001bc5a5";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_2_Unlocked()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.STP2 = l0.Entity;
    l0 = self[6];
    l0.ContextualAction = self.STP2;
    l0:Enable();
end;

function export:f_16_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.rebelcheering;
    l0.ContextualAction = self.STP2;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0:Disable();
end;

function export:f_15_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_End()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
end;

function export:f_6_Interrupt()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
end;

function export:f_6_Markup1()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
end;

function export:f_6_Markup2()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
end;

function export:f_6_Select()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
end;

function export:f_6_Start()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.rebelcheering = l0.User;
    l0 = self[7];
    l0:In();
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
