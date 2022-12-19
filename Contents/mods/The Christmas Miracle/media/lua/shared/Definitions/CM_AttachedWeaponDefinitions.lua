require "Definitions/AttachedWeaponDefinitions"
-- define weapons to be attached to zombies when creating them


AttachedWeaponDefinitions.GiantCandyCane = {
	id = "BigCandyCane",
	chance = 100,
	outfit = {"CM_Santa_Red, CM_Santa_Green, CM_SantaWhite, CM_SantaPurple, CM_SantaTurquoise, CM_SantaBlue, CM_SantaPink, CM_SantaGrey, CM_SantaOrange, CM_SantaYellow, CM_SantaBluePattern, CM_SantaBlueMoose CM_Gingerbreadman, CM_SnowMan, CM_SpiffoReindeer"},
	weaponLocation = {"Shovel Back"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"PeachChristmas.GiantCandyCane",
	},
}


-- Define some custom weapons attached on some specific outfit, so for example police have way more chance to have guns in holster and not simply a spear in stomach or something


AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_Santa_Red = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_Santa_Green = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaWhite = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaPurple = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaTurquoise = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaBlue = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaGrey = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaOrange = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaYellow = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaBluePattern = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SantaBlueMoose = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_Gingerbreadman = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SnowMan = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.CM_SpiffoReindeer = {
	chance = 5;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.GiantCandyCane,
	},
}