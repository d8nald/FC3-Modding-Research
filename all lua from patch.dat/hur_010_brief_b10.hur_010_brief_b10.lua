-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_questgivers/hur_010/hur_010_brief_b10/hur_010_brief_b10.domino.xml
-- User graph: HUR_010_BRIEF_B10
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
        cbox:RegisterBox("Domino/System/Door.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00171907]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017700a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00177046.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0017700a]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017191c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00177091.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0017191c]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00171907.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00177091]], "CSoundResource");
        cbox:LoadResource([[sndres0x00177046]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_11_Finished;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_7_Finished;
    self[6] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_6_Near;
    l0.Far = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[10] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_10_Finished;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_9_Finished;
    self[15] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0.OnPush = DummyFunction;
    l0.OnPull = DummyFunction;
    l0.OnClosed = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[14] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.OnPush = DummyFunction;
    l0.OnPull = DummyFunction;
    l0.OnClosed = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[8] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_8_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_13_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[6];
    l1.Entities = l0.LocalPlayer;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    l0 = self[6];
    l0.id2 = "2077755547876075888";
    l0.nearZone = 16;
    l0:Enable();
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
end;

function export:f_16_Removed()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.SoundID = "0x00177046";
    l0.CallerID = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_HURK",
        id = "105695",
    };
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Start();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.SoundID = "0x0017700a";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SoundID = "0x00177091";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_6_Near()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Send();
end;

function export:f_10_Finished()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SoundID = "0x0017191c";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.SoundID = "0x00171907";
    l0.IsIncomingCall = true;
    l0.EndOfChain = true;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074552402920350976";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_16_Removed;
    l0:Remove();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    l0 = self[14];
    l0.Door = "2074866577666216923";
    l0:SetAsUnusable();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Door = "2074866577666216923";
    l0:SetAsUsable();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "HUR_010_BRIEF_B10 interacted";
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
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "HUR_010_BRIEF_B10 started";
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
end;

-- Empty out anchor definitions
_compilerVersion = 24;
