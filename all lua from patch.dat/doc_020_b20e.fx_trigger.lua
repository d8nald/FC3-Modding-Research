-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: FX_Trigger
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="etrigger" Type="Nomad|entity{}" />
    <DataIn Name="DisablePostFX" Type="Core|string" />
    <DataIn Name="EnablePostFX" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_4_Leave;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = self.etrigger;
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetEnabled();
end;

function export:StartWithNoTrigger()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_4_Leave()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.triggerId = self.etrigger;
    l0:Enable();
end;

function export:f_3_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = self.EnablePostFX;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Enable();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = self.DisablePostFX;
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
