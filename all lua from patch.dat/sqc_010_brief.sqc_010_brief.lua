-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_hubandchainquests/sqc_010/sqc_010_brief.domino.xml
-- User graph: SQC_010_BRIEF
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
    luaDepTable[1] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_BRIEF.SQC_010_BRIEF_B10.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionEnd_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionEnd_v3.lua");
    l0 = self[1];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Added = self.f_3_Added;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Completed = self.f_2_Completed;
    l0.Failed = self.f_2_Failed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0.Marker = "2075895445135045996";
    l0:In();
end;

function export:Scan()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Fail();
end;

function export:f_3_Added()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:In();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Complete();
end;

function export:f_2_Failed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.MissionBlockId = "138274013124921";
    l0.MissionScript = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_BRIEF.SQC_010_BRIEF_B10.lua";
    l0.DBGSpawn = "2075798852312511246";
    l0.EndSpawn = "2075798852312511246";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
