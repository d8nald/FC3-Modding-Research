-- File used by "Harder Outposts" mod v1.0

WorldLoadPause = {
}

function WorldLoadPause:Create(cbox)
end

function WorldLoadPause:Init(cbox)
	if (self.SetAnglesEntity ~= nil) then
		self.entityAngles = {};
		table.insert(self.entityAngles, self.entityAngle1)
		table.insert(self.entityAngles, self.entityAngle2)
		table.insert(self.entityAngles, self.entityAngle3)
		CAPI_Entity.SetEntityAngles(self.SetAnglesEntity, self.entityAngles);
	end
end

function WorldLoadPause:ShutDown()
	--WorldLoaderPause(0);
end

function WorldLoadPause:Pause()
	--WorldLoaderPause(1);
	--self:Paused();
end

function WorldLoadPause:UnPause()
	--WorldLoaderPause(0);
	--self:UnPaused();
end

export = WorldLoadPause;
WorldLoadPause = nil;