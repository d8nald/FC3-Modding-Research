-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b20/wil_050_b20.domino.xml
-- User graph: OBJ_OliverReachJason
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetReevaluateCover.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/VehicleDamageListener.lua");
        cbox:RegisterBox("Domino/System/VehicleFollowPath_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.OliverHasBeenKill = DummyFunction;
    self.BoatIsDestroy = DummyFunction;
    self.Out = DummyFunction;
    self.ePlayer = nil;
    self[15] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = self.f_15_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_2_Out_0;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[5] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_5_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/VehicleDamageListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.StateChange = DummyFunction;
    l0.Destroyed = self.f_6_Destroyed;
    l0.OnFire = self.f_6_OnFire;
    l0.Broken = self.f_6_Broken;
    l0.MajorDamage = DummyFunction;
    l0.MinorDamage = DummyFunction;
    l0.Mint = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.Vehicle = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0.User = Globals.WIL_050_MAIN.OliverMain;
    l0.Driver = true;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_15_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_14_Out_0;
    l0.Out[1] = self.f_14_Out_1;
    l0:In();
end;

function export:f_2_Out_0()
    self = self._graph;
    self:BoatIsDestroy();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#79A36374";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Vehicle = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0.Path = "2074536721608901160";
    l0.Speed = 16;
    l0:Start();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.pawns = Globals.WIL_050_MAIN.OliverMain;
    l0:Enable();
end;

function export:f_9_Out_2()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_GetInTurret",
        id = "43804",
    };
    l0:SetMissionObjective();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
    l0.Out[2] = self.f_9_Out_2;
    l0:In();
    l0 = self[6];
    l0.Vehicle = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_5_Killed()
    self = self._graph;
    self:OliverHasBeenKill();
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_14_Out_1()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_6_Broken()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In(0);
end;

function export:f_6_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In(0);
end;

function export:f_6_OnFire()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In(0);
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_16_Out_0;
    l0.Out[1] = self.f_16_Out_1;
    l0:In();
end;

function export:f_8_Out_0()
    self = self._graph;
    self:Out();
end;

function export:f_8_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_16_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.Out[1] = self.f_8_Out_1;
    l0:In();
end;

function export:f_16_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#79A36374";
    l0.Battlefield = "2075658205274318644";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:SetAll();
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077161822481299634";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

-- Empty out anchor definitions
function export:OliverHasBeenKill()
    
end;
function export:BoatIsDestroy()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
