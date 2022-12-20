ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
ZombiesZoneDefinition.Default = {};

table.insert(ZombiesZoneDefinition.Default,{name = "Santa", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_Santa_Red", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaGreen", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_Santa_Green", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaWhite", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaBlue", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaBluePattern", chance=3});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaBlueMoose", chance=3});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaTurquoise", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaPurple", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaPink", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaOrange", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaYellow", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SantaGrey", chance=20});

table.insert(ZombiesZoneDefinition.Default,{name = "Ski", chance=100});
table.insert(ZombiesZoneDefinition.Default,{name = "Bathrobe", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SpiffoReindeer", chance=8});

table.insert(ZombiesZoneDefinition.Default,{name = "CM_Gingerbreadman", chance=2, gender="male"});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SnowMan", chance=2, gender="male"});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_Santa_Obese", chance=0.098, gender="male"});

