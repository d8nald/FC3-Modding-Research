-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.domino.xml
-- User graph: F5_SC_16_Intro
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
        cbox:RegisterBox("Domino/Library/Sp/Lib_Social.Challenge.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Challenge.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_INIT.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_Challenge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Death = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_INIT.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Social.Challenge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.InitOut = self.f_3_InitOut;
    l0.RunOut = self.f_3_RunOut;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:OnLeaveZone()
    
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:InStart();
end;

function export:f_3_InitOut()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_3_RunOut()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In();
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.ChallengeId = 21;
    l0.Title = {
        section = "F5_SC_16",
        item = "F5_SC_16_title",
        id = "132452",
    };
    l0.PromptId = {
        section = "SocialChallenge_General",
        item = "SoCh_Objective01",
        id = "151387",
    };
end;

-- Empty out anchor definitions
_compilerVersion = 24;
