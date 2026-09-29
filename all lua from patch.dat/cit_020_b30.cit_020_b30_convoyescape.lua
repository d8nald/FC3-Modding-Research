-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_ConvoyEscape
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_BARKS_Rebels.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_BARKS_Jason.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_RoadAmbush.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleLockPosition.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Started = DummyFunction;
    self.Teleported = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_RoadAmbush.lua");
    l0 = self[2];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_BARKS_Jason.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Finished = self.f_13_Finished;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "CIT_020_B30_1stPrivateersAmbush",
            "CIT_020_B30_BuffaloAmbush",
            "CIT_020_B30_2ndPrivateersAmbush",
        },
    };
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_1_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["CIT_020_B30_1stPrivateersAmbush"] = self.f_1_SPOut__CIT_020_B30_1stPrivateersAmbush_;
    l0.SPOut["CIT_020_B30_BuffaloAmbush"] = self.f_1_SPOut__CIT_020_B30_BuffaloAmbush_;
    l0.SPOut["CIT_020_B30_2ndPrivateersAmbush"] = self.f_1_SPOut__CIT_020_B30_2ndPrivateersAmbush_;
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
    self[7] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_7_True;
    l0.False = DummyFunction;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_BARKS_Jason.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Finished = DummyFunction;
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
    self[6] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_BARKS_Rebels.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetAsIndestructable();
    self:en_5();
    l0:SetAsUnusable();
    l0 = self[7];
    l0.entityId = Globals.CIT_020_MAIN.eReinforcementTruck;
    l0:In();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Player = Globals.CIT_020_MAIN.ePlayer;
    l0:CONVOY_Im_going_after_it();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.PawnEntity = "2074551698614950010";
    l0.Destination = "2076180145852406077";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.RegionEntity = "2076180511484565908";
    l0:In();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.seconds = 8;
    l0:Start();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleLockPosition.lua")];
    l0.Vehicle = "2074551698614950010";
    l0.Locked = true;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:Set();
end;

function export:f_1_SPOut__CIT_020_B30_1stPrivateersAmbush_()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:_1stRoadAmbush();
end;

function export:f_1_SPOut__CIT_020_B30_2ndPrivateersAmbush_()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:_2ndRoadAmbush();
    l0 = self[9];
    l0.missionBlockId = "138278283654693";
    l0:Activate();
end;

function export:f_1_SPOut__CIT_020_B30_BuffaloAmbush_()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:BuffaloAmbush();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 3;
    l0:Start();
    l0 = self[2];
    l0:Initialize();
    l0 = self[10];
    l0.Group = "#FD799AB3";
    l0:The_convoy_is_getting_away();
    self:Started();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Player = Globals.CIT_020_MAIN.ePlayer;
    l0:CONVOY_Stop_the_truck();
end;

function export:f_7_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = Globals.CIT_020_MAIN.eReinforcementTruck;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetEngineBroken();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.SceneEntity = "2075781343028978730";
    l0.SequenceFile = "Sequences/fc3_main/cit_020_b10/cit_020_convoy_sequence_leaving.seq";
    l0:Play();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Start();
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2074551698614950010";
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Teleported()
    
end;
_compilerVersion = 24;
