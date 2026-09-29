-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_170/jas_170_b05/jas_170_b05.domino.xml
-- User graph: LandingListener
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
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/LandingListener.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/StanceListener.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Succeeded = DummyFunction;
    self.Failed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Player/LandingListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnLanded = self.f_3_OnLanded;
    self[4] = cbox:CreateBox("Domino/System/Player/LandingListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = self.f_4_Disabled;
    l0.OnLanded = self.f_4_OnLanded;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/StanceListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = self.f_6_Enabled;
    l0.Disabled = self.f_6_Disabled;
    l0.Stand = DummyFunction;
    l0.Crouch = DummyFunction;
    l0.Swim = self.f_6_Swim;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    l0 = self[4];
    l0:Disable();
end;

function export:Enable()
    local l0;
    l0 = self[4];
    l0:Enable();
end;

function export:f_10_Out()
    self = self._graph;
    self:Failed();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075824200064444277";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SetEnabled();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_3_OnLanded()
    self = self._graph;
    self:Succeeded();
end;

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Landed Too Far Disabled";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "Yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Enable();
end;

function export:f_4_OnLanded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Landed Too Far Fail";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "Red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Enable();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Land In Town Fail";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "Red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075824200064444277";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetDisabled();
end;

function export:f_6_Enabled()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.entityId = "2075824200064444277";
    l0:Enable();
end;

function export:f_6_Swim()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Disable();
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.triggerId = "2075824200064444277";
end;

-- Empty out anchor definitions
function export:Succeeded()
    
end;
function export:Failed()
    
end;
_compilerVersion = 24;
