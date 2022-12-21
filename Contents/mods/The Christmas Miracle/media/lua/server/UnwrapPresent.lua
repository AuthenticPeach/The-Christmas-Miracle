--100 items
--Presents
function recipe_unwrapTheSmallpresent(items, result, player)
    local gets = ZombRand(1);
    local itemSet =  {
	"Base.556Bullets",
	"Base.556Clip",
	"Base.223Bullets",
	"Base.308Bullets",
	"Base.9mmclip",
	"Base.Bullets9mm",
	"Base.Bullets45",
	"Base.Bullets44",
	"Base.Bullets38",
	"Base.RecoilPad",
	"Base.Screwdriver",
	"Base.Scissors",
	"Base.CDplayer ",
	"Base.Rubberducky2",
	"Base.DigitalWatch",
	"PeachChristmas.TennisBall2",
	"Base.Earbuds",
	"Base.Headphones",
	"Radio.WalkieTalkie1",
	"Base.Battery",
	"Base.VideoGame",
	"Base.WildGarlic",
	"Base.Ginseng",
	"Base.Comfrey",
	"PeachChristmas.SnowGlobe1",
	"Base.TrapMouse",
	"base.Lemongrass",
	"Base.BlackSage",
	"PeachChristmas.SnowGlobe2",
	"Base.PillsVitamins",
	"Base.PillsBeta",
	"Base.PillsAntiDep",
	"Base.ToiletPaper",
	"Base.Chocolate",
	"Base.Chocolate",
	"Base.Revolver_Short",
	"Base.M14Clip",
	"Base.BareHands",
	"Base.GolfBall2",
	"Base.Hat_Raccoon",
	"base.Scarf_StripeBlueWhite",
	"Base.Gloves_FingerlessGloves",
	"Base.Hat_FastFood_IceCream",
	"Base.Hat_SurgicalMask_Blue",
	"Base.Hat_SurgicalMask_Green",
	"Base.Gloves_WhiteTINT",
	"Base.SpiffoTail",
	"Base.Glasses_Aviators",
	"Base.SnowGlobe1",
	"Base.Glasses_SkiGoggles",
	"Base.Hat_DustMask",
	"Base.Lipstick",
	"Base.MakeupFoundation",
	"Base.Necklace_GoldDiamond",
	"Base.Necklace_SilverSapphire",
	"Base.Necklace_Pearl",
	"Base.Wallet2",
	"Base.Tie_Full_Spiffo",
	"base.Underwear1",
	"base.Underwear1",
	"Base.Bikini_TINT",
	"Base.Earring_Dangly_Diamond",
	"Base.Earring_LoopLrg_Gold",
	"Base.Earring_Stone_Emerald",
	"PeachChristmas.TennisBall2",
	"Base.LightBulb",
	"Base.LightBulbMagenta",
	"PeachChristmas.SnowGlobe3",
	"Base.LightBulbPink",
	"Base.LightBulbCyan",
	"Base.Underwear1",
	"Base.KatePic",
	"PeachChristmas.Baseball2",
	"PeachChristmas.Football2",
	"Base.SoccerBall",
	"Base.Spiffo",
	"Base.ChristmasLights1",
	"Base.ChristmasLights1",
	"Base.ChristmasLights2",
	"Base.ChristmasLights2",
	"Base.ChristmasLights3",
	"Base.ChristmasLights4",	
	"PeachChristmas.Santa",
    "PeachChristmas.Nutcracker",
    "PeachChristmas.SantaSpiffo",
    "PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"base.Perfume",
	"Base.Woodglue",
	"base.x8Scope",
	"base.x4Scope",
	"base.x2Scope",
	"base.PipeBomb",
	"Base.SmokeBomb",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	};
    player:getInventory():AddItem("SheetPaper2");
    for x=0, gets do
        ItemGet(player, itemSet);
    end
