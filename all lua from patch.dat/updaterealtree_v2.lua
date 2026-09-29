
-- DOMINO REFLECTION BOX START
--
-- <Display Category="RealTree" Text="UpdateRealTree_v2" DisplayName="UpdateRealTree"/>
--//fc3/main/data/Domino/System/UpdateRealTree.lua
-- <ContextHelp><![CDATA[
--      Testing RealTrees
--      growthPerc => [0..1]
-- ---Gym----
-- World:fc3_domino
-- Map:fc3_Domino_Core2
-- Mission:1099_UpdateRealTree
--
--  ]]></ContextHelp>
--
-- <ControlIn  Name="GrowthTree">
--	<LinkRule>
--		<Target anchor="GrowthPerc"/>
--		<Target anchor="Speed"/>
--		<Target anchor="RealTrees"/>
--	</LinkRule>
--  <LinkRule severity="INFO">
--		<Target anchor="Out"/>
--		<Target anchor="GrowthCompleted"/>
--  </LinkRule>
-- </ControlIn>
-- <ControlIn  Name="StopGrowth">
--	<LinkRule>
--		<Target anchor="RealTrees"/>
--	</LinkRule>
--  <LinkRule severity="INFO">
--		<Target anchor="Stopped"/>
--  </LinkRule>
-- </ControlIn>
-- <ControlIn  Name="SetCurrentSize">
--	<LinkRule>
--		<Target anchor="RealTrees"/>
--		<Target anchor="GrowthPerc"/>
--	</LinkRule>
--  <LinkRule severity="INFO">
--		<Target anchor="Out"/>
--  </LinkRule>
-- </ControlIn>
--
-- <DataIn     Name="RealTrees"     Type="Nomad|group"/>
-- <DataIn     Name="GrowthPerc"    Type="Core|float"/>
-- <DataIn     Name="Speed"         Type="Core|float"/>
--
-- <ControlOut Name="Out"/>
-- <ControlOut Name="Stopped"/>
-- <ControlOut Name="GrowthCompleted"  Delayed="true"/>
--
-- DOMINO REFLECTION BOX END

UpdateRealTreeBox = {
}

function UpdateRealTreeBox:Create(cbox)
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua");
end

function UpdateRealTreeBox:ShutDown()

    if (self.callbackIds ~= nil ) then
        for i,e in pairs(self.callbackIds) do
            CAPI_Entity.StopRealTreeGrowth(i, e);
            self.callbackIds[i] = nil;
        end
    end
    self.callbackIds = nil;
    self.GroupSize = nil

end

function UpdateRealTreeBox:GrowthTree()

	if (LuaLibCore:AssertNotNil(self.RealTrees, self.GrowthPerc) and self.GroupSize == nil) then

        --[[
        LogConsole("GrowthPerc :" .. tostring(self.GrowthPerc))
        LogConsole("RealTrees :" .. tostring(self.RealTrees))
        LogConsole("Speed :" .. tostring(self.Speed))
        LogConsole("self :" .. tostring(self))
        --]]
        self.callbackIds = {};
        self.GroupSize = 0;
        for i,e in ipairs(GetEntitiesInGroup(self.RealTrees)) do
            self.callbackIds[e] = CAPI_Entity.SetRealTreeGrowthSpeed(e, self.GrowthPerc, self.Speed, self, "OnGrowthCompleted");
            self.GroupSize = self.GroupSize + 1;
        end

    end

	self:Out();
end

function UpdateRealTreeBox:OnGrowthCompleted()

    if( self.GroupSize == 1) then--All reach correct size, could be at different time if they start at different size.
        self.callbackIds = nil;
        self.GroupSize = nil;
        self:GrowthCompleted();
    elseif( self.GroupSize ~= nil) then--Someone removed it while iterating in the iterator in code.
        self.GroupSize = self.GroupSize - 1;
    else
        System:Warning("Receive a callback on growth complete of a tree when nothing is registered.");
    end
    --system wearning this leak
end

function UpdateRealTreeBox:SetCurrentSize()

    if (LuaLibCore:AssertNotNil(self.RealTrees, self.GrowthPerc)) then
        if ( self.callbackIds == nil ) then--Should change the size when a tree is growing. ( can still be done using another box, but doesn't make it any better.
            for _,e in ipairs(GetEntitiesInGroup(self.RealTrees)) do
                CAPI_Entity.UpdateRealTreeRegen(e, self.GrowthPerc);
            end
        end
    end

    self:Out();

end

function UpdateRealTreeBox:StopGrowth()

    self:ShutDown();

    self:Stopped();

end





-- Export visible for Nomad engine.
export = UpdateRealTreeBox;
UpdateRealTreeBox = nil;
