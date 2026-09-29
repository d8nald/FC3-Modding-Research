-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b10/ulc_020_b10.domino.xml
-- User graph: ULC_020_B10_1st_NPC_controller
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Door.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_27_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnPush = DummyFunction;
    l0.OnPull = DummyFunction;
    l0.OnClosed = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_20_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_3_Spawned;
    self[11] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_11_Spawned;
    self[30] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_30_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_25_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
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
    self[16] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_16_Spawned;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_1_Spawned;
    self[26] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_26_Spawned;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_18_Spawned;
    self[21] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnPush = DummyFunction;
    l0.OnPull = DummyFunction;
    l0.OnClosed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:In();
end;

function export:f_27_Enter()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.ReinforcementPoint = "2075721664739459874";
    l0.Battlefield = "2076716524160159795";
    l0.IdleBSR = "2076716524160159795";
    l0.AlertBSR = "2076716524160159795";
    l0.CombatBSR = "2076716524160159795";
    l0:SpawnInCautious();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2075625266381724435";
    l0.Battlefield = "2075633718040604223";
    l0.IdleBSR = "2075633718040604223";
    l0.AlertBSR = "2075633718040604223";
    l0.CombatBSR = "2075633718040604223";
    l0:SpawnInRelax();
end;

function export:f_20_Enter()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_3_Spawned()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.triggerId = "2076675662118142187";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2075693260732395789";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.triggerId = "2075721916626289470";
    l0:Enable();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.triggerId = "2075790100878363582";
    l0:Enable();
end;

function export:f_11_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716024228483118";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_30_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076742010122817727";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_29_Destroyed;
    l0:Destroy();
end;

function export:f_32_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076744619200102636";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_25_Enter()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.ReinforcementPoint = "2076203133226232727";
    l0.Battlefield = "2075625311929768735";
    l0.IdleBSR = "2075625311929768735";
    l0.AlertBSR = "2075625311929768735";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
end;

function export:f_31_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076742004972212411";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_32_Destroyed;
    l0:Destroy();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Door = "2076672337138172171";
    l0:SetAsUsable();
    l0 = self[21];
    l0.Door = "2076674648451405499";
    l0:SetAsUsable();
    self:Out();
end;

function export:f_34_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076744599354753254";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_16_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716024228483118";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_29_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
    l0 = self[31];
    l0.seconds = 5;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076744611908305130";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_34_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_1_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076675654998311143";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_26_Spawned()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.triggerId = "2076204593695431945";
    l0:Enable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2076092266440596290";
    l0:Enable();
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.ReinforcementPoint = "2075790139818281934";
    l0.Battlefield = "2075625311929768735";
    l0.IdleBSR = "2075625311929768735";
    l0.AlertBSR = "2075625311929768735";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
    l0 = self[11];
    l0.ReinforcementPoint = "2075790043370261426";
    l0.Battlefield = "2075625311929768735";
    l0.IdleBSR = "2075625311929768735";
    l0.AlertBSR = "2075625311929768735";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2075625150088354537";
    l0.Battlefield = "2075625311929768735";
    l0.IdleBSR = "2075625311929768735";
    l0.AlertBSR = "2075625311929768735";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.triggerId = "2075817551203467774";
    l0:Enable();
end;

function export:f_18_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076715712522510578";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
