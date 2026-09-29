-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b11/ulc_010_b11.domino.xml
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
        cbox:RegisterBox("Domino/System/CollectibleListener.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018f18b]], "CSoundResource");
        cbox:LoadResource([[sndres0x001ada5c]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f181.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001ada4d]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada5c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f18b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f181]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada4d.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ObjectiveComplete = DummyFunction;
    self.Int_Treasure_Collected = 0;
    self[25] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[17] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_22_Out_0;
    l0.ResetOut = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_19_Out_0;
    l0.ResetOut = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 4,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_20_Output_0;
    l0.Output[1] = self.f_20_Output_1;
    l0.Output[2] = self.f_20_Output_2;
    l0.Output[3] = self.f_20_Output_3;
    l0.None = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_15_Collected;
    self[28] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[28];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_28_Out_0;
    l0.ResetOut = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_7_Collected;
    self[26] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_14_Collected;
    self[13] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_13_Collected;
    self[21] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_21_Out_0;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
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
    self[10] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:In();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:Add();
end;

function export:f_9_Added()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_22_Out_0()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_3",
        id = "111837",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_19_Out_0()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_2",
        id = "119561",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_27_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:In(0);
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures",
        id = "149793",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
    self:Out();
    l0 = self[7];
    l0.collectibleId = "2076755618558910367";
    l0:Enable();
end;

function export:f_4_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In(0);
end;

function export:f_20_Output_0()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada4d";
    l0:ForcePlay_Priority();
end;

function export:f_20_Output_1()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada5c";
    l0:ForcePlay_Priority();
end;

function export:f_20_Output_2()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f181";
    l0:ForcePlay_Priority();
end;

function export:f_20_Output_3()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f18b";
    l0:ForcePlay_Priority();
end;

function export:f_3_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In(0);
end;

function export:f_15_Collected()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_28_Out_0()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[8];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_7_Collected()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.collectibleId = "2076755635979952034";
    l0:Enable();
end;

function export:f_11_Added()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_14_Collected()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.collectibleId = "2076755663626706853";
    l0:Enable();
end;

function export:f_13_Collected()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.collectibleId = "2076755655349247907";
    l0:Enable();
end;

function export:f_21_Out_0()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[25];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_1",
        id = "119681",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_6_Added()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_8_TimeElapsed()
    self = self._graph;
    self:ObjectiveComplete();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.Int_Treasure_Collected = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_27_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_24_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_3_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_4_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_24_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0:In(0);
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_29_Out;
end;

function export:en_39()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_39_Out;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075898433794744028";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_9_Added;
    l0.Removed = DummyFunction;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075898497768365800";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_11_Added;
    l0.Removed = DummyFunction;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075898460126584544";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_6_Added;
    l0.Removed = DummyFunction;
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075898578640838392";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:ObjectiveComplete()
    
end;
_compilerVersion = 24;
