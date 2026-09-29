-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_poisquests/g2/sqw_g2_main/sqw_g2_b10.domino.xml
-- User graph: SQW_G2_B10
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.WantedSideQuestLib.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[1];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[2];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.WantedSideQuestLib.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.TakedownFail = self.f_3_TakedownFail;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[5];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.WantedSideQuestLib.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0.Acknowledged = self.f_12_Acknowledged;
    l0.TakedownFail = self.f_12_TakedownFail;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[13];
    l0._graph = self;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = self.f_11_Unloaded;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[11];
    l0.entityId = "2076416613487245648";
    l0:Enable();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[5];
    l0:Fail();
end;

function export:f_3_Acknowledged()
    local l0, l1;
    self = self._graph;
    l0 = self[3];
    l1 = self[2];
    l1.failedCondition = l0.FailReason;
end;

function export:f_3_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[3];
    l1 = self[2];
    l1.failedCondition = l0.FailReason;
    l0 = self[1];
    l0:Complete();
end;

function export:f_3_TakedownFail()
    local l0, l1;
    self = self._graph;
    l0 = self[3];
    l1 = self[2];
    l1.failedCondition = l0.FailReason;
    l1:Fail();
end;

function export:f_12_Acknowledged()
    local l0, l1;
    self = self._graph;
    l0 = self[12];
    l1 = self[13];
    l1.failedCondition = l0.FailReason;
end;

function export:f_12_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[12];
    l1 = self[13];
    l1.failedCondition = l0.FailReason;
    l0 = self[1];
    l0:Complete();
end;

function export:f_12_TakedownFail()
    local l0, l1;
    self = self._graph;
    l0 = self[12];
    l1 = self[13];
    l1.failedCondition = l0.FailReason;
    l1:Fail();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.MissionAckZone = "2076264198406422017";
    l0.QuestObjectiveMarker = "2076264198406422015";
    l0.TargetToKill_0 = "2076416613487245648";
    l0.TargetToKill_1 = "2077966116356902410";
    l0.bSouthIsland = true;
    l0.RestrictedAreaMB = "27159876856755878";
    l0.RestrictedAreaLayer = "9145499834803762";
    l0:In();
end;

function export:f_11_Unloaded()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.MissionAckZone = "2076264198406422017";
    l0.QuestObjectiveMarker = "2076264198406422015";
    l0.TargetToKill_0 = "2077966116356902410";
    l0.bSouthIsland = true;
    l0.RestrictedAreaMB = "27159876856755878";
    l0.RestrictedAreaLayer = "9145499834803762";
    l0:In();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
