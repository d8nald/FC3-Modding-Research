-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_FailCondition
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
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MissionFail = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Hide();
end;

function export:Enable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Show();
end;

function export:f_1_TimeElapsed()
    self = self._graph;
    self:MissionFail();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.time = 180;
end;

-- Empty out anchor definitions
function export:MissionFail()
    
end;
_compilerVersion = 24;
