-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b10/den_040_b10.domino.xml
-- User graph: DEN_040_B10_VantagePoint
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
        cbox:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_BackupAlarmState.lua");
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupState.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.AlarmActivated = DummyFunction;
    self.AlarmOff = DummyFunction;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_BackupAlarmState.lua");
    l0 = self[20];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.ResetOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[14] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_14_AlarmActivated;
    l0.AlarmDeactivated = self.f_14_AlarmDeactivated;
    l0.AlarmDisabled = self.f_14_AlarmDisabled;
    l0.AlarmDestroyed = self.f_14_AlarmDestroyed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[10];
    l0.objectiveId = {
        section = "Objectives",
        item = "JAS200_OBJ_GetInPosition",
        id = "79789",
    };
    l0:SetMissionObjective();
    l0 = self[14];
    l0.AlarmGroup = "#3E17E227";
    l0:Enable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.objectiveId = {
        section = "Objectives",
        item = "KEB02_OBJ_A",
        id = "41921",
    };
    l0:SetMissionObjective();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075630969777301491";
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetAsNotPickable();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.triggerId = "2076957041278088264";
    l0:Enable();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = self.f_15_Out_1;
    l0:In();
end;

function export:f_1_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076955703582407884";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SetDisabled();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.triggerId = "2076955703582407884";
    l0:Enable();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076955703582407884";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetEnabled();
end;

function export:f_15_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076957041278088264";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:SetEnabled();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_18_Out()
    self = self._graph;
    self:Out();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076957041278088264";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:SetDisabled();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.textId = {
        section = "Tutorials",
        item = "WIKI_TUTO_SYSTEMS_TAGGINGVANTAGEPOINTS",
        id = "110846",
    };
    l0.displaySlotId = 1;
    l0.displayTimer = 10;
    l0:DisplayText();
end;

function export:f_14_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[20];
    l1.DestoryedAlarm = l0.Alarm;
    l1:AlarmActivated();
    self:AlarmActivated();
end;

function export:f_14_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[20];
    l1.DestoryedAlarm = l0.Alarm;
end;

function export:f_14_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[20];
    l1.DestoryedAlarm = l0.Alarm;
    self:AlarmOff();
    l1:AlarmDestroyed();
end;

function export:f_14_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[20];
    l1.DestoryedAlarm = l0.Alarm;
    l1:AlarmDisabled();
    self:AlarmOff();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:AlarmActivated()
    
end;
function export:AlarmOff()
    
end;
_compilerVersion = 24;
