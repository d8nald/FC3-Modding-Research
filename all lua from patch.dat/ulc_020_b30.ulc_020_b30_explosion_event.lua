-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b30/ulc_020_b30.domino.xml
-- User graph: ULC_020_B30_Explosion_event
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_1_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2076880080547619289";
    l0:Enable();
    self:Out();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:D_Flame();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076880122947838428";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_1_Destroyed;
    l0:Destroy();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
