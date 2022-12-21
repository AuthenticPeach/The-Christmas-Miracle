--This file is dedicated towards the functionality of the Christmas Maps (Custom Annotated maps)
require 'Maps/ISMapDefinitions'

local MINZ = 0
local MAXZ = 24

local function overlayPNG(mapUI, x, y, scale, layerName, tex, alpha)
	local texture = getTexture(tex)
	if not texture then return end
	local mapAPI = mapUI.javaObject:getAPIv1()
	local styleAPI = mapAPI:getStyleAPI()
	local layer = styleAPI:newTextureLayer(layerName)
	layer:setMinZoom(MINZ)
	layer:addFill(MINZ, 255, 255, 255, (alpha or 1.0) * 255)
	layer:addTexture(MINZ, tex)
	layer:setBoundsInSquares(x, y, x + texture:getWidth() * scale, y + texture:getHeight() * scale)
end


LootMaps.Init.CedarHillChristmas1 = function(mapUI)

	-- Your custom initialization for CedarHillChristmas1
	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	-- Show only this area from the full map.
	mapAPI:setBoundsInSquares(9700, 12470, 10579, 13199)
	overlayPNG(mapUI, 9660, 12458, 0.666, "lootMapPNG", "media/ui/LootableMaps/CedarHillChristmas1.png", 1.0) --x,y,scale

end

LootMaps.Init.CedarHillChristmas2 = function(mapUI)

	-- Your custom initialization for CedarHillChristmas2
	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	-- Show only this area from the full map.
	mapAPI:setBoundsInSquares(9700, 12470, 10579, 13199)
	overlayPNG(mapUI, 9660, 12458, 0.666, "lootMapPNG", "media/ui/LootableMaps/CedarHillChristmas2.png", 1.0) --x,y,scale

end

LootMaps.Init.CedarHillChristmas3 = function(mapUI)

	-- Your custom initialization for CedarHillChristmas3
	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	-- Show only this area from the full map.
	mapAPI:setBoundsInSquares(9700, 12470, 10579, 13199)
	overlayPNG(mapUI, 9660, 12458, 0.666, "lootMapPNG", "media/ui/LootableMaps/CedarHillChristmas3.png", 1.0) --x,y,scale

end

LootMaps.Init.CedarHillChristmas4 = function(mapUI)

	-- Your custom initialization for CedarHillChristmas4
	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	mapAPI:setBoundsInSquares(9700, 12470, 10579, 13199)
	overlayPNG(mapUI, 9660, 12458, 0.666, "lootMapPNG", "media/ui/LootableMaps/CedarHillChristmas4.png", 1.0) --x,y,scale

end

LootMaps.Init.CedarHillChristmas5 = function(mapUI)

	-- Your custom initialization for CedarHillChristmas5
	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	-- Show only this area from the full map.
	mapAPI:setBoundsInSquares(9700, 12470, 10579, 13199)
	overlayPNG(mapUI, 9660, 12458, 0.666, "lootMapPNG", "media/ui/LootableMaps/CedarHillChristmas5.png", 1.0) --x,y,scale

end