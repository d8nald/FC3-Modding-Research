-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20_DangerZone
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
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out_Disabled = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_6_Disabled;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_4_Disabled;
    l0.Enter = self.f_4_Enter;
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
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:In_stop()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Disable();
    self:en_4();
    l0 = self[4];
    l0:Disable();
    self:en_6();
    l0 = self[6];
    l0:Disable();
end;

function export:f_6_Disabled()
    self = self._graph;
    self:Out_Disabled();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0:Damage();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
    self:en_6();
    l0 = self[6];
    l0:Enable();
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_2_Disabled()
    self = self._graph;
    self:Out_Disabled();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0:Damage();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_4_Disabled()
    self = self._graph;
    self:Out_Disabled();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0:Damage();
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.triggerId = "2076866230007904485";
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.triggerId = "2076604966551692986";
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.triggerId = "2076713725538079976";
end;

-- Empty out anchor definitions
function export:Out_Disabled()
    
end;
_compilerVersion = 24;
