BlackFriday = {}

BlackFriday.Add = function()
	addChallenge(BlackFriday);


end

BlackFriday.OnGameStart = function()
Events.OnGameStart.Add(BlackFriday.OnNewGame);
local modal = ISModalRichText:new(getCore():getScreenWidth()/2 - 100, getCore():getScreenHeight()/2 - 50, 200, 100, getText("Challenge_BlackFridayInfoBox"), false, nil, nil, 0);
if getGameTime():getWorldAgeHours()-2 >= 4*24 then --WorldAgeHours has 2 subtracted from it to delay the storm's start from 7 am to 9 am, Storm will start at 1AM. 
        getCore():setForceSnow(true);
        forceSnowCheck();
    end

    if getGameTime():getWorldAgeHours()+2 >=3*24 and getGameTime():getWorldAgeHours()-2 <=4*24 then
        getClimateManager():triggerWinterIsComingStorm();
    end
    --getClimateManager():forceDayInfoUpdate();

	if getGameTime():getDay() == 8 and getGameTime():getTimeOfDay() == 9 then
		modal:initialise();
		modal:addToUIManager();
		if JoypadState.players[1] then
			JoypadState.players[1].focus = modal

		else end	--end first day check

		end

	end
--[[
BlackFriday.OnNewGame = function()
--moved this stuff from onGameStart. 
local pl = getPlayer();
		--check if it's a new game

		print(pl:getHoursSurvived());
		if getPlayer():getHoursSurvived()<=1 then

			
			pl:getStats():setThirst(0.50); -- from 0 to 1
			pl:getStats():setHunger(0.55); -- from 0 to 1
			pl:getStats():setFatigue(0.45);
			pl:getStats():setPanic(100);

			--reset inventory
			pl:clearWornItems();
		    pl:getInventory():clear();
			local inv = pl:getInventory();
			--local bag = pl:getInventory():AddItem("Base.Bag_ALICEpack_Army");

			--player stuff 
			--give player a Worker's Uniform
			BlackFriday.clothes = {"Base.Shoes_Black","Base.Vest_DefaultTEXTURE_TINT", "Base.Jumper_DiamondPatternTINT ","Base.Scarf_StripeBlueWhite", "Base.Trousers_JeanBaggy"}
			for i , item in pairs(BlackFriday.clothes) do
				clothes = inv:AddItem(item);
				pl:setWornItem(clothes:getBodyLocation(), clothes);
			end

			--belt is an exclusive item
			belt = inv:AddItem("Base.Belt2");
			pl:setWornItem(belt:getBodyLocation(),belt);
			inv:AddItem("Base.Wallet2");
			inv:AddItem("Base.Lighter2");
			inv:AddItem("Base.Money");
			inv:AddItem("Base.Money");
			inv:AddItem("Base.Money");
			inv:AddItem("Base.Money");
			inv:AddItem("Base.Money");
			inv:AddItem("Base.KeyRing");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.MediumPresent");
			inv:AddItem("Base.LargePresent");
			inv:AddItem("Base.LargePresent");
			inv:AddItem("Base.LargePresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			inv:AddItem("Base.SmallPresent");
			--inv:AddItem("WristWatch_Left_DigitalRed")

			local totebag1 = pl:getInventory():AddItem("Base.Tote");
			local totebag2 = pl:getInventory():AddItem("Base.Tote");
			pl:setPrimaryHandItem(totebag1);
			pl:setSecondaryHandItem(totebag2);
			
			--give player supplies
			--randomized stuff
			BlackFriday.supplies = {"Base.SmallPresent","Base.SmallPresent","Base.SmallPresent", "Base.SmallPresent","Base.MediumPresent","Base.LargePresent"};
			--BlackFriday.medsupplies = {"Base.AlcoholBandage","Base.Disinfectant","Base.Bandaid","Base.Antibiotics","Base.Pills","Base.SutureNeedle","Base.Tweezers"};

			--static stuff main inv
			inv:AddItem("farming.RemouladeWaterFull");
			
			-- static stuff bag
			totebag1:getItemContainer():AddItem("Base.SmallPresent");
			totebag1:getItemContainer():AddItem("Base.SmallPresent");
			totebag1:getItemContainer():AddItem("Base.SmallPresent");
			totebag1:getItemContainer():AddItem("Base.MediumPresent");
			totebag1:getItemContainer():AddItem("Base.MediumPresent");
			totebag1:getItemContainer():AddItem("Base.MediumPresent");
			totebag1:getItemContainer():AddItem("Base.SmallPresent");
			totebag1:getItemContainer():AddItem("Base.SmallPresent");
			totebag1:getItemContainer():AddItem("Base.LargePresent");
			totebag1:getItemContainer():AddItem("Base.LargePresent");
			totebag1:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag1:getItemContainer():AddItem("Base.CookieFrosted");
			totebag1:getItemContainer():AddItem("Base.ChocolatePretzel");
			totebag1:getItemContainer():AddItem("Base.Candycane")
			
			totebag2:getItemContainer():AddItem("Base.Candycane")
			totebag2:getItemContainer():AddItem("Base.Fudge");
			totebag2:getItemContainer():AddItem("Base.Fudge");
			totebag2:getItemContainer():AddItem("Base.CookieFrosted");
			totebag2:getItemContainer():AddItem("Base.CookieFrosted");
			totebag2:getItemContainer():AddItem("Base.SmallPresent");
			totebag2:getItemContainer():AddItem("Base.SmallPresent");
			totebag2:getItemContainer():AddItem("Base.SmallPresent");
			totebag2:getItemContainer():AddItem("Base.MediumPresent");
			totebag2:getItemContainer():AddItem("Base.MediumPresent");
			totebag2:getItemContainer():AddItem("Base.MediumPresent");
			totebag2:getItemContainer():AddItem("Base.LargePresent");
			totebag2:getItemContainer():AddItem("Base.LargePresent");
			totebag2:getItemContainer():AddItem("Base.CookieFrosted");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			--fill bag with stuff randomly.
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				totebag1:getItemContainer():AddItems(item,amt);
				end
			end
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				totebag2:getItemContainer():AddItems(item,amt);
				end
			end
			--vehicle stuff
			--randomize vehicle, 13 in array right now 13694x5859
			local car = addVehicleDebug("Base.SUV", IsoDirections.E, nil, getCell():getGridSquare(BlackFriday.xcell*300)+(BlackFriday.x-1), (BlackFriday.ycell*300)+(BlackFriday.y-1));
			car:repair();
			inv:AddItem(car:createVehicleKey());
			
			--give player supplies
			BlackFriday.supplies = {"Base.CookieFrosted","Base.Turkey","Base.Fruitcake","Base.TinnedSoup","Base.TunaTin","Base.WaterBottleFull","Base.Eggnog"};
			--static stuff
			car:getPartById("TruckBed"):getItemContainer():AddItem("camping.CampingTentKit");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.PetrolCan");
			--fill trunk with stuff randomly.
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				car:getPartById("TruckBed"):getItemContainer():AddItems(item,amt);
				end
			end

			end
addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), 0, 500, 500);
pl:playSound("MetaScream");
end
--]]
BlackFriday.OnNewGame = function()
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
			pl:getStats():setFatigue(0.15);
			pl:getStats():setAnger(0.45);
			pl:getStats():setEndurance(0.65);
			pl:getStats():setPanic(100);

			--reset inventory
			pl:clearWornItems();
		    pl:getInventory():clear();

			local inv = pl:getInventory();

			--player stuff 
			--give player Santa-Green Costume
			BlackFriday.clothes = {"Base.Shoes_Black","WristWatch_Left_ClassicBlack","Base.Vest_DefaultTEXTURE_TINT", "Base.Tshirt_WhiteTINT","Base.Jumper_DiamondPatternTINT","Base.Trousers_WhiteTINT", "Base.Scarf_StripeBlueWhite"}
			for i , item in pairs(BlackFriday.clothes) do
				clothes = inv:AddItem(item);
				pl:setWornItem(clothes:getBodyLocation(), clothes);
			end

			--belt is an exclusive item
			belt = inv:AddItem("Base.Belt2");
			pl:setWornItem(belt:getBodyLocation(),belt);
			

			local inv = pl:getInventory();
			local bag = pl:getInventory():AddItem("Bag_Satchel");
			pl:setClothingItem_Back(bag);
			
			--give player supplies
			--randomized stuff
			BlackFriday.supplies = {"Base.CookieFrosted","Base.CookieChocolateChip","Base.SmallPresent", "Base.MediumPresent", "Base.FruitcakeSlice","Base.Fruitcake","Base.Bandaid"};
			--ChristmasMiracle.medsupplies = {"Base.AlcoholBandage","Base.Disinfectant","Base.Bandaid","Base.Antibiotics","Base.Pills","Base.SutureNeedle","Base.Tweezers"};

			--static stuff main inv
			inv:AddItem("farming.RemouladeWaterFull");
			inv:AddItem("Base.Lighter");
			inv:AddItem("Base.KeyRing");
			-- static stuff bag
			bag:getItemContainer():AddItem("Base.CookieFrosted");
			bag:getItemContainer():AddItem("Base.CookieFrosted");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.LargePresent");
			bag:getItemContainer():AddItem("Base.Candycane");
			bag:getItemContainer():AddItem("Base.Candycane");
			bag:getItemContainer():AddItem("Base.SmallPresent");
			bag:getItemContainer():AddItem("Base.SmallPresent");
			bag:getItemContainer():AddItem("Base.SmallPresent");
			bag:getItemContainer():AddItem("Base.SmallPresent");
			bag:getItemContainer():AddItem("Base.CookieChocolateChip");
			bag:getItemContainer():AddItem("Base.Base.Fruitcake");
			bag:getItemContainer():AddItem("Base.LargePresent");
			bag:getItemContainer():AddItem("Base.LargePresent");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.MediumPresent");
			bag:getItemContainer():AddItem("Base.Soccerball2");
			bag:getItemContainer():AddItem("Base.Champagne");

			--fill bag with stuff randomly.
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				bag:getItemContainer():AddItems(item,amt);
				end
			end
			--vehicle stuff
			--randomize vehicle, 13 in array right now
			local car = addVehicleDebug("Base.SUV",IsoDirections.E, nil, getCell():getGridSquare(13799,5899, 0));

			car:repair();
			car:setColor(.53, .98, .33); --green color
			inv:AddItem(car:createVehicleKey());
			
						
			local totebag1 = pl:getInventory():AddItem("Base.Tote");
			local totebag2 = pl:getInventory():AddItem("Base.Tote");
			local totebag3 = pl:getInventory():AddItem("Base.Tote");
			local totebag4 = pl:getInventory():AddItem("Base.Tote"); 
			
			pl:setPrimaryHandItem(totebag1);
			pl:setSecondaryHandItem(totebag2);
			
			--give player supplies
			--randomized stuff
			BlackFriday.supplies = {"Base.Candycane","Base.Chocolate","PeachChristmas.SmallPresent","PeachChristmas.SmallPresent","PeachChristmas.SmallPresent", "PeachChristmas.SmallPresent","PeachChristmas.MediumPresent","PeachChristmas.LargePresent"};
			--BlackFriday.medsupplies = {"Base.AlcoholBandage","Base.Disinfectant","Base.Bandaid","Base.Antibiotics","Base.Pills","Base.SutureNeedle","Base.Tweezers"};
			
			-- static stuff bag
			totebag1:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag1:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag1:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag1:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag1:getItemContainer():AddItem("PeachChristmas.ChocolatePretzel");
			totebag1:getItemContainer():AddItem("Base.Candycane");
			
			totebag2:getItemContainer():AddItem("Base.Candycane");
			totebag2:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag2:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag2:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag2:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag2:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag2:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag2:getItemContainer():AddItem("Base.CookieChocolateChip");
			
			totebag3:getItemContainer():AddItem("Base.Candycane");
			totebag3:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag3:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag3:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag3:getItemContainer():AddItem("Base.Chocolate");
			totebag3:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag3:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag3:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag3:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag3:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag3:getItemContainer():AddItem("Base.CookieChocolateChip");
			
			totebag4:getItemContainer():AddItem("Base.Candycane");
			totebag4:getItemContainer():AddItem("Base.Chocolate");
			totebag4:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag4:getItemContainer():AddItem("PeachChristmas.Fudge");
			totebag4:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag4:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag4:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.SmallPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.MediumPresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.LargePresent");
			totebag4:getItemContainer():AddItem("PeachChristmas.CookieFrosted");
			totebag4:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag4:getItemContainer():AddItem("Base.CookieChocolateChip");
			totebag4:getItemContainer():AddItem("Base.CookieChocolateChip")
			--fill bag with stuff randomly.
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				totebag1:getItemContainer():AddItems(item,amt);
				end
			end
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				totebag2:getItemContainer():AddItems(item,amt);
				--give player supplies
					end
			end
			BlackFriday.supplies = {"PeachChristmas.CookieFrosted","PeachChristmas.Turkey","PeachChristmas.Fruitcake","Base.TinnedSoup","Base.TunaTin","Base.WaterBottleFull","PeachChristmas.Eggnog"};
			--static stuff
			car:getPartById("TruckBed"):getItemContainer():AddItem("camping.CampingTentKit");
			car:getPartById("TruckBed"):getItemContainer():AddItem("Base.PetrolCan");
			--fill trunk with stuff randomly.
			for i , item in pairs(BlackFriday.supplies) do
				local giveit = ZombRand(2)+1 ;
				if giveit == 1 then 
				local amt = ZombRand(4) + 1;
				car:getPartById("TruckBed"):getItemContainer():AddItems(item,amt);
				end
			end

			end
addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), 0, 400, 400);
pl:playSound("MetaScream");
end
BlackFriday.OnInitWorld = function()
	Events.OnGameStart.Add(BlackFriday.OnGameStart);
	BlackFriday.setSandBoxVars();
end
BlackFriday.setSandBoxVars = function()
	SandboxVars.Zombies 	 = 3;
	SandboxVars.Distribution = 1;
	SandboxVars.DayLength 	 = 3;
	SandboxVars.StartMonth	 = 12;
	SandboxVars.StartDay 	 = 23;
	SandboxVars.StartTime 	 	  = 9;
	SandboxVars.WaterShutModifier = 3;
	SandboxVars.ElecShutModifier = 3;
	SandboxVars.FoodLoot = 2;
	SandboxVars.CannedFoodLoot = 2;
	SandboxVars.RangedWeaponLoot = 1;
	SandboxVars.AmmoLoot = 1;
	SandboxVars.SurvivalGearsLoot = 1;
	SandboxVars.MechanicsLoot = 1;
	SandboxVars.LiteratureLoot = 1;
	SandboxVars.MedicalLoot = 1;
	SandboxVars.WeaponLoot = 2;
	SandboxVars.OtherLoot = 2;
	SandboxVars.Temperature = 1;
	SandboxVars.Rain = 5;
	--    SandboxVars.erosion = 12
	SandboxVars.ErosionSpeed = 2
	SandboxVars.XpMultiplier = "1.0";
	SandboxVars.Farming = 3;
	SandboxVars.NatureAbundance = 5;
	SandboxVars.PlantResilience = 3;
	SandboxVars.PlantAbundance = 3;
	SandboxVars.Alarm = 4;
	SandboxVars.Helicopter = 4;
	SandboxVars.AnnotatedMapChance = 4;
	SandboxVars.LockedHouses = 5;
	SandboxVars.FoodRotSpeed = 3;
	SandboxVars.FridgeFactor = 3;
	SandboxVars.LootRespawn = 1;
	SandboxVars.StatsDecrease = 3;
	SandboxVars.StarterKit = false;
	SandboxVars.TimeSinceApo = 0;
	SandboxVars.MultiHitZombies = false;
	

