-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b20/wil_050_b20.domino.xml
-- User graph: WIL_050_B20
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.LOG_IsMissionRestartedB20.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.OBJ_FreeTheTarget.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.OBJ_OliverReachJason.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[20] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[20];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.OBJ_FreeTheTarget.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.OliverHasBeenKill = self.f_7_OliverHasBeenKill;
    l0.BoatIsDestroy = self.f_7_BoatIsDestroy;
    l0.OliverIsInChopper = self.f_7_OliverIsInChopper;
    self[17] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[17];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.LOG_IsMissionRestartedB20.lua");
    l0 = self[10];
    l0._graph = self;
    l0.MissionIsInPlaytrough = self.f_10_MissionIsInPlaytrough;
    l0.MissionIsRestarted = self.f_10_MissionIsRestarted;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[3];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Acknowledged = self.f_4_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.OBJ_OliverReachJason.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0.OliverHasBeenKill = self.f_15_OliverHasBeenKill;
    l0.BoatIsDestroy = self.f_15_BoatIsDestroy;
    self[13] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[2];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BEAT02STARTED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = self[4];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[13];
    l0.initStateOpen = false;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.Out[1] = self.f_24_Out_1;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_23_Out_0;
    l0.Out[1] = self.f_23_Out_1;
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:Enable();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_24_Out_1()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_OliverBoatDestroyed",
        id = "103797",
    };
    l0:Fail();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_OliverInChopper",
        id = "159699",
    };
    l0:Fail();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.Out[1] = self.f_25_Out_1;
    l0:In();
end;

function export:f_7_BoatIsDestroy()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_OliverHasBeenKill()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_OliverIsInChopper()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In();
end;

function export:f_10_MissionIsInPlaytrough()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "PLAYTROUGH";
    l0.int = nil;
    l0.float = 60;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_10_MissionIsRestarted()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "RESTARTED";
    l0.int = nil;
    l0.float = 60;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = self[7];
    l0:MissionIsRestarted();
end;

function export:f_4_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2072407926571538731";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_27_Removed;
    l0:Remove();
    l0 = self[10];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BEAT02ACKNOLEDGE";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_25_Out_1()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_15_BoatIsDestroy()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_OliverHasBeenKill()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:False();
end;

function export:f_27_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Brief marker removed.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.WIL_050_MAIN.WIL_050_MainIsReloaded = l0.Target;
    l0 = self[2];
    l0.Save = false;
    l0:Complete();
end;

function export:f_23_Out_0()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_23_Out_1()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_OliverHasBeenKilled",
        id = "103796",
    };
    l0:Fail();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Reload = true;
    l0:Fail();
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
