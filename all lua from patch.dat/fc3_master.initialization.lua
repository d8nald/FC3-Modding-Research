-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Initialization
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Activated = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[13];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 4,
    };
    l0.Out = self.f_13_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_D5_TEMPLE_Initialize";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2072711715096629817";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_1_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2075834596452213647";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_18_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:Initialize()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:Initialized();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting MAIN Initialization ... Done.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(0);
end;

function export:f_3_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078145603824530314";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_4_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_2_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078145027351003948";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_3_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(2);
end;

function export:f_5_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078146515911589297";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_6_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_18_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_25_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2076129307658301828";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_26_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_13_Out()
    self = self._graph;
    self:Activated();
end;

function export:f_1_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2074855440570658244";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_15_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_46_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078144507104215843";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_2_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_4_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078146306836022331";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_5_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_6_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_36_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2076126979458869989";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_46_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(1);
end;

function export:f_16_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2076265914849828326";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_25_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_26_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2075917762319897373";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_36_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(3);
end;

function export:f_15_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2075641191216453596";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = self.f_16_Locked;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Lock();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Activated()
    
end;
_compilerVersion = 24;
