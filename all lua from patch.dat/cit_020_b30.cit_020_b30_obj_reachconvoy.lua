-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_OBJ_ReachConvoy
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_FuelTruckBurning.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.ePlayerVehicle = nil;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_FuelTruckBurning.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Finished = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_8_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[1];
    l0.objectiveId = {
        section = "Objectives",
        item = "CIT_020_OBJ_F",
        id = "126425",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.triggerId = "2077452149209449165";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075684079891650520";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_2_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#8516D45D";
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075684079891650520";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_6_Removed;
    l0:Remove();
end;

function export:f_6_Removed()
    self = self._graph;
    self:Completed();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Stop();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0.vehicle;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0.Entities = self.ePlayerVehicle;
    l0.Group = "#8516D45D";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_2_Added()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.triggerId = "2077769868993653878";
    l0:Enable();
end;

function export:f_8_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = Globals.CIT_020_MAIN.ePlayer;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
