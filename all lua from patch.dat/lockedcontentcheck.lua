
-- DOMINO REFLECTION BOX START
--
-- <Display Category="World" Text="LockedContentCheck" DisplayName="LockedContentCheck"/>
--
-- <ContextHelp><![CDATA[
--      Used to check if a specific content (ULC) is locked.
--      Param [name] : The name of the content to be checked (e.g. Hurk_020).
--
--	-----Gym-----
--	World: FC3_Domino
--	Map: DominoGym_Core
--	Layer: ????
--
-- ]]></ContextHelp>
--
-- <ControlIn  Name="CheckByName">
--		<LinkRule>
--			<Target anchor="name"/>
--		</LinkRule>
--		<LinkRule severity="INFO">
--			<Target anchor="IsLocked"/>
--			<Target anchor="IsUnlocked"/>
--		</LinkRule>
-- </ControlIn>
--
-- <DataIn     Name="ContentName"      Type="Core|string"/>
--
-- <ControlOut Name="IsLocked"/>
-- <ControlOut Name="IsUnlocked"/>
--
-- <Stateless/>
--
-- DOMINO REFLECTION BOX END

LockedContentCheckBox = {
}

function LockedContentCheckBox:Create(cbox)
	self.isRaining = 0;
	self.transitionFactor = 1;
	self.secondCount = 0;
	self.shouldRain = 0;
	self.transitionPeriod = 0;
	self.transitionLoops = 0;
	self.Pawn = GetLocalPlayerId();
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua");
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibStateless.lua");
end

function LockedContentCheckBox:ResetTimer()
	if(self.Timer == nil) then
		self.Timer = CDominoDelayManager_GetInstance():CreateDelay(1, self, "KeepTracking");
		if (self.Timer ~= nil) then
			CDominoDelayManager_GetInstance():SendCommand(self.Timer, "start");
		else
			System:Warning("Can't create a timer!");
		end
	else
		CDominoDelayManager_GetInstance():SendCommand(self.Timer, "restart");
	end
end

function LockedContentCheckBox:TransitionToClearWeather()
	if(self.transitionTimer == nil) then
		self.transitionTimer = CDominoDelayManager_GetInstance():CreateDelay(8, self, "WeatherTransitionLoop");
		if (self.transitionTimer ~= nil) then
			CDominoDelayManager_GetInstance():SendCommand(self.transitionTimer, "start");
		else
			System:Warning("Can't create a timer!");
		end
	else
		CDominoDelayManager_GetInstance():SendCommand(self.transitionTimer, "restart");
	end
end

function LockedContentCheckBox:WeatherTransitionLoop()
	self.transitionLoops = self.transitionLoops + 1;
	self.transitionFactor = self.transitionFactor - 0.1;
	SetScriptedStormFactorOverride(self.transitionFactor, 8);

	if (self.transitionLoops == 8) then
		self.transitionLoops = 0;
		RemoveScriptedStormFactorOverride(1);
		self.isRaining = 0;
		self.transitionPeriod = 0;
		self.transitionFactor = 1;
		local tag = GetStringID("RainFX");
		CAPI_Pawn.StopToDestroyParticle(self.Pawn, tag);
		CAPI_Pawn.DestroyParticle(self.Pawn, tag);
	else
		self:TransitionToClearWeather();
	end
end

function LockedContentCheckBox:KeepTracking()

	self.secondCount = self.secondCount + 1;
	if (self.secondCount == 300) then
		self.secondCount = 0;

		if (self.isRaining == 1 and self.transitionPeriod == 0) then
			self:TransitionToClearWeather();
			self.transitionPeriod = 1;
		end

		if (self.isRaining == 0) then
			self.shouldRain = math.random(1, 5);
			if (self.shouldRain == 5) then
				SetScriptedStormFactorOverride(1, 30);
				self.isRaining = 1;
				local particle = GetPathID("FC3_Gameplay_Water.Player.ScreenDropplets");
				local bone = GetStringID("Camera");
				local tag = GetStringID("RainFX");
				CAPI_Pawn.SpawnParticle(self.Pawn, particle, bone, GetNoCaseStringID(""), tag, "xyz", 0, 0, 0);
			end
		end

	end

	self:ResetTimer();
end

function LockedContentCheckBox:CheckByName()
	local name = self.name;
	local outLocked = self["IsLocked"];
	local outUnlocked = self["IsUnlocked"];

	if (LuaLibCore:AssertNotNil(self.ContentName)) then
		if (IsLockedContentUnlocked(self.ContentName)) then
			outUnlocked(self);
		else
			outLocked(self);
		end
	end
end

-- Export visible for Nomad engine.
export = LockedContentCheckBox;
LockedContentCheckBox = nil;
