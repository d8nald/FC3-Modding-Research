-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: IsAnySideQuestBriefingAcknowledged
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
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Yes = DummyFunction;
    self.No = DummyFunction;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = self.f_1_NotAcknowledged;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Acknowledged = self.f_9_Acknowledged;
    l0.NotAcknowledged = self.f_9_NotAcknowledged;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = self.f_5_NotAcknowledged;
    self[13] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Acknowledged = DummyFunction;
    l0.NotAcknowledged = self.f_13_NotAcknowledged;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Acknowledged = self.f_7_Acknowledged;
    l0.NotAcknowledged = self.f_7_NotAcknowledged;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = self.f_3_NotAcknowledged;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Acknowledged = self.f_6_Acknowledged;
    l0.NotAcknowledged = self.f_6_NotAcknowledged;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Acknowledged = self.f_4_Acknowledged;
    l0.NotAcknowledged = self.f_4_NotAcknowledged;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Acknowledged = self.f_11_Acknowledged;
    l0.NotAcknowledged = self.f_11_NotAcknowledged;
    self[8] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Acknowledged = self.f_8_Acknowledged;
    l0.NotAcknowledged = self.f_8_NotAcknowledged;
    self[12] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Acknowledged = self.f_12_Acknowledged;
    l0.NotAcknowledged = self.f_12_NotAcknowledged;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Acknowledged = self.f_10_Acknowledged;
    l0.NotAcknowledged = self.f_10_NotAcknowledged;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestAcknowledge.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Acknowledged = self.f_2_Acknowledged;
    l0.NotAcknowledged = self.f_2_NotAcknowledged;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[7];
    l0.BriefingName = "SQH_010_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_1_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_1_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.BriefingName = "SQH_040_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_9_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_9_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.BriefingName = "SQC_080_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_5_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_5_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.BriefingName = "SQH_030_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_13_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.BriefingName = "SQC_010_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_7_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_7_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.BriefingName = "SQH_020_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_3_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_3_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.BriefingName = "SQC_060_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_6_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_6_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.BriefingName = "SQC_020_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_4_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_4_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.BriefingName = "SQC_090_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_11_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_11_NotAcknowledged()
    self = self._graph;
    self:No();
end;

function export:f_8_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_8_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.BriefingName = "SQC_100_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_12_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_12_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.BriefingName = "SQC_070_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_10_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_10_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.BriefingName = "SQC_040_BRIEF";
    l0:IsAcknowledged();
end;

function export:f_2_Acknowledged()
    self = self._graph;
    self:Yes();
end;

function export:f_2_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.BriefingName = "SQC_030_BRIEF";
    l0:IsAcknowledged();
end;

-- Empty out anchor definitions
function export:Yes()
    
end;
function export:No()
    
end;
_compilerVersion = 24;
