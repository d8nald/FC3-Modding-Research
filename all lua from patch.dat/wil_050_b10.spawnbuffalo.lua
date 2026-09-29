-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: SpawnBuffalo
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
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_5_Loaded;
    l0.Unloaded = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_6_Loaded;
    l0.Unloaded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_1_Loaded;
    l0.Unloaded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_3_Out_0;
    l0.Out[1] = self.f_3_Out_1;
    l0:In();
end;

function export:f_5_Loaded()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ReinforcementPoint = "2077276976627884600";
    l0.Battlefield = "2077276976625787447";
    l0.IdleBSR = "2077276976625787447";
    l0.AlertBSR = "2077276976625787447";
    l0.CombatBSR = "2077276976625787447";
    l0:SpawnInRelax();
end;

function export:f_6_Loaded()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2077277001065996858";
    l0.Battlefield = "2077276976625787447";
    l0.IdleBSR = "2077276976625787447";
    l0.AlertBSR = "2077276976625787447";
    l0.CombatBSR = "2077276976625787447";
    l0:SpawnInRelax();
end;

function export:f_1_Loaded()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2077189870907838630";
    l0.Battlefield = "2077189945413357738";
    l0.IdleBSR = "2077189945413357738";
    l0.AlertBSR = "2077189945413357738";
    l0.CombatBSR = "2077189945413357738";
    l0:SpawnInRelax();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.entityId = "2077276976627884600";
    l0:Enable();
end;

function export:f_8_Out_1()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.entityId = "2077277001065996858";
    l0:Enable();
end;

function export:f_3_Out_0()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.entityId = "2077189870907838630";
    l0:Enable();
end;

function export:f_3_Out_1()
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

-- Empty out anchor definitions
_compilerVersion = 24;
