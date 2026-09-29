-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: ULC_010_B21
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
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.B21_Objective.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Big_Door_Control.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Enemy_Group_02.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Initial_Setting.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Power_On.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Initial_Setting.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[18] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Power_On.lua");
    l0 = self[8];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Big_Door_Control.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
    l0 = self[16];
    l0._graph = self;
    self[17] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Acknowledged = self.f_17_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.AdvancedMusicPlayer.lua");
    l0 = self[14];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.B21_Objective.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.ObjectiveComplete = self.f_3_ObjectiveComplete;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Enemy_Group_02.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
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
    l0.Out = self.f_12_Out;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_010_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:Disable();
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    l0 = self[16];
    l0.MusicInterval = 5;
    l0:StopAllCombatMusic();
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
end;

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_9_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Group = "#0B8EA495";
    l0.MusicInterval = 5;
    l0:In();
    l0 = self[8];
    l0:In();
    l0 = self[1];
    l0:In();
end;

function export:f_10_Disabled()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Acknowledge();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_010_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_9_A_is_True;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:f_17_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:Send();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_ULCs:ULC_Common.ULC_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_ULCs:ULC_Common.ULC_Lighting";
    l0.exposure = "SHA_Quest_ULCs:ULC_Common.ULC_Exposure";
    l0.fog = "SHA_Quest_ULCs:ULC10.ULC10_Fog";
    l0.sky = "SHA_Quest_ULCs:ULC_Common.ULC_Skydome";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "Preview_Lighting:Preview_AdaptiveBloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "Preview_Lighting:Preview_DoF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_10_Disabled;
    l0:Disable();
end;

function export:f_3_ObjectiveComplete()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:False();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B21 Complete";
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
