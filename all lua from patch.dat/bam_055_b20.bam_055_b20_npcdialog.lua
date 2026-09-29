-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20_NpcDialog
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
        cbox:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001acafb.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001acb97]], "CSoundResource");
        cbox:LoadResource([[sndres0x001ac3d1]], "CSoundResource");
        cbox:LoadResource([[sndres0x001ac54b]], "CSoundResource");
        cbox:LoadResource([[sndres0x001acafb]], "CSoundResource");
        cbox:LoadResource([[sndres0x001acab8]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ac54b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001acb35.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001ac8f0]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001acab8.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ac8f0.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001acb35]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001acb97.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ac3d1.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.PlayerID = nil;
    self[36] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_29_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_17_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_16_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_12_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_28_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = self.f_30_Start;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_27_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = self.f_13_Start;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_15_EnterFOV;
    l0.LeaveFOV = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[15];
    l0.triggerId = "2076868855453505515";
    l0:Enable();
    l0 = self[17];
    l0.triggerId = "2076878428625215344";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_23_UseCalled()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.ContextualAction = "2076878416642088805";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "called";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076507426447708344";
    l0.ContextualAction = "2076951860006138230";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_25_Disabled()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076878416642088805";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076878416642088807";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_21_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076951860006138232";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076951860006138230";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_29_Finished()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.Group = "2076507456061591764";
    l0.SoundId = "0x001ac3d1";
    l0:Idle_Priority();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_17_EnterFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_16_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Group = "2076507869368329160";
    l0.SoundId = "0x001acab8";
    l0:Idle_Priority();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Group = "2076507426447708344";
    l0.SoundId = "0x001ac54b";
    l0:Idle_Priority();
end;

function export:f_21_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076618528852575884";
    l0.ContextualAction = "2076878416642088807";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.PlayerID = l0.LocalPlayer;
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076507456061591764";
    l0.ContextualAction = "2076878416642088805";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = self.f_23_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_6_UseCalled()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.ContextualAction = "2076951860006138232";
    l0:Enable();
end;

function export:f_28_Finished()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Group = "2076618528852575884";
    l0.SoundId = "0x001ac8f0";
    l0:Idle_Priority();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_30_Start()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "sent";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[28];
    l0.Group = "2076507456061591764";
    l0.SoundId = "0x001acb35";
    l0:Idle_Priority();
end;

function export:f_18_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076878416642088807";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_46_Disabled()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_46_Enabled()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_27_Finished()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076523082715028287";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = self.f_1_Disabled;
    l0:Enable();
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_24_Disabled()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_24_Enabled()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_13_Start()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Group = "2076507869368329160";
    l0.SoundId = "0x001acafb";
    l0:Idle_Priority();
end;

function export:f_15_Enabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_15_EnterFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "LookAt_On";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[36];
    l0.Group = self.PlayerID;
    l0.SoundId = "0x001acb97";
    l0:ForcePlay_Priority();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076507869368329160";
    l0.ContextualAction = "2076951860006138232";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = self.f_6_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076951860006138230";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076508137304668152";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = self.f_25_Disabled;
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076523074911525687";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076549703480177221";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076878416642088805";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_18_Disabled;
end;

function export:en_46()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076952063633326292";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_46_Enabled;
    l0.Disabled = self.f_46_Disabled;
end;

function export:en_24()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076838242650428610";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_24_Enabled;
    l0.Disabled = self.f_24_Disabled;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2076951860006138232";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_5_Disabled;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
