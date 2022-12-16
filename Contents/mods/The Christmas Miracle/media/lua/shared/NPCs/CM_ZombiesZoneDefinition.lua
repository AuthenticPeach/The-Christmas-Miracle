ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
ZombiesZoneDefinition.Default = {};

table.insert(ZombiesZoneDefinition.Default,{name = "Santa", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_Santa_Red", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaGreen", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_Santa_Green", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaWhite", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaBlue", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaBluePattern", chance=3});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaBlueMoose", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaTurquoise", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaPurple", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaPink", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaOrange", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaYellow", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "SantaGrey", chance=20});

table.insert(ZombiesZoneDefinition.Default,{name = "Ski", chance=100});
table.insert(ZombiesZoneDefinition.Default,{name = "Bathrobe", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "CM_SpiffoReindeer", chance=8});

table.insert(ZombiesZoneDefinition.Default,{name = "Generic01", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "Generic02", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "Generic03", chance=20});

table.insert(ZombiesZoneDefinition.Default,{name = "Generic04", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "Generic05", chance=20});
table.insert(ZombiesZoneDefinition.Default,{name = "Biker", chance=0.3});
table.insert(ZombiesZoneDefinition.Default,{name = "Cyclist", chance=0.5});

table.insert(ZombiesZoneDefinition.Default,{name = "Police", chance=0.5});
table.insert(ZombiesZoneDefinition.Default,{name = "Ranger", chance=1});
table.insert(ZombiesZoneDefinition.Default,{name = "ConstructionWorker", chance=0.5, gender="male"});
table.insert(ZombiesZoneDefinition.Default,{name = "Farmer", chance=0.5});
table.insert(ZombiesZoneDefinition.Default,{name = "Student", chance=1});

