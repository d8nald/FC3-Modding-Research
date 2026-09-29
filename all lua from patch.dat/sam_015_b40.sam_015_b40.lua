-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b40/sam_015_b40.domino.xml
-- User graph: SAM_015_B40
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40_Escape.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40_FinalLookAtExplosion.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40_Escape.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.StartExplosion = self.f_2_StartExplosion;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B40/SAM_015_B40.SAM_015_B40_FinalLookAtExplosion.lua");
    l0 = self[14];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:False();
end;

function export:f_2_StartExplosion()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.SAM_015_MAIN.IsSam015Reloaded = l0.Target;
    l0 = self[5];
    l0.Save = false;
    l0:Complete();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Send();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
