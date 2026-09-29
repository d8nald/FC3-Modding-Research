-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: Big_Door_Control
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f208.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00199c82]], "CSoundResource");
        cbox:LoadResource([[sndres0x00183b1e]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f208]], "CSoundResource");
        cbox:LoadResource([[sndres0x00183b1c]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[19];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 3,
    };
    l0.Out = self.f_19_Out;
    self[13] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_18_Spawned;
    self[7] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_7_Completed;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_20_Spawned;
    self[16] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_16_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
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

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Enable();
    l0 = self[3];
    l0.SceneEntity = "2076370005580063118";
    l0.SequenceFile = "Sequences/fc3_main/ULC_010/Door_Open_01.seq";
    l0:Play();
end;

function export:f_18_Spawned()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Condition(0);
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Rebuild Navmesh";
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
    l0 = self[7];
    l0.RegionEntity = "2076715852555653540";
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.triggerId = "2077820186756418625";
    l0:Enable();
    self:Out();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
    l0 = self[13];
    l0.Entity = "2076866671882026152";
    l0.SoundId = "0x00199c82";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_20_Spawned()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Condition(2);
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.ReinforcementPoint = "2078504898380439551";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2076176270720244272";
    l0.AlertBSR = "2076176270720244272";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInCautious();
    l0 = self[5];
    l0.ReinforcementPoint = "2078505041959858183";
    l0.Battlefield = "2078502613942296788";
    l0.IdleBSR = "2078505031941763076";
    l0.AlertBSR = "2078505031941763076";
    l0.CombatBSR = "2078502613942296788";
    l0:SpawnInCautious();
    l0 = self[18];
    l0.ReinforcementPoint = "2076619972198534898";
    l0.Battlefield = "2078200715142010291";
    l0.IdleBSR = "2078200715142010291";
    l0.AlertBSR = "2078200715142010291";
    l0.CombatBSR = "2078200715142010291";
    l0:SpawnInCautious();
end;

function export:f_16_Killed()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f208";
    l0:ForcePlay_Priority();
    self:en_16();
    l0 = self[16];
    l0:Disable();
end;

function export:f_10_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Entity = "2076866671882026152";
    l0.SoundId = "0x00183b1e";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Entity = "2076866671882026152";
    l0.SoundId = "0x00183b1c";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[4];
    l0.ReinforcementPoint = "2076619884969594599";
    l0.Battlefield = "2078201353626232416";
    l0.IdleBSR = "2078201353626232416";
    l0.AlertBSR = "2078201353626232416";
    l0.CombatBSR = "2078201353626232416";
    l0:SpawnInCautious();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076620044862758368";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Condition(1);
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.pawns = "#F54BAAD5";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
