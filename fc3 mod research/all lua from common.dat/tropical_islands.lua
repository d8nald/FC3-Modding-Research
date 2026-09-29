

function _(rndMin, rndMax, dbg)
	local result = GetRandomRange(rndMin, rndMax);
	if (dbg ~= nil) then
		DebugMsg(dbg..": "..result);
	end
	return result;
end

DebugMsg("******************");
DebugMsg("TROPICAL ISLANDS");

offset = 20;
circleX = _(-offset, offset, "circleX");
circleY = _(-offset, offset, "circleY");
circleRadius = _(60, 100, "circleRadius");
circle = GenerateCircle(circleX, circleY, circleRadius, 1, 1, 1);
ApplyNormalize(circle);
silhouette = GenerateDistortion(circle, 8, _(50, 100, "distortionSize1"), 0.4, _(50, 120, "distortionRadius1"));
Release(circle);

silhouetteOld = GenerateFromMap(silhouette);
silhouette = GenerateDistortion(silhouetteOld, 8, _(50, 100, "distortionSize2"), 0.4, _(50, 120, "distortionRadius2"));
Release(silhouetteOld);

--silhouetteOld = GenerateFromMap(silhouette);
--silhouette = GenerateDistortion(silhouetteOld, 8, 200, 0.5, 150);
--Release(silhouetteOld);

ApplyThreshold(silhouette, 0.001, 1, 1);
ApplyThreshold(silhouette, 0, 0.002, 0);

ApplyNormalize(silhouette);

island = GenerateFromMap(silhouette);
for i=1,160 do
  ApplyBlur(island, 4);
  ApplyMax(island, silhouette);
end

silMask = GenerateFromMap(silhouette);
ApplyInvert(silMask);
ApplyMultiply(island, silMask);
Release(silMask);

ApplyNormalize(island);
ApplyMin(island, 0.99);
ApplyNormalize(island);

ApplyMax(island, silhouette);

islandNew = GenerateDistortion(island, 8, _(50, 100, "distortionSizeFinal"), 0.4, _(50, 100, "distortionRadiusFinal"));
Release(island);
island = islandNew;

ApplyFalloff(island, _(0.35, 0.45));

falloff = GenerateCircle(circleX, circleY, 350, 0.5, 1, 1);
ApplyMultiply(island, falloff);
Release(falloff);


--ApplyBlur(island, 10);

--grass = GenerateFromMap(island);
--ApplyExtract(grass, 0.98, 1.0, 0.99, 1);
--ApplyBlur(grass, 5);
--ApplyThreshold(grass, 0, 0.99, 0);

ApplyResize(island, 50, 64);

--islandGround = GenerateNoise(8, 96, 0.4);
--ApplyNormalize(islandGround);
--ApplyFalloff(islandGround, 1.5);
----ApplyExtract(islandGround, 0.5, 1.0, 0, 1.0);
--ApplyThresholdFalloff(islandGround, 0, 0.5, 1.5);

--ApplyMultiply(islandGround, grass);
--ApplyBlur(islandGround, 10);
--Release(grass);

--ApplyResize(islandGround, 0, _(8, 14));
--ApplyAdd(island, islandGround);
--Release(islandGround);

TerrainSetMap(island);

WaterSetLevel(58);

--------- TEXTURE

TextureSetId(0, "biomes/coastal/terrain/sandsmooth");
TextureSetId(1, "biomes/jungle/terrain/junglefoliageground_01");
TextureFill(0);

grass = GenerateFromMap(island);
ApplyExtract(grass, 0.98*64, 255, 0.99, 1);
ApplyBlur(grass, 5);
ApplyFalloff(grass, 2);

TexturePaint(1, grass);

CollectionPaint(0, grass, 0.9, 1.0);

--grassOutline = GenerateFromMap(grass);
--ApplyBlur(grassOutline, 10);
--ApplyMin(grassOutline, grass);
--ApplyExtract(grassOutline, 0.1, 0.9, 1, 1);

palmNoise = GenerateNoise(5, _(32, 64), 0.4);
ApplyNormalize(palmNoise);
ApplyMultiply(palmNoise, grass);


CollectionSetId(0, "FC3_Coastline/Coast_1Low_B");
CollectionSetId(1, "FC3_Coastline/Coast_3High_B_Palm");
CollectionPaint(1, palmNoise, _(0.35, 0.6), _(0.8, 1.0));

Release(grass);

Release(island);

