-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: LOG_KeyEntityLoaded
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_1_Loaded;
    l0.Unloaded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_2_Loaded;
    l0.Unloaded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_4_Loaded;
    l0.Unloaded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_3_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0.entityId = "2077152905527331684";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_1_Loaded()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.entityId = "2077152905061763938";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_2_Loaded()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.entityId = "2074580005934872968";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_TimeElapsed()
    self = self._graph;
    self:Out();
end;

function export:f_4_Loaded()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_3_Loaded()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.entityId = "2077152902327077728";
    l0.autoDisable = false;
    l0:Enable();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
