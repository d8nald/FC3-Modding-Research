-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_RoadAmbush
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
        cbox:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayerVehicle = nil;
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
    self[7] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_7_EnterFOV;
    l0.LeaveFOV = self.f_7_LeaveFOV;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = DummyFunction;
    l0.LeaveFOV = self.f_12_LeaveFOV;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:_1stRoadAmbush()
    local l0;
    l0 = self[12];
    l0.triggerId = "2077426798783686647";
    l0:Enable();
end;

function export:_2ndRoadAmbush()
    local l0;
    self:en_14();
    l0 = self[14];
    l0:Open();
end;

function export:BuffaloAmbush()
    
end;

function export:Initialize()
    local l0;
    self:en_5();
    l0 = self[5];
    l0:Enable();
    l0 = self[2];
    l0.triggerId = "2076183341853325195";
    l0:Enable();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Enable();
end;

function export:f_7_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Start();
end;

function export:f_7_LeaveFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2077039846794208356";
    l0:Enable();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#BCA1D016";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
    self:en_14();
    l0 = self[14];
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0.vehicle;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0.Entities = self.ePlayerVehicle;
    l0.Group = "#B900A5C8";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#B900A5C8";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2076510474500851586";
    l0.Battlefield = "2076510554058409863";
    l0.IdleBSR = "2076510554058409863";
    l0.AlertBSR = "2076510554058409863";
    l0.CombatBSR = "2076510554058409863";
    l0:SpawnInCautious();
end;

function export:f_12_LeaveFOV()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.ReinforcementPoint = "2078999870452025487";
    l0:SpawnInRelax();
    l0 = self[11];
    l0.missionBlockId = "138281527422687";
    l0:Activate();
    l0 = self[16];
    l0.ReinforcementPoint = "2078999869745285259";
    l0:SpawnInRelax();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.triggerId = "2077769868993653878";
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.initStateOpen = false;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
