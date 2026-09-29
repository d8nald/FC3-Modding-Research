-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: FlameJet_B08_Temp
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
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.FlameJet.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.FlameJet.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.triggerId = "2076743781096366189";
    l0:Enable();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.DamageZone = "2076882899270911365";
    l0.FlameJetParticle = "2076882408984129561";
    l0.ParticleWhenStopDamage = "2076882456310558752";
    l0.RunningTime = 2;
    l0.StopTime = 3;
    l0.SoundPoint = "2076896304897730892";
    l0.xLimit = 2;
    l0:In();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:D_Flame();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076882456310558752";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
