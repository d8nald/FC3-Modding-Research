-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b30/sam_015_b30.domino.xml
-- User graph: SAM_015_B30
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_AIInvincibility.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.Sam_015_B30_IsReloaded.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_TriggerRoad.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self[18] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState.lua");
    l0 = self[18];
    l0._graph = self;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_TriggerRoad.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0.PlayerNoLongerInvincible = self.f_6_PlayerNoLongerInvincible;
    l0.SamGetOff = self.f_6_SamGetOff;
    l0.PlayerDontGetInTheTurret = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[11];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[10];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.Sam_015_B30_IsReloaded.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[16] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_16_AlarmActivated;
    l0.AlarmDeactivated = self.f_16_AlarmDeactivated;
    l0.AlarmDisabled = self.f_16_AlarmDisabled;
    l0.AlarmDestroyed = self.f_16_AlarmDestroyed;
    self[20] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_20_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = DummyFunction;
    l0.Unloaded = self.f_19_Unloaded;
    self[17] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState2.lua");
    l0 = self[17];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[3];
    l0._graph = self;
    self[14] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_14_AlarmActivated;
    l0.AlarmDeactivated = self.f_14_AlarmDeactivated;
    l0.AlarmDisabled = self.f_14_AlarmDisabled;
    l0.AlarmDestroyed = self.f_14_AlarmDestroyed;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_AIInvincibility.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Fail = self.f_2_Fail;
    self[13] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = DummyFunction;
    l0.Unloaded = self.f_13_Unloaded;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Acknowledged = self.f_4_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[4];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_ACT_Epic";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_5_Stopped;
    l0:Stop();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.AlarmGroup = "#0D15881B";
    l0:Enable();
    l0 = self[16];
    l0.AlarmGroup = "#E31BE937";
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:False();
end;

function export:f_6_PlayerNoLongerInvincible()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:PlayerNonLongerInvincible();
end;

function export:f_6_SamGetOff()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:SamGetsOff();
end;

function export:f_5_Stopped()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Reload = true;
    l0:Fail();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.SAM_015_MAIN.IsSam015Reloaded = l0.Target;
    l0 = self[3];
    l0.Save = false;
    l0:Complete();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075975983900400562";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_9_Added;
    l0.Removed = DummyFunction;
    l0:Add();
    l0 = self[6];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_16_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[16];
    l1 = self[18];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmActivated();
end;

function export:f_16_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[16];
    l1 = self[18];
    l1.DestroyedAlarm = l0.Alarm;
end;

function export:f_16_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[16];
    l1 = self[18];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDestroyed();
end;

function export:f_16_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[16];
    l1 = self[18];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDisabled();
end;

function export:f_20_Out_0()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Disable();
    self:en_19();
    l0 = self[19];
    l0:Disable();
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_19_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:In(0);
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:Enable();
    self:en_13();
    l0 = self[13];
    l0:Enable();
end;

function export:f_14_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[17];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmActivated();
end;

function export:f_14_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[17];
    l1.DestroyedAlarm = l0.Alarm;
end;

function export:f_14_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[17];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDestroyed();
end;

function export:f_14_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[17];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDisabled();
end;

function export:f_2_Fail()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_9_Added()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_13_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:In(0);
end;

function export:f_4_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Failed Conditions",
        item = "SAM_015_FAILS_TruckDestroyed",
        id = "71310",
    };
    l0:Fail();
end;

function export:en_19()
    local l0;
    l0 = self[19];
    l0.entityId = "2078294646217262066";
    l0.autoDisable = false;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.entityId = "2074868928208701670";
    l0.autoDisable = false;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_ACT_Epic";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
