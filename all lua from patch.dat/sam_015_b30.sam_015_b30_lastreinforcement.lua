-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b30/sam_015_b30.domino.xml
-- User graph: SAM_015_B30_LastReinforcement
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetProgressionMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0016dd90]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ReinforcementGroupCounter = 0;
    self[77] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_77_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_28_MemberRemoved;
    self[22] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_22_Spawned;
    self[41] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_41_Spawned;
    self[90] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[90];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_90_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = self.f_15_Started;
    l0.Finished = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_47_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_53_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_24_Spawned;
    self[69] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[69];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_69_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Finished = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Initialized = DummyFunction;
    l0.Enabled = self.f_51_Enabled;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    self[85] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_85_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_7_Spawned;
    self[80] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_80_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_49_Spawned;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_4_Spawned;
    self[29] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_29_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_3_Spawned;
    self[19] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_54_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_25_Spawned;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[112] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[112];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:PlayerIsIn()
    local l0;
    self:en_35();
    l0 = self[35];
    l0:Open();
    self:en_55();
    l0 = self[55];
    l0:Open();
end;

function export:RenfortIn()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076456789804595550";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:CreateAILogInArmy();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075920451789396948";
    l0._graph = self;
    l0.Out = self.f_83_Out;
    l0:In();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075711831772506546";
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:In();
end;

function export:f_77_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075817084406733441";
    l0._graph = self;
    l0.Out = self.f_82_Out;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.ReinforcementPoint = "2074853844294046112";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075784365410893444";
    l0._graph = self;
    l0.Out = self.f_81_Out;
    l0:In();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.ReinforcementPoint = "2074869462019868949";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Entity = "2076459334568518597";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
    self:en_28();
    l0 = self[28];
    l0:Enable();
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812504254049010";
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0:In();
end;

function export:f_28_MemberRemoved()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:In();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075798074644506270";
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:In();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075810738810657651";
    l0._graph = self;
    l0.Out = self.f_98_Out;
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075711838070254008";
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:In();
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075815602919843984";
    l0._graph = self;
    l0.Out = self.f_102_Out;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_22_Spawned()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.ReinforcementPoint = "2075814041621647036";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_41_Spawned()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.ReinforcementPoint = "2075816123510565167";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = self[90];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075810790054566793";
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:In();
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076483410473283110";
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:In();
end;

function export:f_90_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076017346469750031";
    l0._graph = self;
    l0.Out = self.f_94_Out;
    l0:In();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    self:en_54();
    l0 = self[54];
    l0:Start();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.ReinforcementPoint = "2075820766049344186";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = self[69];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075817396077089048";
    l0._graph = self;
    l0.Out = self.f_101_Out;
    l0:In();
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.missionBlockId = "138271312252788";
    l0.missionScript = "Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40.lua";
    l0:Enable();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812544601156354";
    l0._graph = self;
    l0.Out = self.f_88_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2074853779716444566";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = self.ReinforcementGroupCounter;
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:Add();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812462168402657";
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:In();
end;

function export:f_15_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075798074646603424";
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075815505465190508";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075711831120292272";
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
end;

function export:f_93_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076017384094754093";
    l0._graph = self;
    l0.Out = self.f_96_Out;
    l0:In();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075792838943057633";
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:In();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075825803572032786";
    l0._graph = self;
    l0.Out = self.f_97_Out;
    l0:In();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:Stop();
    self:Out();
end;

function export:f_47_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:In();
end;

function export:f_83_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829294271474970";
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:In();
end;

function export:f_53_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075702011036186410";
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:In();
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075834909802392249";
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_24_Spawned()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.ReinforcementPoint = "2075816126037633331";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_96_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812455203760859";
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:In();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.seconds = 50;
    l0:Start();
    l0 = self[34];
    l0.seconds = 38;
    l0:Start();
end;

function export:f_69_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075810787319880583";
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:In();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075815594518653068";
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:In();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Entity = "2076459316786766778";
    l0.SoundId = "0x0016dd90";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = self[85];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_51_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138271312252788";
    l0.missionLayerId = "18152669821734782";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_85_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075815588711639178";
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.seconds = 7;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_7_Spawned()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ReinforcementPoint = "2074853708442636679";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_80_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077676210533452477";
    l0._graph = self;
    l0.Out = self.f_87_Out;
    l0:In();
end;

function export:f_30_A_ge_B()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2074853832285753756";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
    self:en_28();
    l0 = self[28];
    l0:Disable();
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2075814040233332408";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_101_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075817395695407382";
    l0._graph = self;
    l0.Out = self.f_99_Out;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_49_Spawned()
    local l0;
    self = self._graph;
    l0 = self[112];
    l0.ReinforcementPoint = "2075816126037633331";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_81_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075784371148701324";
    l0._graph = self;
    l0.Out = self.f_79_Out;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:ShootWhenBadMood();
    l0 = self[11];
    l0:Start();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.seconds = 5;
    l0:Start();
    self:en_54();
    l0 = self[54];
    l0:Stop();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_4_Spawned()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.ReinforcementPoint = "2075814050316439236";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_3_Spawned()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2075814032092188340";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Open();
end;

function export:f_54_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = self[55];
    l0:In();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootWhenBadMood();
end;

function export:f_25_Spawned()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.ReinforcementPoint = "2075816126037633331";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076483411775614504";
    l0._graph = self;
    l0.Out = self.f_100_Out;
    l0:In();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.ReinforcementPoint = "2075814016617303728";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2074853678558220674";
    l0.AlertBSR = "2074853678558220674";
    l0.CombatBSR = "2074853678558220674";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075711834333129142";
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:In();
end;

function export:f_88_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075812459066714847";
    l0._graph = self;
    l0.Out = self.f_91_Out;
    l0:In();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077676211514919615";
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:In();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.ReinforcementGroupCounter = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.ReinforcementGroupCounter;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_30_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075702013345150764";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075895959520291220";
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:In();
end;

function export:en_28()
    local l0;
    l0 = self[28];
    l0.group = "#D971BDC2";
    l0.autoDisable = false;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.initStateOpen = false;
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.initStateOpen = false;
end;

function export:en_47()
    local l0;
    l0 = self[47];
    l0.loop = true;
end;

function export:en_55()
    local l0;
    l0 = self[55];
    l0.initStateOpen = false;
end;

function export:en_54()
    local l0;
    l0 = self[54];
    l0.loop = true;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
