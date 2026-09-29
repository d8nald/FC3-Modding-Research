-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_AIInvincibility.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_ExpDevicesListener.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_IsReloaded.lua");
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
    self[12] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[12];
    l0._graph = self;
    self[17] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_17_AlarmActivated;
    l0.AlarmDeactivated = self.f_17_AlarmDeactivated;
    l0.AlarmDisabled = self.f_17_AlarmDisabled;
    l0.AlarmDestroyed = self.f_17_AlarmDestroyed;
    self[10] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Acknowledged = self.f_10_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_ExpDevicesListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.FailbyDefusing = DummyFunction;
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
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState2.lua");
    l0 = self[15];
    l0._graph = self;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_IsReloaded.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_AIInvincibility.lua");
    l0 = self[4];
    l0._graph = self;
    l0.SamIsKilled = self.f_4_SamIsKilled;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[7];
    l0._graph = self;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.SAM_015_BackupAlarmState.lua");
    l0 = self[16];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[10];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_11_Stopped;
    l0:Stop();
end;

function export:f_17_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[17];
    l1 = self[15];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmActivated();
end;

function export:f_17_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[17];
    l1 = self[15];
    l1.DestroyedAlarm = l0.Alarm;
end;

function export:f_17_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[17];
    l1 = self[15];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDestroyed();
end;

function export:f_17_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[17];
    l1 = self[15];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDisabled();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Failed Conditions",
        item = "SAM_015_FAILS_TruckDestroyed",
        id = "71310",
    };
    l0:Fail();
end;

function export:f_10_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:False();
end;

function export:f_11_Stopped()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Reload = true;
    l0:Fail();
end;

function export:f_14_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[16];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmActivated();
end;

function export:f_14_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[16];
    l1.DestroyedAlarm = l0.Alarm;
end;

function export:f_14_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[16];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDestroyed();
end;

function export:f_14_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = self[16];
    l1.DestroyedAlarm = l0.Alarm;
    l1:AlarmDisabled();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
    l0 = self[1];
    l0:In();
end;

function export:f_4_SamIsKilled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0:Stop();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.SAM_015_MAIN.IsSam015Reloaded = l0.Target;
    l0 = self[3];
    l0:Complete();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.AlarmGroup = "#E31BE937";
    l0:Enable();
    l0 = self[17];
    l0.AlarmGroup = "#0D15881B";
    l0:Enable();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
