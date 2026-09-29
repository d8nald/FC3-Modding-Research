-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter01
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/JAS_020/JAS_020_MAIN.JAS_020_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cbox:RegisterBox("Domino/System/Player/EnableConditionalZoneEvents.lua");
        cbox:RegisterBox("Domino/System/IsMissionQuicklaunched.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ShowTattoo.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    l0.Failed = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_17_Out_0;
    l0.Out[1] = self.f_17_Out_1;
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Error = DummyFunction;
    l0:Enable();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_22_Disabled;
    l0.Error = DummyFunction;
    l0:Disable();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.timeScale = 1;
    l0:SetTimeScale();
end;

function export:f_5_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "default";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Set();
end;

function export:f_5_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 1 Completed";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:Completed();
end;

function export:f_22_Disabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.WeaponType = "gadgets:Equipped/Binoculars";
    l0:AddGadget();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Disable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsMissionQuicklaunched.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_5_Out_0;
    l0.Out[1] = self.f_5_Out_1;
    l0:In();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 01 Initialization ... Done.";
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
    l0:ToScreen();
    self:Initialized();
end;

function export:f_17_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = DummyFunction;
    l0.TattooHidden = DummyFunction;
    l0:HideTattoo();
end;

function export:f_17_Out_1()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_020/JAS_020_MAIN.JAS_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
