

function _(rndMin, rndMax, dbg)
	local result = GetRandomRange(rndMin, rndMax);
	if (dbg ~= nil) then
		DebugMsg(dbg..": "..result);
	end
	return result;
end

DebugMsg("******************");
DebugMsg("MAINLAND MOUNTAINS");

mountains = GenerateNoise(_(5, 8, "numOctaves"), _(256, 384, "size"), 0.45);
ApplyNormalize(mountains);
ApplyFalloff(mountains, _(1.3, 1.8, "mountainFalloff"));

circle = GenerateCircle(_(-80, 80, "circleX"), _(-80, 80, "circleY"), _(60, 120, "circleRadius"), _(0.01, 0.1, "circleHardness"), _(0.4, 0.8, "circleFalloff"), _(0.8, 1, "circleOpacity"));
gameplay = GenerateDistortion(circle, 8, 200, 0.5, 150);
Release(circle);

ApplyInvert(gameplay);
ApplyBlur(gameplay, 8);
ApplyMax(gameplay, 0.2);

--ApplyMultiply(mountains, gameplay);
Release(gameplay);

ApplyThresholdFalloff(mountains, _(0.15, 0.35, "threshMin"), 1, _(1.2, 1.5, "threshFalloff"));
ApplyThresholdFalloff(mountains, _(0.35, 0.5, "threshMin"), 1, _(0.5, 0.8, "threshFalloff"));
ApplyThresholdFalloff(mountains, _(0.5, 0.75, "threshMin"), 1, _(1.2, 1.5, "threshFalloff"));
ApplyThresholdFalloff(mountains, _(0.75, 0.90, "threshMin"), 1, _(0.5, 0.8, "threshFalloff"));

mountainsOrg = mountains;
mountains = GenerateDistortion(mountainsOrg, 8, _(150, 250, "distortSize"), 0.4, _(100, 200, "distortRadius"));
Release(mountainsOrg);

mountainHeight = _(175, 250, "mountainHeight");
ApplyResize(mountains, 16, mountainHeight);
--ApplyErosion(mountains, _(0.5, 1.0, "erosionDensity"), _(0.4, 0.6, "erosionDeformation"), _(0.4, 0.5, "erosionDepth"), 0);
ApplyErosion(mountains, 2, 0.4, 0.0, 0);

blurMask = GenerateNoise(5, 32, 0.8);
ApplyNormalize(blurMask);

ApplyMax(blurMask, 0.5);
--ApplyBlur(mountains, 4, blurMask);
Release(blurMask);

slope = GenerateSlope(mountains);
blurMask = GenerateConstraints(mountains, slope, 0, 255, 10, 0, 20);
ApplyBlur(blurMask, 10);
ApplyBlur(blurMask, 10);
ApplyBlur(blurMask, 10);
ApplyBlur(blurMask, 10);
ApplyFalloff(blurMask, 1.8);
ApplyResize(blurMask, 0, 1);
ApplyBlur(mountains, 10, blurMask);
ApplyBlur(mountains, 10, blurMask);
ApplyBlur(mountains, 10, blurMask);
Release(blurMask);
Release(slope);

slope = GenerateSlope(mountains);

TerrainSetMap(mountains);

-------- TEXTURE

TextureSetId(0, "biomes/jungle/terrain/junglefoliageground_01");
TextureSetId(1, "biomes/coastal/terrain/coastalmoosycliff_01");
TextureFill(0);

texture = GenerateConstraints(mountains, slope, 0, 255, 10, 40, 90);
textureBlur = GenerateFromMap(texture);
ApplyBlur(textureBlur, 15);
ApplyMin(texture, textureBlur);
Release(textureBlur);
ApplyThreshold(texture, 0, 0.4, 0);
ApplyBlur(texture, 4);
ApplyFalloff(texture, 0.75);

TexturePaint(1, texture);
Release(texture);


-------- COLLECTION

CollectionSetId(0, "FC3_Jungle/Jungle_1Low_A_Grass");
CollectionSetId(1, "FC3_Jungle/Jungle_3High_A_Short");
CollectionSetId(2, "FC3_Jungle/Jungle_3High_A");

grassArea = GenerateConstraints(mountains, slope, 0, mountainHeight * 0.8, 16, 0, 40);

grassNoise = GenerateNoise(5, 64, 0.4);
ApplyNormalize(grassNoise);
ApplyFalloff(grassNoise, 2.0);
--ApplyThreshold(grassNoise, 0, 0.65, 0);

ApplyMultiply(grassNoise, grassArea);

grassCutoff = _(0.55, 0.65);
CollectionPaint(0, grassNoise, 0.01, grassCutoff);
CollectionPaint(1, grassNoise, grassCutoff, 1.0);
Release(grassNoise);

forestCutoff = _(0.6, 0.65);
forestNoise = GenerateNoise(5, 160, 0.4);
ApplyNormalize(forestNoise);
--ApplyThreshold(forestNoise, 0, 0.6, 0);
ApplyMultiply(forestNoise, grassArea);

CollectionPaint(2, forestNoise, forestCutoff, 1.0);
Release(forestNoise);

Release(grassArea);

Release(slope);

