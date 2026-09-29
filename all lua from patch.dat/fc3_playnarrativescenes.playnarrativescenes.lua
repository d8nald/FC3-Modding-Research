-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayNarrativeScenes
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter01.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter02.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter03.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter04.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter05.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter06.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter07.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter08.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter09.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter10.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter07.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Finished = self.f_7_Finished;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter02.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Finished = self.f_2_Finished;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter05.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Finished = self.f_5_Finished;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter01.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Finished = self.f_1_Finished;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter09.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Finished = self.f_9_Finished;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter06.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Finished = self.f_6_Finished;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter04.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Finished = self.f_4_Finished;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter10.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Finished = self.f_10_Finished;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter03.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Finished = self.f_3_Finished;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayChapter08.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Finished = self.f_8_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:PlayFromChapter01()
    local l0;
    l0 = self[1];
    l0:Play();
end;

function export:PlayFromChapter02()
    local l0;
    l0 = self[2];
    l0:Play();
end;

function export:PlayFromChapter03()
    local l0;
    l0 = self[3];
    l0:Play();
end;

function export:PlayFromChapter04()
    local l0;
    l0 = self[4];
    l0:Play();
end;

function export:PlayFromChapter05()
    local l0;
    l0 = self[5];
    l0:Play();
end;

function export:PlayFromChapter06()
    local l0;
    l0 = self[6];
    l0:Play();
end;

function export:PlayFromChapter07()
    local l0;
    l0 = self[7];
    l0:Play();
end;

function export:PlayFromChapter08()
    local l0;
    l0 = self[8];
    l0:Play();
end;

function export:PlayFromChapter09()
    local l0;
    l0 = self[9];
    l0:Play();
end;

function export:PlayFromChapter10()
    local l0;
    l0 = self[10];
    l0:Play();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Play();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Play();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Play();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Play();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Play();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Play();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Play();
end;

function export:f_10_Finished()
    self = self._graph;
    self:Finished();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Play();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Play();
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
