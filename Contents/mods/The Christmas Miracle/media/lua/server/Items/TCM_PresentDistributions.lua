require 'Items/ProceduralDistributions'

TCMPresentsLoot = TCMPresentsLoot or {};

--Presents Distros
TCMPresentsLoot.tab_addMagProcedural_TCMPresents = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"PeachChristmas.SmallPresent");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"PeachChristmas.MediumPresent");
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"PeachChristmas.LargePresent");
  table.insert(ProceduralDistributions.list[x].items, count);    
end

--Loot tables 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("BedroomDresser",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("CrateClothesRandom",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("ClassroomDesk",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("Locker",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("CrateRandomJunk", 0.05);
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("GymLockers",0.1);
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("CrateCostume",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("DaycareDesk",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("DeskGeneric",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("DresserGeneric",0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("HolidayStuff",1.0); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("StripClubDressers",0.1);
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("WardrobeChild",1.0); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("WardrobeWoman", 0.5); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("WardrobeWomanClassy", 0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("WardrobeMan", 0.1); 
 TCMPresentsLoot.tab_addMagProcedural_TCMPresents("WardrobeManClassy", 0.1); 
