ChristmasMiracle = {}

ChristmasMiracle.Add = function()
	addChallenge(ChristmasMiracle);
end

ChristmasMiracle.OnGameStart = function()
    		
Events.OnGameStart.Add(ChristmasMiracle.OnNewGame);
local modal = ISModalRichText:new(getCore():getScreenWidth()/2 - 100, getCore():getScreenHeight()/2 - 50, 200, 100, getText("Challenge_ChristmasMiracleInfoBox"), false, nil, nil, 0);		
    if getGameTime():getWorldAgeHours()-2 >= 4*24 then --WorldAgeHours has 2 subtracted from it to delay the storm's start from 7 am to 9 am, Storm will start at 1AM. 
        getCore():setForceSnow(true);
        forceSnowCheck();
    end

    if getGameTime():getWorldAgeHours()+2 >=3*24 and getGameTime():getWorldAgeHours()-2 <=4*24 then
        getClimateManager():triggerWinterIsComingStorm();
    end

	if getGameTime():getDay() == 8 and getGameTime():getTimeOfDay() == 9 then
		modal:initialise();
		modal:addToUIManager();
		if JoypadState.players[1] then
			JoypadState.players[1].focus = modal

		else end	

		end

	end

ChristmasMiracle.OnNewGame = function()
--moved this stuff from onGameStart. 
local pl = getPlayer();
		--check if it's a new game

		print(pl:getHoursSurvived());
		if getPlayer():getHoursSurvived()<=1 then

			--set setstats
			pl:LevelPerk(Perks.Fitness);
			pl:LevelPerk(Perks.LongBlade);
			pl:LevelPerk(Perks.LongBlade);
			pl:LevelPerk(Perks.Maintenance);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Aiming);
			pl:LevelPerk(Perks.Reloading);
			luautils.updatePerksXp(Perks.Fitness, pl);
			luautils.updatePerksXp(Perks.LongBlade, pl);
			luautils.updatePerksXp(Perks.Maintenance, pl);
			luautils.updatePerksXp(Perks.Aiming, pl);
			luautils.updatePerksXp(Perks.Reloading, pl);

			pl:getStats():setThirst(0.20); -- from 0 to 1
			pl:getStats():setHunger(0.35); -- from 0 to 1
			pl:getStats():setFatigue(0.05);
			pl:getStats():setPanic(100);

			--reset inventory
			pl:clearWornItems();
		    pl:getInventory():clear();

			local inv = pl:getInventory();

			--player stuff 
			--give player Santa-Green Costume
			ChristmasMiracle.clothes = {"Base.Shoes_BlackBoots","Base.Tshirt_WhiteTINT","Base.Hat_SantaHatGreen","Base.JacketLong_SantaGreen","Base.Trousers_SantaGReen", "Base.Gloves_LongWomenGloves"}
			for i , item in pairs(ChristmasMiracle.clothes) do
				clothes = inv:AddItem(item);
				pl:setWornItem(clothes:getBodyLocation(), clothes);
			end

			--belt is an exclusive item
			belt = inv:AddItem("Base.Belt2");
			pl:setWornItem(belt:getBodyLocation(),belt);
			
			wpn = inv:AddItem("Base.HandAxe");

			local inv = pl:getInventory();
			local bag = pl:getInventory():AddItem("PeachChristmas.Bag_DuffelBag_Festive2");
			pl:setClothingItem_Back(bag);
			
			ChristmasMiracle.supplies = {"PeachChristmas.CookieFrosted","Base.CookieChocolateChip","Base.556Box", "PeachChristmas.FruitcakeSlice","PeachChristmas.Fruitcake","Base.Bandaid"};
			--ChristmasMiracle.medsupplies = {"Base.AlcoholBandage","Base.Disinfectant","Base.Bandaid","Base.Antibiotics","Base.Pills","Base.SutureNeedle","Base.Tweezers"};

			inv:AddItem("farming.RemouladeWaterFull");
			inv:AddItem("Base.Lighter2");
			inv:AddItem("Base.KeyRing");
			
			-- static stuff bag
			bag:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			bag:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			bag:getItemContainer():AddItem("Base.Katana");
			bag:getItemContainer():AddItem("Base.AssaultRifle");
			bag:getItemContainer():AddItem("Base.CookieChocolateChip");
			bag:getItemContainer():AddItem("Base.556Box");
			bag:getItemContainer():AddItem("Base.556Box");
			bag:getItemContainer():AddItem("Base.556Clip"):setCurrentAmmoCount(30);
			bag:getItemContainer():AddItem("Base.556Clip"):setCurrentAmmoCount(30);
			bag:getItemContainer():AddItem("Base.556Clip"):setCurrentAmmoCount(30)

			--fill bag with stuff randomly.
			for i , item in pairs(ChristmasMiracle.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				bag:getItemContainer():AddItems(item,amt);
				end
			end
			--vehicle stuff
			--randomize vehicle, 13 in array right now
			local pickacar = ZombRand(3)+1;
			ChristmasMiracle.carlist = {"Base.VanRadio","Base.StepVanMail","Base.StepVan"};
			local car = addVehicleDebug(ChristmasMiracle.carlist[pickacar],IsoDirections.W, nil, getCell():getGridSquare((ChristmasMiracle.xcell*300)+(ChristmasMiracle.x-1), (ChristmasMiracle.ycell*300)+(ChristmasMiracle.y-1), 0));

			car:repair();
			inv:AddItem(car:createVehicleKey());
			
			--give player supplies
			ChristmasMiracle.supplies = {"Base.CookieFrosted","Base.Turkey","Base.Fruitcake","Base.TinnedSoup","Base.TunaTin","Base.WaterBottleFull","Base.Eggnog"};
			--static stuff
			car:getPartById("TruckBed"):getItemContainer():AddItem("camping.CampingTentKit");
			car:getPartById("TruckBed"):getItemContainer():AddItem("camping.CampfireKit");
			car:getPartById("GloveBox"):getItemContainer():AddItem("PeachChristmas.ClausCounterSuitcase0");
			car:getPartById("GloveBox"):getItemContainer():AddItem("PeachChristmas.MapCapsule");
			car:getPartById("GloveBox"):getItemContainer():AddItem("PeachChristmas.MapCapsule");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.SmallPresent");			
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
		    car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
		    car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
		   	car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.MediumPresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("PeachChristmas.LargePresent");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.PetrolCan");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.PetrolCan");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.556Box");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.556Box");
			--fill trunk with stuff randomly.
			for i , item in pairs(ChristmasMiracle.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				car:getPartById("TruckBed"):getItemContainer():AddItems(item,amt);
				end
			end

			end
addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), 0, 25, 25);
pl:playSound("MetaScream");

