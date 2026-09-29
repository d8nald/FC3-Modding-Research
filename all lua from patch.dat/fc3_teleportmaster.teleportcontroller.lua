-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_teleportmaster.domino.xml
-- User graph: TeleportController
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
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Enabled = self.f_70_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_70_Received;
    self[95] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[95];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_95_Received;
    self[90] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[90];
    l0._graph = self;
    l0.Teleported = self.f_90_Teleported;
    self[20] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Teleported = self.f_20_Teleported;
    self[79] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_79_Received;
    self[93] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Teleported = self.f_93_Teleported;
    self[84] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Teleported = self.f_84_Teleported;
    self[96] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Teleported = self.f_96_Teleported;
    self[23] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Teleported = self.f_23_Teleported;
    self[24] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_24_Received;
    self[81] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Teleported = self.f_81_Teleported;
    self[19] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_19_Received;
    self[89] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_89_Received;
    self[86] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_86_Received;
    self[80] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_80_Received;
    self[78] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Teleported = self.f_78_Teleported;
    self[83] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[83];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_83_Received;
    self[92] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_92_Received;
    self[87] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportPlayer.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Teleported = self.f_87_Teleported;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[70];
    l0.message = "BASE_C3_CAVE_Unlock_Entrance";
    l0:Enable();
    l0 = self[83];
    l0.message = "TeleportToULC_020_B10";
    l0:Enable();
    l0 = self[95];
    l0.message = "TeleportToULC_030_B90";
    l0:Enable();
    l0 = self[92];
    l0.message = "TeleportToULC_020_B90";
    l0:Enable();
    l0 = self[24];
    l0.message = "TeleportFromDocBoatTunnel";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[86];
    l0.message = "TeleportToULC_030_B10";
    l0:Enable();
    l0 = self[79];
    l0.message = "TeleportFromDocBoatOcean";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[80];
    l0.message = "TeleportToULC_010_B10";
    l0:Enable();
    l0 = self[89];
    l0.message = "TeleportToULC_010_B90";
    l0:Enable();
end;

function export:f_70_Enabled()
    self = self._graph;
    self:Out();
end;

function export:f_70_Received()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.message = "TeleportToDocBoat";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_95_Received()
    local l0;
    self = self._graph;
    l0 = self[96];
    l0.Destination = "2076306391812813025";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_90_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_98_Out;
    l0:Disable();
end;

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_20_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = -1935.91;
    l0.posY = 2383.33;
    l0.posZ = 188.45;
    l0._graph = self;
    l0.Out = self.f_99_Out;
    l0:Enable();
end;

function export:f_79_Received()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.Destination = "2074859312078996541";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_101_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_93_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:Disable();
end;

function export:f_84_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 389;
    l0.posY = 3000;
    l0.posZ = 109;
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:Enable();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_96_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:Disable();
end;

function export:f_23_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_101_Out;
    l0:Disable();
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_24_Received()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.Destination = "2074859312078996541";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_81_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 974;
    l0.posY = 1460;
    l0.posZ = 219;
    l0._graph = self;
    l0.Out = self.f_105_Out;
    l0:Enable();
end;

function export:f_19_Received()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Destination = "2074743296099365887";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_89_Received()
    local l0;
    self = self._graph;
    l0 = self[90];
    l0.Destination = "2076307129098056511";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_86_Received()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0.Destination = "2075334998098971823";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_80_Received()
    local l0;
    self = self._graph;
    l0 = self[81];
    l0.Destination = "2075734154072302519";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_78_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = nil;
    l0.posY = nil;
    l0.posZ = nil;
    l0._graph = self;
    l0.Out = self.f_102_Out;
    l0:Disable();
end;

function export:f_83_Received()
    local l0;
    self = self._graph;
    l0 = self[84];
    l0.Destination = "2075334808671620268";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_92_Received()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0.Destination = "2076306828936884787";
    l0.Delay = 0;
    l0.KeepPostFx = false;
    l0:In();
end;

function export:f_87_Teleported()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 1891;
    l0.posY = 631;
    l0.posZ = 111;
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:Enable();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
