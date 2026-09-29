-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_poisquests/g2/sqw_g2_main/sqw_g2_main.domino.xml
-- User graph: SQW_G2_MAIN
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
    luaDepTable[1] = "Domino/user/fc3/FC3_POIsQuests/G2/SQW_G2_MAIN/SQW_G2_B10.SQW_G2_B10.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/UI/CreateTutorialMsgBox_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionInit.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionInit.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Completed = self.f_1_Completed;
    l0.Failed = self.f_1_Failed;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[5];
    l0._graph = self;
    l0.None_Completed = self.f_5_None_Completed;
    l0.One_Completed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
    l0 = self[2];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0.LocationMarker = "2077869108182948402";
    l0.ObjectiveString = {
        section = "Common",
        item = "SQA_SQW_ReachLocation",
        id = "149338",
    };
    l0.AcknowledgeZone = "2076264198406422017";
    l0.displayMissionTitle = true;
    l0:In();
    l0 = self[5];
    l0:SQW();
end;

function export:Scan()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Scan();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Fail();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:In();
end;

function export:f_1_Completed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Complete();
end;

function export:f_1_Failed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_5_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_OPENWORLD_WANTED",
        id = "160314",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_OPENWORLD_WANTED_DESC",
        id = "160315",
    };
    l0.highPriority = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.MissionBlockId = "27159876856755878";
    l0.MissionScript = "Domino/user/fc3/FC3_POIsQuests/G2/SQW_G2_MAIN/SQW_G2_B10.SQW_G2_B10.lua";
    l0.DBGSpawn = "2076264198406422021";
    l0.EndSpawn = "2076264198406422021";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