end

ChristmasMiracle.OnInitWorld = function()
	Events.OnGameStart.Add(ChristmasMiracle.OnGameStart);
	ChristmasMiracle.setSandBoxVars();
end

ChristmasMiracle.setSandBoxVars = function()
	SandboxVars.Zombies = 2;
	SandboxVars.Distribution = 1;
	SandboxVars.DayLength = 3;
	SandboxVars.StartDay = 21;
	SandboxVars.StartMonth = 12;
	SandboxVars.StartTime = 4;
	SandboxVars.WaterShutModifier = 4;
	SandboxVars.ElecShutModifier = 4;
	SandboxVars.DarknessduringNight = 1;
	SandboxVars.FoodLoot = 2;
	SandboxVars.CannedFoodLoot = 2;
	SandboxVars.RangedWeaponLoot = 2;
	SandboxVars.AmmoLoot = 2;
	SandboxVars.SurvivalGearsLoot = 2;
	SandboxVars.MechanicsLoot = 2;
	SandboxVars.LiteratureLoot = 2;
	SandboxVars.MedicalLoot = 2;
	SandboxVars.WeaponLoot = 2;
	SandboxVars.OtherLoot = 2;
	SandboxVars.Temperature = 1;
	SandboxVars.Rain = 5;
	SandboxVars.ErosionSpeed = 1
	SandboxVars.XpMultiplier = "1.0";
	SandboxVars.Farming = 3;
	SandboxVars.NatureAbundance = 5;
	SandboxVars.PlantResilience = 3;
	SandboxVars.PlantAbundance = 3;
	SandboxVars.Alarm = 4;
	SandboxVars.TimeSinceApo=0;
	SandboxVars.Helicopter = 4;
	SandboxVars.LockedHouses = 5;
	SandboxVars.FoodRotSpeed = 3;
	SandboxVars.FridgeFactor = 3;
	SandboxVars.LootRespawn = 1;
	SandboxVars.StatsDecrease = 3;
	SandboxVars.StarterKit = false;
	SandboxVars.MultiHitZombies = false;

	Events.OnGameStart.Add(WinterIsComing.OnGameStart);
    Events.EveryHours.Add(WinterIsComing.EveryHours);
    Events.OnInitSeasons.Add(WinterIsComing.OnInitSeasons);
