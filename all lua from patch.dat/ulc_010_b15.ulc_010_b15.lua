-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b15/ulc_010_b15.domino.xml
-- User graph: ULC_010_B15
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
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.ControlRoomEnemies.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Initial_Setting.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.Power_On.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.Power_Puzzle.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.Power_On.lua");
    l0 = self[6];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[7];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B11/ULC_010_B11.Initial_Setting.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.ControlRoomEnemies.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B15/ULC_010_B15.Power_Puzzle.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.PowerPuzzleComplete = self.f_5_PowerPuzzleComplete;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
    l0 = self[11];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 974;
    l0.posY = 1460;
    l0.posZ = 219;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:Enable();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Group = "#0B8EA495";
    l0.MusicInterval = 5;
    l0:In();
    l0 = self[10];
    l0:In();
    l0 = self[2];
    l0:Send();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_010_MAIN.IsReloaded = l0.Target;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_8();
    l0:ToScreen();
    l0 = self[7];
    l0:Complete();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:False();
end;

function export:f_5_PowerPuzzleComplete()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In();
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B15 Complete";
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
_compilerVersion = 24;
