-- $Name: Mainland (EN)$
-- $Version: 1.1$

instead_version "1.9.0"
dofile "util.lua"
dofile "verbs.lua"
dofile "tutorial.lua"
dofile "game/common.lua"
dofile "game/entry1.lua"
dofile "game/entry2.lua"
dofile "game/entry3.lua"
dofile "game/entry4.lua"
dofile "game/entry5.lua"
dofile "game/entry6.lua"
dofile "game/entry7.lua"
dofile "game/entry8.lua"

--game.pic = 'gfx/texture-overlay2.png';
gametitle = font("theme/libs-r.ttf", 40);

main = scene {
   dsc          = "^"..img("gfx/island.png").."^^^"..txtc(gametitle:txt("Mainland"))
  ,enter        = music_("clearwaters")
  ,Newgame      = chain_ {
                    take_("pants"),
                    take_("jacket"),
                    take_("shoes"), 
                    take_("spyglass"),
                    walk_("gamestart")
                  }
  ,Creators     = walk_("credits")
  ,Tutorial     = walk_("tutorial1")
  ,verbs        = {
                     { "Newgame", "Start Game", "{}" }
                    ,{ "Creators", "Credits", "{}" }
                    ,{ "Tutorial", "Tutorial", "{}" }
                  }
}

credits = scene {
   dsc          = txtc(quest:txt("Credits")).."^^".. 
				  credits:txt([[Version 1.1]]).."^" .. 
                  credits:txt([[Source Code Licensed Under GNU GPL v2]]).."^" .. 
				  credits:txt([[Music And Graphics Licensed Under Creative Commons]]).."^" .. 
				  credits:txt([[Literary Copyright: Moscow 2013, 2015]]).."^^" .. 
				  
				  credits:txt([[INSTEAD Platform And Metaparser Module by Petr Kosyh]]).."^" .. 
				  credits:txt([[Story, Russian Text, and Programming by Vasily Voronkov]]).."^" .. 
				  credits:txt([[English Localization by Ryan Joseph]]).."^" .. 
				  credits:txt([[Testing by Petr Kosyh, Vadim Balashoff, Ryan Joseph]]).."^^" ..
				  
				  credits:txt([[Music by Kevin MacLeod, www.incompetech.com]]).."^" .. 
                  credits:txt([[The game includes the following instrumentals:]]).."^".. 
				  credits:txt([[Clear Waters]]).."^".. 
				  credits:txt([[Cryptic Sorrow]]).."^"..
				  credits:txt([[Heartbreaking]]).."^".. 
				  credits:txt([[Reaching Out]]).."^".. 
				  credits:txt([[Wounded]]).."^".. 
				  credits:txt([[Mourning Song]]).."^^".. 
				  
				  credits:txt([[Title Image: Nicolas de Camaret, Easter Island]]).."^"..
				  credits:txt([[www.flickr.com/photos/ndecam/5803817397]]).."^".. 
				  credits:txt([[Book Image: Erica Parée, Paper Texture 1]]).."^".. 
				  credits:txt([[www.flickr.com/photos/pareeerica/2683238976]]).. "^^".. 
				  
				  credits:txt([[Sound effects created in Garage Band]]).."^".. 
				  credits:txt([[Sound files processed in Audacity]]).."^".. 
				  credits:txt([[Graphics processed in PSColorHD, Gimp, Paint.NET]]).."^".. 
				  credits:txt([[Code written in Programmer's Notepad www.pnotepad.org]]).."^".. 
				  credits:txt([[Contact the author at basil@voronkov.name]])
  ,Back         = walk_("main")
  ,verbs        = { "Back", "Return", "{}" }

}

gamestart = pause {
   time         = 3000
  ,fading       = 30
  ,next         = "cliff"
}

