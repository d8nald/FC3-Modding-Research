-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b10/den_040_b10.domino.xml
-- User graph: DEN_040_B10
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B10_Init.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B10_VantagePoint.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.OBJ_DisableAlarm.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[22] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_22_Out_0;
    l0.ResetOut = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.ResetOut = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[3];
    l0._graph = self;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B10_Init.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.OBJ_DisableAlarm.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.AlarmWasActivated = self.f_1_AlarmWasActivated;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Acknowledged = self.f_13_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[18] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
    l0 = self[18];
    l0._graph = self;
    l0.WarningZoneEntered = DummyFunction;
    l0.FailingZoneEntered = self.f_18_FailingZoneEntered;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[2];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B10_VantagePoint.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0.AlarmActivated = self.f_8_AlarmActivated;
    l0.AlarmOff = self.f_8_AlarmOff;
    self[21] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_21_Out_0;
    l0.ResetOut = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[23] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_23_Out_0;
    l0.ResetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[12];
    l0.triggerId = "2073170030459100676";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077330718054164808";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:OnLeaveZone()
    local l0;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_22_Out_0()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:AlarmOff();
end;

function export:f_17_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760141560883361";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_10_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760156704417988";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_17_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:AlarmActivated();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.DEN_040_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_19_Out_0;
    l0.Out[1] = self.f_19_Out_1;
    l0:In();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Acknowledge();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Initialize();
end;

function export:f_1_AlarmWasActivated()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0:In(0);
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0:In(0);
end;

function export:f_13_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Send();
end;

function export:f_18_FailingZoneEntered()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_5_Stopped()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Fail();
end;

function export:f_19_Out_0()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Disable();
end;

function export:f_19_Out_1()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Complete();
end;

function export:f_11_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076488639184950916";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_STR_Play_LP";
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_8_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In(0);
end;

function export:f_8_AlarmOff()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In(0);
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:In(0);
end;

function export:f_10_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760142540253347";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_11_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_21_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:False();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In();
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_23_Out_0()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_5_Stopped;
    l0:Stop();
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.WarningZoneTrigger = "2078612594809128409";
    l0.FailingZoneTrigger = "2078612633881167340";
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_STR_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
