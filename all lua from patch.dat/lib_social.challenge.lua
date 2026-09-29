-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_social.domino.xml
-- User graph: Challenge
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ChallengeId" Type="Core|int" />
    <DataIn Name="PromptId" Type="Nomad|oasis" />
    <DataIn Name="Title" Type="Nomad|oasis" />
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
        cbox:RegisterBox("Domino/System/UI/CreateModalDialogBox.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SocChallengeListener_v2.lua");
        cbox:RegisterBox("Domino/System/SocChallengeModifier_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.InitOut = DummyFunction;
    self.RunOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/UI/CreateModalDialogBox.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Accept = self.f_3_Accept;
    l0.Cancel = self.f_3_Cancel;
    l0.Closed = self.f_3_Closed;
    self[1] = cbox:CreateBox("Domino/System/SocChallengeListener_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Init = self.f_1_Init;
    self[5] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.challengeID = self.ChallengeId;
    l0:Enable();
end;

function export:InStart()
    local l0;
    l0 = self[5];
    l0:Send();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SocChallengeModifier_v2.lua")];
    l0.challengeID = self.ChallengeId;
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.NotifiedFailed = DummyFunction;
    l0:Start();
end;

function export:f_3_Accept()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_3_Cancel()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_3_Closed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_1_Init()
    self = self._graph;
    self:InitOut();
end;

function export:f_2_Started()
    self = self._graph;
    self:RunOut();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.title = self.Title;
    l0.message = self.PromptId;
    l0.optAcceptCancel = false;
    l0:ShowMessage();
end;

-- Empty out anchor definitions
function export:InitOut()
    
end;
function export:RunOut()
    
end;
_compilerVersion = 24;
