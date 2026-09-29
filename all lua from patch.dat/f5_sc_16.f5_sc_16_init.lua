-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.domino.xml
-- User graph: F5_SC_16_INIT
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
        cbox:RegisterBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Spawner_v2.lua");
        cbox:RegisterBox("Domino/System/TaggingModifier_v2.lua");
        cbox:RegisterBox("Domino/System/ThrowGrenadeTypeModifier.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Finished = self.f_7_Finished;
    self[5] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Finished = self.f_5_Finished;
    self[1] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Finished = self.f_1_Finished;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.F5_SC_16_ProxTag.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.WeaponType = "weapons:FC3/U100";
    l0:SetWeaponSlot1();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ThrowGrenadeTypeModifier.lua")];
    l0.category = "gadgets:FC3/Molotov";
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetType();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = "FC3_Graphics:Singleplayer:Generic:Props:Crates:OpenedContainer_01";
    l0.target = "2076569105216846654";
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.WeaponType = "gadgets:FC3/Molotov";
    l0:AddGadget();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:AddArmor();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2076788659511639153";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_9_Out()
    self = self._graph;
    self:Out();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Reinforcement_PT = "2076168050433874787";
    l0:In();
    l0 = self[10];
    l0.Reinforcement_PT = "2076579951731030958";
    l0:In();
    l0 = self[3];
    l0.Reinforcement_PT = "2076579927945132969";
    l0:In();
    l0 = self[9];
    l0.Reinforcement_PT = "2076569724625410195";
    l0:In();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