end


ChristmasMiracle.EveryHours = function()
    if getGameTime():getWorldAgeHours()+2 >=4*24 then
        getCore():setForceSnow(true);
    end
    if getGameTime():getWorldAgeHours()-2 >=1*24 and getGameTime():getWorldAgeHours()-2 <=4*24 then
        getClimateManager():triggerWinterIsComingStorm();
    end
end


ChristmasMiracle.RemovePlayer = function(p)

end

ChristmasMiracle.AddPlayer = function(p)

end

ChristmasMiracle.Render = function()

end

--Spawning locations pool--
ChristmasMiracle.spawns = {
		--{xcell = 31, ycell = 37, x = 205, y = 2, z= 67}, --wilderness east of muldraugh industrial site
		--{xcell = 25, ycell = 33, x = 210, y = 110, z = 0}, -- field south of ekron
		--{xcell = 24, ycell = 25, x = 111, y = 187, z = 0}, -- random field south of riverside
		--{xcell = 24, ycell = 27, x = 23, y = 217, z = 0}, -- Middle of Lickskillet
		--{xcell = 46, ycell = 19, x = 11, y = 173, z = 0}, -- mall parking lot
		--{xcell = 18, ycell = 19, x = 177, y = 182, z = 0}, -- Riverside Factory
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		{xcell = 17, ycell = 19, x = 8, y = 135, z = 0}, --Right outside mod 
		--{xcell = 34, ycell = 41, x = 161, y = 66, z = 0}, --Right outside March Ridge
		--{xcell = 34, ycell = 41, x = 161, y = 66, z = 0}, --Right outside March Ridge
		--{xcell = 34, ycell = 41, x = 161, y = 66, z = 0}, --Right outside March Ridge
		--{xcell = 34, ycell = 41, x = 161, y = 66, z = 0}, --Right outside March Ridge
		--{xcell = 18, ycell = 19, x = 177, y = 182, z = 0}, -- Riverside Factory
}
local spawnselection = ZombRand(4)+1;
local xcell = ChristmasMiracle.spawns[spawnselection].xcell;
local ycell = ChristmasMiracle.spawns[spawnselection].ycell;
local x = ChristmasMiracle.spawns[spawnselection].x;
local y = ChristmasMiracle.spawns[spawnselection].y;
local z = ChristmasMiracle.spawns[spawnselection].z;
ChristmasMiracle.cardinal = ChristmasMiracle.spawns[spawnselection].cardinal;

ChristmasMiracle.id = "ChristmasMiracle";
ChristmasMiracle.image = "media/lua/client/LastStand/ChristmasMiracle.png";
ChristmasMiracle.world = "The Christmas Miracle","Muldraugh, KY";
ChristmasMiracle.gameMode = "Christmas Miracle";
ChristmasMiracle.xcell = xcell;
ChristmasMiracle.ycell = ycell;
ChristmasMiracle.x = x;
ChristmasMiracle.y = y;
ChristmasMiracle.z = z;


ChristmasMiracle.hourOfDay = 1; --The climate day starts at 1 AM. 

--Add event to Challenge list
Events.OnChallengeQuery.Add(ChristmasMiracle.Add)
