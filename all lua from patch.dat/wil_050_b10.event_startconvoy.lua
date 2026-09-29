-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: EVENT_StartConvoy
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
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleFollowPath_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ePlayer = nil;
    self.CheckForTruckID03 = {
    };
    self.TruckID02 = nil;
    self.TruckID01 = nil;
    self.CheckForTruckID01 = {
    };
    self.CheckForMercID01 = {
    };
    self.CheckForMercID02 = {
    };
    self.CheckForTruckID02 = {
    };
    self.eColiderPawn = nil;
    self.eColiderVeh = nil;
    self.CheckForTruckID04 = {
    };
    self.CheckForMercID04 = {
    };
    self.TruckID04 = nil;
    self.CheckForMercID03 = {
    };
    self.TruckID03 = nil;
    self[3] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.EndOfList = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0.EndOfList = self.f_29_EndOfList;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_2_Spawned;
    self[4] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0.EndOfList = self.f_34_EndOfList;
    self[24] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0.EndOfList = self.f_24_EndOfList;
    self[12] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = self.f_12_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0.EndOfList = self.f_32_EndOfList;
    self[11] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = self.f_11_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = self.f_11_Finished;
    self[6] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_6_Spawned;
    self[5] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.EndOfList = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.EndOfList = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_9_Spawned;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_8_Spawned;
    self[10] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0.EndOfList = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = self.f_1_Out_1;
    l0.Out[2] = self.f_1_Out_2;
    l0.Out[3] = self.f_1_Out_3;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.TruckID03 = l0.Data;
    l0 = self[4];
    l0.Vehicle = self.TruckID03;
    l0.Path = "2074521149915533553";
    l0.Speed = 12;
    l0.Interruptible = true;
    l0:Start();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:Bind();
end;

function export:f_29_EndOfList()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.TruckID04;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_29_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[29];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.Data;
    l1._graph = self;
    l1.Out = self.f_39_Out;
    l1:In();
end;

function export:f_2_Spawned()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.CheckForMercID03 = l0.mercsSpawned;
    self.CheckForTruckID03 = l0.vehiculesSpawned;
    l0 = self[3];
    l0.Input = self.CheckForTruckID03;
    l0.Index = 1;
    l0:Read();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:Bind();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:Read();
end;

function export:f_30_Out_0()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:UnBind();
end;

function export:f_30_Out_1()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:Read();
end;

function export:f_34_EndOfList()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.TruckID02;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_34_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[34];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.Data;
    l1._graph = self;
    l1.Out = self.f_36_Out;
    l1:In();
end;

function export:f_24_EndOfList()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.TruckID01;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_24_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[24];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.Data;
    l1._graph = self;
    l1.Out = self.f_28_Out;
    l1:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074521149907144924";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_1_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ReinforcementPoint = "2074521149915533550";
    l0:SpawnInRelax();
end;

function export:f_1_Out_1()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = "2074521149911339241";
    l0:SpawnInRelax();
end;

function export:f_1_Out_2()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2074521149917630710";
    l0:SpawnInRelax();
end;

function export:f_1_Out_3()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.ReinforcementPoint = "2074522816775989419";
    l0:SpawnInRelax();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:Bind();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:UnBind();
end;

function export:f_26_Out_1()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Read();
end;

function export:f_32_EndOfList()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.TruckID03;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_32_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[32];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.Data;
    l1._graph = self;
    l1.Out = self.f_37_Out;
    l1:In();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 6,
    };
    l0.Out[0] = self.f_27_Out_0;
    l0.Out[1] = self.f_27_Out_1;
    l0.Out[2] = self.f_27_Out_2;
    l0.Out[3] = self.f_27_Out_3;
    l0.Out[4] = self.f_27_Out_4;
    l0.Out[5] = self.f_27_Out_5;
    l0:In();
end;

function export:f_11_Started()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:Bind();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Read();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074521149911339238";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_6_Spawned()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.CheckForMercID01 = l0.mercsSpawned;
    self.CheckForTruckID01 = l0.vehiculesSpawned;
    l0 = self[5];
    l0.Input = self.CheckForTruckID01;
    l0.Index = 1;
    l0:Read();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = self[29];
    l0:Read();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074521149917630708";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.TruckID01 = l0.Data;
    l0 = self[11];
    l0.Vehicle = self.TruckID01;
    l0.Path = "2074521149915533553";
    l0.Speed = 12;
    l0.Interruptible = true;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.TruckID02 = l0.Data;
    l0 = self[13];
    l0.Vehicle = self.TruckID02;
    l0.Path = "2074521149915533553";
    l0.Speed = 12;
    l0.Interruptible = true;
    l0:Start();
end;

function export:f_9_Spawned()
    local l0;
    self = self._graph;
    l0 = self[9];
    self.CheckForMercID04 = l0.mercsSpawned;
    self.CheckForTruckID04 = l0.vehiculesSpawned;
    l0 = self[10];
    l0.Input = self.CheckForTruckID04;
    l0.Index = 1;
    l0:Read();
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.CheckForMercID02 = l0.mercsSpawned;
    self.CheckForTruckID02 = l0.vehiculesSpawned;
    l0 = self[7];
    l0.Input = self.CheckForTruckID02;
    l0.Index = 1;
    l0:Read();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.TruckID04 = l0.Data;
    l0 = self[12];
    l0.Vehicle = self.TruckID04;
    l0.Path = "2074521149915533553";
    l0.Speed = 12;
    l0.Interruptible = true;
    l0:Start();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074521149909242080";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_31_Out_0()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:UnBind();
end;

function export:f_31_Out_1()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = self[29];
    l0:Read();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Read();
end;

function export:f_27_Out_0()
    self = self._graph;
    self:Out();
end;

function export:f_27_Out_1()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0:UnBind();
end;

function export:f_27_Out_2()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Read();
end;

function export:f_27_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_30_Out_0;
    l0.Out[1] = self.f_30_Out_1;
    l0:In();
end;

function export:f_27_Out_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.Out[1] = self.f_26_Out_1;
    l0:In();
end;

function export:f_27_Out_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_31_Out_0;
    l0.Out[1] = self.f_31_Out_1;
    l0:In();
end;

function export:en_29()
    local l0;
    l0 = self[29];
    l0.Input = self.CheckForMercID04;
end;

function export:en_34()
    local l0;
    l0 = self[34];
    l0.Input = self.CheckForMercID02;
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.Input = self.CheckForMercID01;
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.TruckID04;
    l0.EntityB = "2074521149907144924";
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
end;

function export:en_32()
    local l0;
    l0 = self[32];
    l0.Input = self.CheckForMercID03;
end;

function export:en_22()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.TruckID02;
    l0.EntityB = "2074521149911339238";
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_22_Out;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.TruckID01;
    l0.EntityB = "2074521149917630708";
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.TruckID03;
    l0.EntityB = "2074521149909242080";
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
