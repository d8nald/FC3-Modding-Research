-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: D_Jason
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00161f22.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018b279]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00069765.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f22b]], "CSoundResource");
        cbox:LoadResource([[sndres0x001ade13]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018b279.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f235]], "CSoundResource");
        cbox:LoadResource([[sndres0x00069634]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ade13.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f253]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f22b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f253.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f235.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00069765]], "CSoundResource");
        cbox:LoadResource([[sndres0x00161f22]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00069634.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.numOfLogoSeen = 0;
    self.Prob01 = 0.33;
    self.Prob02 = 0.34;
    self.Prob03 = 0.33;
    self[50] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_50_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_19_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_25_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_29_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = self.f_5_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_18_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_16_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_14_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_38_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_28_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_32_StateStart;
    l0.StateStop = self.f_32_StateStop;
    l0.MemberInState = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_7_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_40_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 3,
        Output = 3,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_3_Output_0;
    l0.Output[1] = self.f_3_Output_1;
    l0.Output[2] = self.f_3_Output_2;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_31_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_49_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:D_Flame()
    local l0;
    l0 = self[49];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:Enable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = self.f_1_Out_1;
    l0:In();
end;

function export:Hurry_Up()
    local l0;
    l0 = self[43];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x0018b279";
    l0:ForcePlay_Priority();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.triggerId = "2078713755839039642";
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0:Enable();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.triggerId = "2078701643603402769";
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0:Enable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.triggerId = "2076798707524708395";
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0:Enable();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:Enable();
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:True();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.triggerId = "2078709226651267414";
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0:Enable();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:f_50_Enter()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_19_EnterFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:Add();
    self:en_19();
    l0 = self[19];
    l0:Disable();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob01 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:FromFloat();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob01 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:FromFloat();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_25_Enter()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob02 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:FromFloat();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.ULC_020_MAIN.WaterCommentDone = l0.Target;
    l0 = self[25];
    l0.triggerId = "2078688228916902949";
    l0.colliderFilterId = Globals.ULC_020_MAIN.ePlayer;
    l0:Enable();
end;

function export:f_10_Out_0()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Enable();
end;

function export:f_10_Out_1()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_10_Out_2()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Enable();
end;

function export:f_10_Out_3()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_10_Out_4()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:Enable();
end;

function export:f_29_Enter()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x0018f253";
    l0:ForcePlay_Priority();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob03 = l0.Target;
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:FromFloat();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self._sld_Target_48 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self._sld_Target_48;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_8_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob02 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:FromFloat();
end;

function export:f_18_EnterFOV()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:Add();
end;

function export:f_16_EnterFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:Add();
    self:en_16();
    l0 = self[16];
    l0:Disable();
end;

function export:f_14_EnterFOV()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:Add();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    Globals.ULC_020_MAIN.ePlayer = l0.LocalPlayer;
    self:Out();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_38_Enter()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x001ade13";
    l0:ForcePlay_Priority();
end;

function export:f_28_Enter()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x0018f235";
    l0:Interested_Priority();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:FromFloat();
end;

function export:f_32_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 2;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:FromInteger();
end;

function export:f_32_StateStop()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x00069765";
    l0:ForcePlay_Priority();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:FromFloat();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.numberOfLogoTEMP = l0.Target;
    self:en_48();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0:Add();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.group = "#F79A7707";
    l0:Combat();
end;

function export:f_60_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
end;

function export:f_7_EnterFOV()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:Add();
end;

function export:f_40_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x00069765";
    l0:ForcePlay_Priority();
    self:en_40();
    l0 = self[40];
    l0:Disable();
end;

function export:f_3_Output_0()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x00069634";
    l0:ForcePlay_Priority();
end;

function export:f_3_Output_1()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x00069765";
    l0:ForcePlay_Priority();
end;

function export:f_3_Output_2()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x00161f22";
    l0:ForcePlay_Priority();
end;

function export:f_1_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_1_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.ULC_020_MAIN.WaterCommentDone;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_60_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob02 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:FromFloat();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob03 = l0.Target;
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob01 = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:FromFloat();
end;

function export:f_31_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x0018f22b";
    l0:Interested_Priority();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.Prob03 = l0.Target;
end;

function export:f_8_A_ge_B()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_49_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:en_19()
    local l0;
    l0 = self[19];
    l0.triggerId = "2078687556546870966";
    l0.autoDisable = false;
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 5,
    };
    l0.Out[0] = self.f_10_Out_0;
    l0.Out[1] = self.f_10_Out_1;
    l0.Out[2] = self.f_10_Out_2;
    l0.Out[3] = self.f_10_Out_3;
    l0.Out[4] = self.f_10_Out_4;
end;

function export:en_48()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = PersistentGlobals.ULC_020_MAIN.numberOfLogo;
    l0.B = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0._graph = self;
    l0.Out = self.f_48_Out;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.triggerId = "2078687383355670188";
    l0.autoDisable = false;
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.triggerId = "2078687362275098280";
    l0.autoDisable = false;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.triggerId = "2078687340724764324";
    l0.autoDisable = false;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.triggerId = "2078687291691253408";
    l0.autoDisable = false;
end;

function export:en_40()
    local l0;
    l0 = self[40];
    l0.triggerId = "2078702151221141525";
    l0.autoDisable = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.AutoReset = true;
    l0.Probability[0] = self.Prob01;
    l0.Probability[1] = self.Prob02;
    l0.Probability[2] = self.Prob03;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
