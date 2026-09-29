-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: __ExoticFailOrSuccess
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
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Fail = DummyFunction;
    self.Success = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_6_Received;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:Out();
    l0 = self[1];
    l0.message = "ex_bambifightexit_jason_STINGER";
    l0:Enable();
    self:en_2();
    l0 = self[2];
    l0:Enable();
    self:en_6();
    l0 = self[6];
    l0:Enable();
end;

function export:Stop()
    local l0;
    self:en_6();
    l0 = self[6];
    l0:Disable();
    self:en_2();
    l0 = self[2];
    l0:Disable();
    self:Out();
end;

function export:f_6_Received()
    self = self._graph;
    self:Fail();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    self:Success();
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_7();
    l0:ToConsole();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_BAM060_KnifeFight_EndStinger";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.message = "PlayerDie";
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "!!! Received Message: QTE SUCCESS";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.message = "QTE3_Success";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Fail()
    
end;
function export:Success()
    
end;
_compilerVersion = 24;
