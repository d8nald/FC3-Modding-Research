-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b11/ulc_010_b11.domino.xml
-- User graph: ULC_010_B11
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
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.AC3_Document.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.B11_Dialog.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Enemy_Group_01.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Initial_Setting.lua");
        cbox:RegisterBox("Domino/System/IsMissionQuicklaunched.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Objective.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/QuickLaunchPlayerSetup.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.AC3_Document.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Objective.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.ObjectiveComplete = self.f_12_ObjectiveComplete;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.B11_Dialog.lua");
    l0 = self[14];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[8];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Enemy_Group_01.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Acknowledged = self.f_6_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[17] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
    l0 = self[17];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Initial_Setting.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsMissionQuicklaunched.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 974;
    l0.posY = 1460;
    l0.posZ = 219;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:Enable();
end;

function export:OnLeaveZone()
    
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/QuickLaunchPlayerSetup.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:PlayerLevel2();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
end;

function export:f_12_ObjectiveComplete()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:False();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_010_MAIN.IsReloaded = l0.Target;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_5();
    l0:ToScreen();
    l0 = self[8];
    l0:Complete();
end;

function export:f_6_Acknowledged()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_1();
    l0:ToConsole();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_PRO_Exploration";
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:In();
    l0 = self[10];
    l0:In();
    l0 = self[14];
    l0:In();
    l0 = self[17];
    l0.Group = "#0B8EA495";
    l0.MusicInterval = 5;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Acknowledge();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ULC_010_B11 started.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B11 Complete";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
