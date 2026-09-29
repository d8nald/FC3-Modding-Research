-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.domino.xml
-- User graph: F5_SC_16_Challenge
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
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplayCustomUIMsg.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetPosition.lua");
        cbox:RegisterBox("Domino/System/Player/GivePlayerAmmo_v2.lua");
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SocChallengeModifier_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001af288]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Death = DummyFunction;
    self.NPCGroup01 = "#95F8A71E";
    self.NPCGroup03 = "#7BF6C632";
    self.NPCGroup05 = "#92956307";
    self.NPCGroup02_1 = "#85B539DC";
    self.NPCGroup02 = "#0CF1F6A4";
    self.Group06 = "#0B9C32BD";
    self.group07 = "#7C9B022B";
    self.IsOutsideOfArea = false;
    self[25] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[50];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_50_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_49_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[33] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    self[24] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[37] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_37_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[35] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_44_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[52] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = self.f_52_Out;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[41] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[36] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Out = self.f_36_Out;
    self[32] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[32];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_32_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[40] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = self.f_40_Out;
    self[54] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    self[30] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    self[42] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[42];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_42_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_39_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_38_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[9] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[48] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Finished = self.f_1_Finished;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_21_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[17] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_3_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Started = self.f_57_Started;
    l0.Finished = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_46_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[47] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[29] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Waves.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[55] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_55_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_45_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
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
    self[19] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_19_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[27] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0:AddMedPack();
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerAmmo_v2.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = self[39];
    l0:Stop();
end;

function export:f_50_Out_0()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Reinforcement_PT = "2076584519709768575";
    l0:In();
    l0 = self[44];
    l0.triggerId = "2076584488929868665";
    l0:Enable();
    l0 = self[54];
    l0.Reinforcement_PT = "2076584527372761988";
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_yPos_23 = l0.yPos;
    self._sld_zPos_23 = l0.zPos;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self._sld_yPos_23;
    l0.B = -920;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_34_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_34_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_49_Enter()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In(0);
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0:In(0);
end;

function export:f_62_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:True();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.NPC_Group = self.NPCGroup05;
    l0.MinGroupNumber = 4;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.NPC_Group = self.group07;
    l0.MinGroupNumber = 3;
    l0:In();
end;

function export:f_37_Enter()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Reinforcement_PT = "2076195486412315558";
    l0:In();
    l0 = self[49];
    l0.triggerId = "2076584473316572021";
    l0:Enable();
    l0 = self[24];
    l0.Reinforcement_PT = "2076195487762881450";
    l0:In();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Reinforcement_PT = "2076167902280571708";
    l0:In();
end;

function export:f_58_A_ge_B()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_58_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsOutsideOfArea;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_62_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_44_Enter()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:In(0);
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In(0);
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.triggerId = "2076580179496418260";
    l0:Enable();
    l0 = self[7];
    l0.Reinforcement_PT = "2076167886879087416";
    l0:In();
    l0 = self[19];
    l0.triggerId = "2076181491242529086";
    l0:Enable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.Reinforcement_PT = "2076167598984157981";
    l0:In();
    l0 = self[27];
    l0.Reinforcement_PT = "2076167488330029832";
    l0:In();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:In(0);
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = self[39];
    l0:Start();
end;

function export:f_32_Out_0()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:Reset();
    l0 = self[10];
    l0.Reinforcement_PT = "2076584563005471629";
    l0:In();
    l0 = self[13];
    l0.Reinforcement_PT = "2076584551395638153";
    l0:In();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.NPC_Group = self.Group06;
    l0.MinGroupNumber = 1;
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.triggerId = "2076182064849235297";
    l0:Enable();
    l0 = self[12];
    l0.triggerId = "2076580030546197441";
    l0:Enable();
    l0 = self[33];
    l0.NPC_Group = self.NPCGroup01;
    l0.MinGroupNumber = 1;
    l0:In();
    l0 = self[38];
    l0.triggerId = "2076221938977486927";
    l0:Enable();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
    l0 = self[36];
    l0.NPC_Group = self.NPCGroup02;
    l0.MinGroupNumber = 1;
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.NPC_Group = self.NPCGroup03;
    l0.MinGroupNumber = 1;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_42_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:In();
    l0 = self[46];
    l0.triggerId = "2076181771279429954";
    l0:Enable();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.Reinforcement_PT = "2076580767030322259";
    l0:In();
    l0 = self[30];
    l0.Reinforcement_PT = "2076580220216818648";
    l0:In();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_38_Enter()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:In(0);
    l0 = self[26];
    l0:In(0);
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.NPC_Group = self.NPCGroup02_1;
    l0.MinGroupNumber = 1;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self._sld_LocalPlayer_16 = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0.id = self._sld_LocalPlayer_16;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0:In(0);
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_34_A_ge_B()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_34_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self._sld_zPos_23;
    l0.B = 110;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_58_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_58_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_21_Enter()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Reinforcement_PT = "2076167935830809412";
    l0:In();
    l0 = self[26];
    l0:In(0);
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Reinforcement_PT = "2076579977962208182";
    l0:In();
    l0 = self[48];
    l0.Reinforcement_PT = "2076579964060187570";
    l0:In();
    l0 = self[4];
    l0.Reinforcement_PT = "2076580123378727887";
    l0:In();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:AddMedPack();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsOutsideOfArea = l0.Target;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Hide();
    self:en_55();
    l0 = self[55];
    l0:Stop();
end;

function export:f_57_Started()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Display();
end;

function export:f_46_Enter()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.triggerId = "2076584157414180986";
    l0:Enable();
    l0 = self[28];
    l0.Reinforcement_PT = "2076168073462700903";
    l0.Battlefield = "2076401598260590279";
    l0:In();
    l0 = self[5];
    l0.Reinforcement_PT = "2076168093379353455";
    l0:In();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:In(0);
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:In(0);
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Hide();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SocChallengeModifier_v2.lua")];
    l0.challengeID = 21;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.NotifiedFailed = DummyFunction;
    l0:NotifyFailed();
end;

function export:f_45_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:In();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerAmmo_v2.lua")];
    l0:In();
end;

function export:f_19_Enter()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:In(0);
end;

function export:f_59_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:False();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsOutsideOfArea = l0.Target;
    l0 = self[57];
    l0.SoundId = "0x001af288";
    l0.SoundType = 20;
    l0:Play();
    self:en_55();
    l0 = self[55];
    l0:Start();
end;

function export:en_43()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0.MessageId = {
        section = "HUD Popups",
        item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
        id = "153327",
    };
    l0.Timer = 0;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerAmmo_v2.lua")];
    l0.pawn = nil;
    l0.NumClips = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_39()
    local l0;
    l0 = self[39];
    l0.seconds = 1;
    l0.loop = true;
end;

function export:en_55()
    local l0;
    l0 = self[55];
    l0.seconds = 8;
end;

function export:en_59()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsOutsideOfArea;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_59_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

-- Empty out anchor definitions
function export:Death()
    
end;
_compilerVersion = 24;
