-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: SideQuestAcknowledge
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="BriefingName" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Acknowledged = DummyFunction;
    self.NotAcknowledged = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:IsAcknowledged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.BriefingName;
    l0._graph = self;
    l0.Locked = self.f_13_Locked;
    l0.Running = self.f_13_Running;
    l0.Acknowledged = self.f_13_Acknowledged;
    l0.Completed = self.f_13_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_13_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_13_Acknowledged()
    local l0;
    self = self._graph;
    self:Acknowledged();
    l0 = self[2];
    l0:Close();
end;

function export:f_13_Completed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_13_Hidden()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_13_Locked()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_13_Running()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_1_Out_0()
    self = self._graph;
    self:NotAcknowledged();
end;

-- Empty out anchor definitions
function export:Acknowledged()
    
end;
function export:NotAcknowledged()
    
end;
_compilerVersion = 24;
