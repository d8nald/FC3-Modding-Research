-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b11/ulc_010_b11.domino.xml
-- User graph: Enemy_Group_01
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
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018f163]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f163.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.List = {
    };
    self.Enemy = nil;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_20_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_9_Spawned;
    self[12] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[17];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 3,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = DummyFunction;
    l0.Output[1] = DummyFunction;
    l0.Output[2] = self.f_17_Output_2;
    l0.None = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_7_Spawned;
    self[6] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_16_MemberRemoved;
    self[18] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.ResetOut = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_11_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_8_Spawned;
    self[15] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[15];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 3,
    };
    l0.Out = self.f_15_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2076175710241692094";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2076176270720244272";
    l0.AlertBSR = "2076176270720244272";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInCautious();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.ReinforcementPoint = "2078502308223668217";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2078502600484872403";
    l0.AlertBSR = "2078502600484872403";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInRelax();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.ReinforcementPoint = "2078493948147410486";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2078502613942296788";
    l0.AlertBSR = "2078502613942296788";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInCautious();
end;

function export:f_20_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f163";
    l0:Combat_Priority();
end;

function export:f_9_Spawned()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Condition(2);
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.ReinforcementPoint = "2078502367843602447";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2078502553292660946";
    l0.AlertBSR = "2078502553292660946";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInRelax();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ReinforcementPoint = "2076562771759080118";
    l0.Battlefield = "2076176262090463790";
    l0.IdleBSR = "2076176262090463790";
    l0.AlertBSR = "2076176262090463790";
    l0.CombatBSR = "2076176262090463790";
    l0:SpawnInRelax();
    l0 = self[4];
    l0.ReinforcementPoint = "2076549901438693082";
    l0.Battlefield = "2076176262090463790";
    l0.IdleBSR = "2076176262090463790";
    l0.AlertBSR = "2076176262090463790";
    l0.CombatBSR = "2076176262090463790";
    l0:SpawnInRelax();
end;

function export:f_17_Output_2()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Disable();
    l0 = self[18];
    l0:In(0);
end;

function export:f_7_Spawned()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Condition(1);
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.ReinforcementPoint = "2078502316280926205";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2078502600484872403";
    l0.AlertBSR = "2078502600484872403";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInRelax();
end;

function export:f_16_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:In();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.triggerId = "2078687431690824034";
    l0:Enable();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.ReinforcementPoint = "2078493110205162853";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
    l0 = self[8];
    l0.ReinforcementPoint = "2078492860014929222";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
    l0 = self[7];
    l0.ReinforcementPoint = "2076604169499720535";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Condition(0);
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.triggerId = "2076521915813466051";
    l0:Enable();
    self:Out();
    l0 = self[3];
    l0.triggerId = "2075898407980900056";
    l0:Enable();
    l0 = self[1];
    l0.ReinforcementPoint = "2076175623029529018";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2076176270720244272";
    l0.AlertBSR = "2076176270720244272";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInCautious();
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.group = "#0B8EA495";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
