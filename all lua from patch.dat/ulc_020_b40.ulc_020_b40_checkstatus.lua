-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b40/ulc_020_b40.domino.xml
-- User graph: ULC_020_B40_CheckStatus
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_2_StateStart;
    l0.StateStop = self.f_2_StateStop;
    l0.MemberInState = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_2_StateStart()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_2_StateStop()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Stop();
    self:en_4();
    l0:Start();
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[2];
    l0.group = "#F79A7707";
    l0.autoDisable = false;
    l0:Combat();
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_CIT050_Action_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS020_RunForYourLife_LP.wav";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.seconds = 10;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
