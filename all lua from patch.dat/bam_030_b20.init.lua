-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b20/bam_030_b20.domino.xml
-- User graph: Init
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[3];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_5_Near;
    l0.Far = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 2620;
    l0.posY = 1117;
    l0.posZ = 102;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Enable();
    l0 = self[3];
    l0.Hour = 6;
    l0.Minute = 54;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "2078320080153755901";
    l0.Battlefield = "2078319230513670577";
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetAll();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Enable();
end;

function export:f_6_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[1];
    l1.colliderFilterId = l0.LocalPlayer;
    l1.triggerId = "2077445285958659324";
    l1:Enable();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Disable();
end;

function export:f_2_Out()
    self = self._graph;
    self:Out();
end;

function export:f_5_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2078320080153755901";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Entities = "2078320080153755901";
    l0.id2 = "2077445285958659324";
    l0.nearZone = 1.25;
    l0.use2d = true;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