end

BlackFriday.EveryHours = function()
    if getGameTime():getWorldAgeHours()+2 >=4*24 then
        getCore():setForceSnow(true);
    end
    if getGameTime():getWorldAgeHours()-2 >=1*24 and getGameTime():getWorldAgeHours()-2 <=4*24 then
        getClimateManager():triggerWinterIsComingStorm();
    end
end

BlackFriday.RemovePlayer = function(p)

end

BlackFriday.AddPlayer = function()
end

BlackFriday.Render = function()

--~ 	getTextManager():DrawStringRight(UIFont.Small, getCore():getOffscreenWidth() - 20, 20, "Zombies left : " .. (EightMonthsLater.zombiesSpawned - EightMonthsLater.deadZombie), 1, 1, 1, 0.8);

--~ 	getTextManager():DrawStringRight(UIFont.Small, (getCore():getOffscreenWidth()*0.9), 40, "Next wave : " .. tonumber(((60*60) - EightMonthsLater.waveTime)), 1, 1, 1, 0.8);
end

BlackFriday.spawns = {
		--{xcell = 46, ycell = 19, x = 149, y = 220, z = 0}, -- Crossroads Mall Front Door 
		--{xcell = 46, ycell = 19, x = 135, y = 220, z = 0}, -- Crossroads Mall Front Door
		{xcell = 46, ycell = 19, x = 67,  y = 123, z = 0}, -- Crossroads Mall West Right door
		{xcell = 46, ycell = 19, x = 67,  y = 135, z = 0}, -- Crossroads Mall West Left Door
		{xcell = 46, ycell = 19, x = 67,  y = 130, z = 0}, -- Crossroads Mall West Right door
		{xcell = 46, ycell = 19, x = 66,  y = 120, z = 0}, -- Crossroads Mall West Left Door
		--{xcell = 46, ycell = 19, x = 133,  y = 44, z = 0}, -- Crossroads Mall Food Court Left 
		--{xcell = 46, ycell = 19, x = 116,  y = 44, z = 0}, -- Crossroads Mall Food Court Middle 
}



local spawnselection = ZombRand(4)+1;
local xcell = BlackFriday.spawns[spawnselection].xcell;
local ycell = BlackFriday.spawns[spawnselection].ycell;
local x = BlackFriday.spawns[spawnselection].x;
local y = BlackFriday.spawns[spawnselection].y;
local z = BlackFriday.spawns[spawnselection].z;
BlackFriday.cardinal = BlackFriday.spawns[spawnselection].cardinal; -- this doesn't seem to work out.



BlackFriday.id = "BlackFriday";
BlackFriday.image = "media/lua/client/LastStand/BlackFriday.png";
BlackFriday.gameMode = "BlackFriday";
BlackFriday.world = "West Point, KY";
BlackFriday.xcell = xcell;
BlackFriday.ycell = ycell;
BlackFriday.x = x;
BlackFriday.y = y;
BlackFriday.z = z;


BlackFriday.hourOfDay = 1;


Events.OnChallengeQuery.Add(BlackFriday.Add)
