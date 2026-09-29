-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: B21_Dialog
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
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018f16d]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f186.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f19a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f186]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f19a]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f16d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f271]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f271.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[5] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_5_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_3_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_7_Out_0;
    l0.ResetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.triggerId = "2076687007087595092";
    l0:Enable();
    l0 = self[3];
    l0.triggerId = "2076687128210706006";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[5];
    l0.triggerId = "2076687158757822040";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[10];
    l0.triggerId = "2078686857480120659";
    l0:Enable();
end;

function export:f_5_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f271";
    l0:Idle_Priority();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f16d";
    l0:Idle_Priority();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f186";
    l0:Idle_Priority();
end;

function export:f_3_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In(0);
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f19a";
    l0:Idle_Priority();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
