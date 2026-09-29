-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_DrunkWalk
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/Player/InventoryWieldModifier.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[CIntoxicatedMiniGame]], "CGSFResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Started = DummyFunction;
    self.Stopped = DummyFunction;
    self.ePlayer = nil;
    self[1] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        entity = {
            "InteractTrigger/EntityID",
        },
        string = {
            "SwayHCurve",
            "SwayVCurve",
        },
        float = {
            "WatchHandsDuration",
            "MovementspeedFactor",
            "SwayHSizeMultiplier",
            "SwayVSizeMultiplier",
            "SwayHSpeedMultiplier",
            "SwayVSpeedMultiplier",
        },
        bool = {
            "EnableDebug",
            "DisableDrunkenControl",
        },
    };
    l0.Started = self.f_1_Started;
    l0.Stopped = self.f_1_Stopped;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:Stop()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Stop();
end;

function export:f_12_AutoDrawDisabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Disable auto draw enabled.";
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
    self:Stopped();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    self:Started();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Intoxicated walk enabled.";
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

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/InventoryWieldModifier.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.AutoDrawEnabled = DummyFunction;
    l0.AutoDrawDisabled = self.f_12_AutoDrawDisabled;
    l0.Error = DummyFunction;
    l0:DisableAutoDraw();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Intoxicated walk disabled.";
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

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    self:en_1();
    l0 = self[1];
    l0:Start();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.GSFName = "CIntoxicatedMiniGame";
    l0.float["MovementspeedFactor"] = 1.9;
    l0.float["SwayHSizeMultiplier"] = 0.1;
    l0.float["SwayVSizeMultiplier"] = 0.1;
    l0.float["SwayHSpeedMultiplier"] = 0.1;
    l0.float["SwayVSpeedMultiplier"] = 0.1;
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Stopped()
    
end;
_compilerVersion = 24;
