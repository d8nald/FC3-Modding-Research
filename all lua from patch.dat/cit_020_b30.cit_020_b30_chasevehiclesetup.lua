-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_ChaseVehicleSetup
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
        cbox:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Started = DummyFunction;
    self.Completed = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[20] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_20_Loaded;
    l0.Unloaded = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[19] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_19_Loaded;
    l0.Unloaded = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[4];
    l0.missionBlockId = "138279216512938";
    l0:Activate();
end;

function export:Start_B30()
    local l0;
    l0 = self[2];
    l0.missionBlockId = "138279216512938";
    l0:Activate();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetAsUsable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = "2076276965389647656";
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetAsUnusable();
end;

function export:f_16_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetAsDestructable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.entityId = "2076276965389647656";
    l0:Enable();
end;

function export:f_20_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_14_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetAsIndestructable();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = self.f_14_Started;
    l0:StartPhysics();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Start();
end;

function export:f_19_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_8_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Start();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_1_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_5_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.PawnEntity = "2076276965389647656";
    l0.Destination = "2077563945048181383";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.entityId = "2077563945048181383";
    l0:Enable();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076276965389647656";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = self.f_16_Started;
    l0:StartPhysics();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.PawnEntity = "2076276965389647656";
    l0.Destination = "2077563945048181383";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.entityId = "2077563945048181383";
    l0:Enable();
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