end
function ItemGet(player, itemSet)
 player:getInventory():AddItem(itemSet[ZombRand(#itemSet)]);
end


function recipe_unwrapTheMediumpresent(items, result, player)
    local gets = ZombRand(1);
    local itemSet2 =  {
	"base.556Box",
	"base.223Box",
	"base.308Box",
	"base.Bullets9mmBox",
	"Base.Bullets44Box",
	"Base.Bullets45Box",
	"base.Bullets38Box",
	"Base.Plunger",
	"Base.BlowTorch",
	"Base.Saw",
	"Base.Hammer",
	"Base.BallPeenHammer",
	"Base.WoodenMallet",
	"Base.EmptyPetrolCan",
	"Base.DuctTape",
	"Base.Rope",
	"Base.TrapSnare",
	"Base.TrapStick",
	"Base.HandAxe",
	"Base.ClubHammer",
	"Base.Nightstick",
	"Base.Revolver",
	"Base.Revolver_Long",
	"Base.Molotov",
	"Base.Scarf_StripeBlueWhite",
	"Base.PipeBomb",
	"Base.Pistol",
	"Base.Pistol2",
	"Base.Pistol3",
	"base.PonchoGreen",
	"Base.Tshirt_DefaultTEXTURE_TINT",
	"Base.ElectronicsMag4",
	"Base.Bag_FannyPackBack",
	"Base.SmallPresent",
	"Base.Dress_Knees",
	"Base.LongJohns",
	"Base.LongJohns_Bottoms",
	"Base.Dress_Long",
	"Base.Hat_Fedora",
	"Base.Hat_Fedora_Delmonte",
	"Base.Shoes_RidingBoots",
	"Base.Shoes_ArmyBootsDesert",
	"Base.Shoes_ArmyBoots",
	"Base.Shirt_HawaiianTINT",
	"Base.Shirt_HawaiianRed",
	"Base.Shirt_CamoDesert",
	"Base.Shirt_CamoGreen",
	"Base.Shirt_CamoUrban",
	"Base.SheetRope",
	"Base.Trousers_CamoUrban",
	"Base.Hat_SummerHat",
	"Base.Shirt_Jockey01",
    "Base.Shirt_Jockey02",
    "Base.Shirt_Jockey03",
    "Base.Shirt_Jockey04",
    "Base.Shirt_Jockey05",
    "Base.Shirt_Jockey06",
	"Base.Trousers_CamoGreen",
	"Base.Trousers_CamoDesert",
	"Base.Trousers_ArmyService",
	"Base.Hat_PeakedCapArmy",
	"Base.Hat_NBCmask",
	"Base.Hat_GasMask",
	"Base.Bag_Schoolbag",
	"Jacket_ArmyCamoDesert",
	"Jacket_ArmyCamoGreen",
	"Base.Jacket_Fireman",
	"Base.Trousers_Fireman",
	"Base.Ghillie_Top",
	"Base.Ghillie_Trousers",
	"Base.Jacket_Black",
	"PeachChristmas.Soccerball2",
	"Base.HazmatSuit",
	"Base.EngineParts",
	"Radio.WalkieTalkie2",
    "Radio.WalkieTalkie3",
    "Radio.WalkieTalkie4",
	"Base.SmallSheetMetal",
	"Base.SpiffoSuit",
	"Base.WeddingDress",
	"Base.ChristmasLights1",
	"Base.ChristmasLights1",
	"Base.ChristmasLights2",
	"Base.ChristmasLights2",
	"Base.ChristmasLights3",
	"Base.ChristmasLights4",	
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"Base.Aerosolbomb",
	"Base.FlameTrap",
	"Base.Molotov",
	"Base.Wine2",
	"Base.Wine",
	"Base.WhiskeyFull",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	};
    player:getInventory():AddItem("SheetPaper2");
    for x=0, gets do
        ItemGet2(player, itemSet2);
    end
end
function ItemGet2(player, itemSet2)
 player:getInventory():AddItem(itemSet2[ZombRand(#itemSet2)]);
end


function recipe_unwrapTheBigpresent(items, result, player)
    local gets = ZombRand(1);
    local itemSet3 =  {	
	"Radio.TvAntique",
	"Radio.TvBlack",
	"Radio.TvWideScreen",
	"Radio.HamRadio1",
	"Radio.HamRadio2",
	"Base.BadmintonRacket",
	"Base.CanoePadel",
	"Base.CanoePadelX2",
	"Base.TennisRacket",
	"Base.LaCrosseStick",
	"Base.Hat_Army",
	"Base.Bag_ALICEpack_Army",
	"Base.Bag_ALICEpack",
	"Base.Bag_BigHikingBag",
	"Base.Bag_NormalHikingBag",
	"Base.Hat_CrashHelmetFULL",
	"Base.Hat_CrashHelmet_Police",
	"Base.Hat_CrashHelmet_Stars",
	"Base.Hat_Fireman",
	"Base.Boilersuit_Flying",
	"Base.Hat_HockeyHelmet",
	"base.Hat_Spiffo",
	"Base.Hat_RiotHelmet",
	"Base.Hat_SPHhelmet",
	"Base.CrashHelmet",
	"Base.Vest_BulletArmy",
	"Base.Vest_BulletCivilian",
	"Base.Vest_BulletPolice",
	"base.IceHockeyStick",
	"base.HockeyStick",
	"base.Revolver_Short",
	"Base.Windshield1",
	"Base.Windshield2",
	"Base.Windshield3",
	"EngineDoor1",
	"EngineDoor2",
	"EngineDoor3",
	"Base.WoodAxe",
	"Base.Axe",
	"Base.Shovel",
	"Base.Machete",
	"Base.Sledgehammer",
	"base.Sledgehammer2",
	"Base.SpearIcePick",
	"Base.PickAxe",
	"base.PonchoGreen",
	"Base.SnowShovel",
	"Base.Katana",
	"Base.Sling",
	"base.Shotgun",
	"Base.DoubleBarrelShotgun",
	"Base.VarmintRifle",
	"Base.HuntingRifle",
	"Base.AssaultRifle2",
	"Base.MediumPresent",
	"Base.GuitarAcoustic",
	"Base.GuitarElectricBassBlack",
	"Base.GuitarElectricBassRed",
	"Base.GuitarElectricBlack",
	"Base.GuitarElectricRed",
	"Base.Violin",
	"Base.Keytar",
	"Base.Trumpet",
	"Base.Flute",
	"Base.BaseballBatNails",
	"Base.Crowbar",
	"Base.Banjo",
	"Base.TrapBox",
	"Base.TrapCage",
	"Base.TrapCrate",
	"Base.PropaneTank",
	"Base.Generator",
	"Base.PetrolCan",
	"Base.Basketball2",
	"Base.PlankNail",
	"Base.SpearHuntingKnife",
	"Base.PaintGreen",
	"Base.PaintRed",
	"Base.Fertilizer",
	"Base.Log",
	"Base.BarBell",
	"Base.PlasterPowder",
	"farming.WateredCan",
	"Base.ModernCarMuffler1",
	"Base.SheetMetal",
	"Base.Mattress",
	"Base.ChristmasLights1",
	"Base.ChristmasLights1",
	"Base.ChristmasLights2",
	"Base.ChristmasLights2",
	"Base.ChristmasLights3",
	"Base.ChristmasLights4",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"PeachChristmas.Grinch",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	"Base.Coal",
	};
    player:getInventory():AddItem("SheetPaper2");
    for x=0, gets do
        ItemGet3(player, itemSet3);
    end
end
function ItemGet3(player, itemSet3)
 player:getInventory():AddItem(itemSet3[ZombRand(#itemSet3)]);
end

function recipe_makeTheSleigher(items, result, player)
    local gets = ZombRand(2);
    local itemSet4 = {"PeachChristmas.TheSleigher"}; 
    player:getInventory():AddItem("PeachChristmas.IceClip");
    player:getInventory():AddItem("PeachChristmas.TheSleigher");
    for x=0, gets do
        ItemGet4(player, itemSet4);
    end
end

function ItemGet4(player, itemSet4)
 player:getInventory():AddItem(itemSet4[ZombRand(#itemSet4)]);
end


function recipe_makeTheBellRinger(items, result, player)
    local gets = ZombRand(2);
    local itemSet5 = {"PeachChristmas.TheBellRinger"}; 
    player:getInventory():AddItem("PeachChristmas.IceClip2");
    player:getInventory():AddItem("PeachChristmas.TheBellRinger");
    for x=0, gets do
        ItemGet5(player, itemSet5);
    end
end

function ItemGet5(player, itemSet5)
 player:getInventory():AddItem(itemSet5[ZombRand(#itemSet5)]);
end

function Recipe.OnCreate.OpenCandyPackage2(items, result, player)
    player:getInventory():AddItem("Base.MintCandy2");
    player:getInventory():AddItem("Base.MintCandy2");
    player:getInventory():AddItem("Base.MintCandy2");
    player:getInventory():AddItem("Base.MintCandy2");
    player:getInventory():AddItem("Base.MintCandy2");
    player:getInventory():AddItem("Base.MintCandy2");
end

function recipe_openMapCapsule(items, result, player)
    local gets = ZombRand(1);
    local itemSet6 =  {
	"PeachChristmas.ChristmasMap1",
	"PeachChristmas.ChristmasMap2",
	"PeachChristmas.ChristmasMap3",
	"PeachChristmas.ChristmasMap4",
	"PeachChristmas.ChristmasMap5",
	"PeachChristmas.ChristmasMap1",
	"PeachChristmas.ChristmasMap2",
	"PeachChristmas.ChristmasMap3",
	"PeachChristmas.ChristmasMap4",
	"PeachChristmas.ChristmasMap5",
	"PeachChristmas.ChristmasMap1",
	"PeachChristmas.ChristmasMap2",
	"PeachChristmas.ChristmasMap3",
	"PeachChristmas.ChristmasMap4",
	"PeachChristmas.ChristmasMap5",
	"PeachChristmas.ChristmasMap1",
	"PeachChristmas.ChristmasMap2",
	"PeachChristmas.ChristmasMap3",
	"PeachChristmas.ChristmasMap4",
	"PeachChristmas.ChristmasMap5",	
};
    for x=0, gets do
        ItemGet6(player, itemSet6);
    end
end
function ItemGet6(player, itemSet6)
 player:getInventory():AddItem(itemSet6[ZombRand(#itemSet6)]);
end