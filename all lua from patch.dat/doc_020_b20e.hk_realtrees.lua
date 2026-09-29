-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: HK_Realtrees
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="growthEntityId" Type="Nomad|entity{}" />
    <DataIn Name="growthPerc" Type="Core|float" />
    <DataIn Name="growthSpeed" Type="Core|float" />
    <DataIn Name="growthGroup" Type="Nomad|group" />
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/System/UpdateRealTree_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.SetCurrentSizeOut = DummyFunction;
    self.GrowthTreeCompleted = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/UpdateRealTree_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.GrowthCompleted = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/UpdateRealTree_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Stopped = DummyFunction;
    l0.GrowthCompleted = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:GrowthTree()
    local l0;
    l0 = self[3];
    l0.RealTrees = self.growthGroup;
    l0.GrowthPerc = self.growthPerc;
    l0.Speed = self.growthSpeed;
    l0:GrowthTree();
end;

function export:SetCurrentSize()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.growthEntityId;
    l0.Group = self.growthGroup;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.RealTrees = self.growthGroup;
    l0.GrowthPerc = 0;
    l0:SetCurrentSize();
end;

function export:f_1_Out()
    self = self._graph;
    self:SetCurrentSizeOut();
end;

-- Empty out anchor definitions
function export:SetCurrentSizeOut()
    
end;
function export:GrowthTreeCompleted()
    
end;
_compilerVersion = 24;
