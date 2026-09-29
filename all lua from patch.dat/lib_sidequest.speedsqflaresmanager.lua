-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: SpeedSQFlaresManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Flare" Type="Nomad|entity{}" />
    <DataIn Name="Marker" Type="Nomad|entity{}" />
    <DataIn Name="Vehicle" Type="Nomad|entity{}" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ProximityReach = DummyFunction;
    self.Enabled = DummyFunction;
    self.Disabled = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0.Near = self.f_2_Near;
    l0.Far = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_1_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Flare;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_7_Yes;
    l0.No = self.f_7_No;
    l0:Entity();
end;

function export:Enable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:SetMarker()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Marker;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_2_Near()
    local l0;
    self = self._graph;
    self:ProximityReach();
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_1_Enabled()
    self = self._graph;
    self:Enabled();
end;

function export:f_1_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Flare;
    l0._graph = self;
    l0.Started = self.f_5_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Marker;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_9_Removed;
    l0:Remove();
end;

function export:f_7_No()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Disable();
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_7_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_9_Removed()
    self = self._graph;
    self:Disabled();
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Entities = self.Flare;
    l0.id2 = self.Vehicle;
    l0.nearZone = 12;
    l0.use2d = true;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.entityId = self.Flare;
    l0.autoDisable = false;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Flare;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:ProximityReach()
    
end;
function export:Enabled()
    
end;
function export:Disabled()
    
end;
_compilerVersion = 24;
