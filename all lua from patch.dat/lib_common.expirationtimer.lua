-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: ExpirationTimer
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Time" Type="Core|float" />
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
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/Coop/Timer/Timer_v3.lua");
        cbox:RegisterBox("Domino/System/Coop/Timer/TimerListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Expired = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Coop/Timer/TimerListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnTime = self.f_2_OnTime;
    self[1] = cbox:CreateBox("Domino/System/Coop/Timer/Timer_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Expired = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Hide();
    self:en_1();
    l0 = self[1];
    l0:Disable();
end;

function export:Enable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_2_OnTime()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Hide();
    self:Expired();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Show();
    l0 = self[2];
    l0.TimerName = "Default";
    l0.Time = self.Time;
    l0:OnTimeElapsed();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.TimerName = "Default";
    l0.InitialTime = self.Time;
    l0.Increasing = false;
    l0.ShowGUI = false;
    l0.UITextOasis = {
        section = "",
        item = "",
        id = "",
    };
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.time = self.Time;
end;

-- Empty out anchor definitions
function export:Expired()
    
end;
_compilerVersion = 24;
