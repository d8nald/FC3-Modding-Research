-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: SpawnSniperNestCrew
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
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.AIAlertOrInCombat = DummyFunction;
    self.ePlayer = nil;
    self.RoadBlockerTruck = {
    };
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_1_Spawned;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_5_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_4_Loaded;
    l0.Unloaded = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_12_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[4];
    l0.entityId = "2074908488458311760";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SPAWN 2 GUY";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2075422294383009881";
    l0.Battlefield = "2075434383629637563";
    l0.IdleBSR = "2075434383629637563";
    l0.AlertBSR = "2075434383629637563";
    l0.CombatBSR = "2075434383629637563";
    l0:SpawnInRelax();
end;

function export:f_1_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.Out[1] = self.f_6_Out_1;
    l0:In();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2077189644476229694";
    l0.Battlefield = "2074908488458311760";
    l0.IdleBSR = "2074908488458311760";
    l0.AlertBSR = "2074908488458311760";
    l0.CombatBSR = "2075434383629637563";
    l0:SpawnInRelax();
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.entityId = "2077189644476229694";
    l0:Enable();
end;

function export:f_7_Out_1()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = "2075422294383009881";
    l0:Enable();
end;

function export:f_5_StateStart()
    self = self._graph;
    self:AIAlertOrInCombat();
end;

function export:f_4_Loaded()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.entityId = "2075434383629637563";
    l0:Enable();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Alert();
end;

function export:f_6_Out_1()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Combat();
end;

function export:f_12_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_7_Out_0;
    l0.Out[1] = self.f_7_Out_1;
    l0:In();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.group = "#24E46EBF";
end;

-- Empty out anchor definitions
function export:AIAlertOrInCombat()
    
end;
_compilerVersion = 24;
