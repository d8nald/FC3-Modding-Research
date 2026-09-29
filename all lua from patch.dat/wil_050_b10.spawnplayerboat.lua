-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: SpawnPlayerBoat
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
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleDamageListener.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.BoatIsDestroy = DummyFunction;
    self.PlayerBoatIDList = {
    };
    self.PlayerBoatID = nil;
    self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_2_Loaded;
    l0.Unloaded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/VehicleDamageListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.StateChange = DummyFunction;
    l0.Destroyed = self.f_4_Destroyed;
    l0.OnFire = self.f_4_OnFire;
    l0.Broken = self.f_4_Broken;
    l0.MajorDamage = DummyFunction;
    l0.MinorDamage = DummyFunction;
    l0.Mint = DummyFunction;
    l0.Disabled = self.f_4_Disabled;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138244187360113";
    l0.missionLayerId = "138270631414951";
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ON PLAYERBOAT SPAWNED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "ORANGE";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_3_Activated()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.entityId = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_1_Out_0()
    self = self._graph;
    self:BoatIsDestroy();
end;

function export:f_2_Loaded()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Vehicle = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "PLAYERBOAT SPAWNED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "ORANGE";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_4_Broken()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_4_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Boat was disabled. ";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetExplosion();
end;

function export:f_4_OnFire()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

-- Empty out anchor definitions
function export:BoatIsDestroy()
    
end;
_compilerVersion = 24;
